
' 0,40  : idle
' 40,46 : run
' 46,54 : attack
' 54,58 : pain_a
' 58,62 : pain_b
' 62,66 : pain_c
' 66,72 : jump
' 72,84 : flip

Dim Shared as string info1
	info1="Dragon Demo"
Dim Shared as string info2
	info2="Use arrows keys to pan, A/Z to zoom"
Dim Shared as string info3
	info3="MD2 Dragon model courtesy of Polycount"
Dim Shared as string info4
	info4=""

'  Run start code
#Include "BB_start.bi"

dim Shared as string path 
	path= "./media/dragon/"

' environment cube
dim shared as integer cube
	cube=bbCreateCube()
bbFitMesh(cube,-250,0,-250,500,500,500)
bbFlipMesh(cube)
dim shared as integer tex
	tex=bbLoadTexture( path + "chorme-2.bmp" )
bbScaleTexture(tex,1.0/3,1.0/3)
bbEntityTexture(cube,tex)
bbEntityAlpha(cube,0.4)
bbEntityFX(cube,1)

' floor mirror
dim shared as integer m
	m=bbCreateMirror()

' simple light
dim shared as integer light
	light=bbCreateLight()
bbTurnEntity(light,45,45,0)

' camera
dim shared as integer camera
	camera=bbCreateCamera()
Dim shared cam_xr As Single=30
Dim shared cam_yr As Single=0
Dim shared cam_zr As Single=0
Dim shared cam_z  As Single=-100

' cool dragon model!
Dim shared as integer tex2
	tex2=bbLoadTexture( path + "dragon.bmp" )
Dim shared as integer dragon
	dragon=bbLoadMD2( path + "dragon.md2" )
bbEntityTexture(dragon,tex2)
bbPositionEntity(dragon,0,25,0)
bbTurnEntity(dragon,0,150,0)

bbAnimateMD2(dragon,1,0.05,0,40)


While bbKeyHit(1)=0
	If bbKeyDown(203) Then
		cam_yr=cam_yr-2
	ElseIf bbKeyDown(205) Then
		cam_yr=cam_yr+2
	EndIf

	If bbKeyDown(200) Then
		cam_xr=cam_xr+2
		If cam_xr>90 Then cam_xr=90
	ElseIf bbKeyDown(208) Then
		cam_xr=cam_xr-2
		If cam_xr<5 Then cam_xr=5
	EndIf

	If bbKeyDown(26) Then
		cam_zr=cam_zr+2
	ElseIf bbKeyDown(27) Then
		cam_zr=cam_zr-2
	EndIf

	If bbKeyDown(30) Then
		cam_z=cam_z+1
		If cam_z>-10 then cam_z=-10
	ElseIf bbKeyDown(44) Then
		cam_z=cam_z-1
		If cam_z<-180 then cam_z=-180
	EndIf

	bbPositionEntity(camera,0,0,0)
	bbRotateEntity(camera,cam_xr,cam_yr,cam_zr)
	bbMoveEntity(camera,0,0,cam_z)

	bbUpdateWorld()
	bbRenderWorld()
	bbFlip()
Wend

'  Close down Blitz3D engine...
bbEndBlitz3D ()

End
