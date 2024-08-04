

Dim Shared as string info1
	info1="Multicam"
Dim Shared as string info2
	info2="Demonstrates the use of multiple cameras"
Dim Shared as string info3
	info3="Use arrows keys to pan, A/Z to zoom"
Dim Shared as string info4
	info4=""

' Run start code
#Include "BB_start.bi"

dim as integer tex=bbCreateTexture( 64,64 )
 bbSetBuffer(bbTextureBuffer( tex ))
 bbColor(255,0,0)  : bbRect( 0,0,32,32) : bbRect(32,32,32,32)
 bbColor(255,128,0): bbRect(32,0,32,32) : bbRect( 0,32,32,32)
 bbSetBuffer(bbBackBuffer())
 bbColor(255,255,255)

dim as integer cone=bbCreateCone(20)
 bbEntityTexture(cone,tex)

dim as integer sphere=bbCreateSphere(10)
 bbPositionEntity(sphere,2,0,0)
 bbEntityTexture(sphere,tex)

dim as integer cylinder=bbCreateCylinder(20)
 bbPositionEntity(cylinder,-2,0,0)
 bbEntityTexture(cylinder,tex)

dim as integer light=bbCreateLight()
 bbTurnEntity(light,45,45,0)

dim as integer pivot=bbCreatePivot()

dim as integer z_cam=bbCreateCamera( pivot )
 bbCameraViewport(z_cam,0,0,320,240)
 bbPositionEntity(z_cam,0,0,-5)

dim as integer y_cam=bbCreateCamera( pivot )
 bbCameraViewport(y_cam,320,0,320,240)
 bbPositionEntity(y_cam,0,5,0)
 bbTurnEntity(y_cam,90,0,0)

dim as integer x_cam=bbCreateCamera( pivot )
 bbCameraViewport(x_cam,0,240,320,240)
 bbTurnEntity(x_cam,0,-90,0)
 bbPositionEntity(x_cam,-5,0,0)

While bbKeyHit(1)=0

 If bbKeyDown(203) Then bbMoveEntity(pivot,-0.1,0,0)
 If bbKeyDown(205) Then bbMoveEntity(pivot, 0.1,0,0)
 If bbKeyDown(200) Then bbMoveEntity(pivot,0, 0.1,0)
 If bbKeyDown(208) Then bbMoveEntity(pivot,0,-0.1,0)
 If bbKeyDown( 30) Then bbMoveEntity(pivot,0,0, 0.1)
 If bbKeyDown( 44) Then bbMoveEntity(pivot,0,0,-0.1)

 bbUpdateWorld()
 bbRenderWorld()
 bbText(0,0,"Front")
 bbText(320,0,"Top")
 bbText(0,240,"Left")
 bbFlip()

Wend
