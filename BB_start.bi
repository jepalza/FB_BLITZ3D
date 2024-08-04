
' nota Jepalza:
' estas rutinas no son ni necesarias ni obligatorias, se puede trabajar sin ellas (ver ejemplo "anothertest.bas")
' pero lo dejo por que le da un  aspecto mas "BLitz3D" y ademas, ayuda a elegir resolucion 

#include "blitz3dsdk.bi"

Declare Sub SetGfx()

	SetGfx()

Sub SetGfx()
  '  Initialise Blitz3D engine...
  bbBeginBlitz3D ()
  
  '  Set debug mode (it's on by default -- just added this so you can turn it off)...
  bbSetBlitz3DDebugMode(0) '  1 = DEBUG ON, 0 = DEBUG OFF

 If info1<>"" Then bbSetBlitz3DTitle( info1, "Exit "+info1+"?")
 
 bbFlushKeys()
 
 dim as integer mode_cnt=bbCountGfxModes3D()
 If mode_cnt=0 Then  bbRuntimeError("Can't find any 3D graphics modes")
 
 dim as integer mode=0 
 If bbWindowed3D()=0 Then mode=1 

 'Screen 18,32
 bbGraphics(640,480,16,2)
 bbSetBuffer(bbBackBuffer())
 
 dim as integer image=bbLoadImage( "b3dlogo.jpg" )
 If image=0 Thenimage=bbLoadImage( "./media/b3dlogo.jpg" )
 bbMidHandle(image)
 
 dim as integer fonts=bbLoadFont( "verdana",16,0,0,0 )
 bbSetFont(fonts)
 
 dim as integer tx=640+160
 dim as integer nx=-160
 dim as integer ty=280
 
 dim as string  url="www.blitzbasic.com"
 dim as integer url_x=640-bbStringWidth( url )
 dim as integer url_y=480-bbFontHeight()

 while 1
	bbCls()

	bbDrawBlock(image,320,144,0)

	bbColor(0,255,0)  
	bbText(tx,ty+bbFontHeight()*0,info1,True)
	If (info2 <> "") Then
		bbText(nx,ty+bbFontHeight()*1,info2,True)
	EndIf
	If (info3 <> "") Then
		bbText(tx,ty+bbFontHeight()*2,info3,True)
	EndIf
	If (info4 <> "") Then
		bbText(nx,ty+bbFontHeight()*3,info4,True)
	EndIf

	bbColor(255,255,255)
	If mode=0 Then
		bbText(tx,ty+bbFontHeight()*5,"Windowed",True)
	Else
		bbText(tx,ty+bbFontHeight()*5,Str(bbGfxModeWidth( mode ))+","+Str(bbGfxModeHeight( mode ))+","+Str(bbGfxModeDepth( mode )),True)
	EndIf

	bbColor(255,0,0)
	bbText(nx,ty+bbFontHeight()*7,"[Return] to begin",True)
	bbText(tx,ty+bbFontHeight()*8,"[Arrows] change mode",True)
	bbText(nx,ty+bbFontHeight()*9,"[Escape] to exit",True)

	bbColor(0,0,255)
	bbText(url_x,url_y,url)

	If bbKeyHit( 1 ) Then end

	If bbKeyHit( 28 ) Then
		bbCls():bbFlip()
		bbCls():bbFlip()
		bbFreeFont(fonts)
		bbFreeImage(image)
		bbEndGraphics()
		If mode Then
			bbGraphics3D(bbGfxModeWidth(mode),bbGfxModeHeight(mode),bbGfxModeDepth(mode),1)
		Else
			bbGraphics3D(640,480,0,2)
		EndIf
		bbSetBuffer(bbBackBuffer())
		exit sub
	EndIf
	
	If bbKeyHit( 203 ) Then
		mode=mode-1
		If (mode<0) Orelse ( (mode=0) Andalso (bbWindowed3D()=0) ) Then
			mode=mode_cnt
		endif
	ElseIf bbKeyHit( 205 ) Then
		mode=mode+1
		If mode>mode_cnt Then
			mode=0
			If bbWindowed3D()=0 Then
				mode=1
			endif
		EndIf
	EndIf

	If tx>320  Then
		tx=tx-8
	EndIf
	
	If nx<320  Then
		nx=nx+8
	EndIf

	bbFlip()

 wend
 
End Sub
