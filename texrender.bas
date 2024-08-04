
Function PbRandom(nummax as uinteger,nummin as uinteger=0) as uinteger
    Return int( (rnd(1)*(nummax-nummin)) +nummin)
End Function

Dim Shared as string info1
	info1="Texture render demo"
Dim Shared as string info2
	info2="Renders a 3D scene onto a texture"
Dim Shared as string info3
	info3="Use Arrow keys to Pan, A/Z to zoom"
Dim Shared as string info4
	info4=""

' Run start code
#Include "BB_start.bi"

dim as integer grid_tex=bbCreateTexture( 16,16,8,1 )
 bbScaleTexture(grid_tex,10,10)
 bbSetBuffer(bbTextureBuffer( grid_tex ))
 bbClsColor(255,255,255):bbCls():bbClsColor(0,0,0)
 bbColor(192,192,192):bbRect(0,0,8,8):bbRect(8,8,8,8)
 bbSetBuffer(bbBackBuffer())

dim as integer plane=bbCreatePlane()
 bbEntityTexture(plane,grid_tex)

dim as integer pivot=bbCreatePivot()
 bbPositionEntity(pivot,0,2,0)

dim as integer t_sphere=bbCreateSphere( 8 )
 bbEntityShininess(t_sphere,0.2)

For t as integer=0 To 359 Step 36
 dim as integer sphere=bbCopyEntity( t_sphere,pivot )
 bbEntityColor(sphere,PbRandom(256),PbRandom(256),PbRandom(256))
 bbTurnEntity(sphere,0,t,0)
 bbMoveEntity(sphere,0,0,10)
Next
bbFreeEntity(t_sphere)

dim as integer texture=bbCreateTexture( 128,128,256 )

dim as integer cube=bbCreateCube()
 bbEntityTexture(cube,texture)
 bbPositionEntity(cube,0,7,0)
 bbScaleEntity(cube,3,3,3)

dim as integer light=bbCreateLight()
 bbTurnEntity(light,45,45,0)

dim as integer camera=bbCreateCamera()

dim as integer plan_cam=bbCreateCamera()
 bbTurnEntity(plan_cam,90,0,0)
 bbPositionEntity(plan_cam,0,20,0)
 bbCameraViewport(plan_cam,0,0,128,128)
 bbCameraClsColor(plan_cam,0,128,0)

Dim d As Single=-20

While Not bbKeyHit(1)

 If bbKeyDown(30) Then d=d+1
 If bbKeyDown(44) Then d=d-1
 If bbKeyDown(203) Then bbTurnEntity(camera,0,-3,0)
 If bbKeyDown(205) Then bbTurnEntity(camera,0,3,0)

 bbPositionEntity(camera,0,7,0)
 bbMoveEntity(camera,0,0,d)
 
 bbTurnEntity(cube,0.1,0.2,0.3)
 bbTurnEntity(pivot,0,1,0)
 
 bbUpdateWorld()
 
 bbHideEntity(camera)
 bbShowEntity(plan_cam)
 bbRenderWorld()
 
 bbCopyRect(0,0,128,128,0,0,0,bbTextureBuffer( texture ))
 
 bbShowEntity(camera)
 bbHideEntity(plan_cam)
 bbRenderWorld()
 
 bbFlip()
Wend

