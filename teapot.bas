
Dim Shared as string info1
	info1="Teapot Demo"
Dim Shared as string info2
	info2="Features Cubic/spheriocal reflection mapping"
Dim Shared as string info3
	info3="Arrows keys to pan camera"
Dim Shared as string info4
	info4=""

'  Run start code
#Include "BB_start.bi"

dim Shared as string path 
	path= "./media/teapot/"


dim as integer cube_ref=False

If bbGfxDriverCaps3D()>=110 then
	dim as string outs = *bbInput("") ' First call fails? Is this a bug?
	bbLocate(0,0) ' Oh well, place it on top of failed one :)
	If Left(LCase(*bbInput("Select (c)ubic or (s)pherical mapping :")),1)="c" then
	  cube_ref=True
	EndIf
EndIf

dim as integer teapot=bbLoadMesh( path + "teapot.x" )
dim as integer tex
If cube_ref then
	tex=bbLoadTexture( path + "castle_env.bmp",128+8 )
Else
	tex=bbLoadTexture( path + "spheremap.bmp",64+1 )
EndIf
bbEntityTexture(teapot,tex,0,0)
bbEntityFX(teapot,1)

dim as integer cam_pivot=bbCreatePivot() ' teapot )
dim as integer camera=bbCreateCamera( cam_pivot )
bbPositionEntity(camera,0,0,-3)


While bbKeyHit(1)=0
   If bbKeyDown( KEY_A ) then
		bbMoveEntity(teapot,0,0,-0.1)
	EndIf
	If bbKeyDown( KEY_Z ) then
		bbMoveEntity(teapot,0,0,0.1)
	EndIf
	
	If bbKeyDown(200) then
	  bbTurnEntity(cam_pivot,3,0,0)
	EndIf
	If bbKeyDown(208) then
	  bbTurnEntity(cam_pivot,-3,0,0)
	EndIf
	If bbKeyDown(203) then
	  bbTurnEntity(cam_pivot,0,3,0)
	EndIf
	If bbKeyDown(205) then
	  bbTurnEntity(cam_pivot,0,-3,0)
	EndIf
	
	bbTurnEntity(teapot,0.1,0.3,0)
	
	bbUpdateWorld()
	bbRenderWorld()
	bbFlip()
Wend

'  Close down Blitz3D engine...
bbEndBlitz3D ()

End
