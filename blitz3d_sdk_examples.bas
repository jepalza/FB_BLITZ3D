
#include "blitz3dsdk.bi"

' simulacion sencilla de PRINTF
Sub printf(sa as string)
	dim as string sc
	For f as Integer=1 To Len(sa)
		sc=mid(sa,f,1)
		if sc="\" andalso mid(sa,f+1,1)="n" then 
			print "":f+=1
		else
			print sc;
		endif
	next
	print "-------------------------------------------------------------------"
End Sub
randomize timer
Function PbRandom(nummax as uinteger,nummin as uinteger=0) as uinteger
   return int( (Rnd(1)*(nummax-nummin)) +nummin)
End Function


Declare Sub insaner() 
Declare Sub xfighter() 
'Declare Sub audiotest() 
Declare Sub flagtest() 
'Declare Sub collidetest() 
Declare Sub animtest() 
Declare Sub movietest() 
'Declare Sub firepaint() 
Declare Sub playtron() 
Declare Sub test1() 



' *********************** insaner ********************************
Sub insaner()
	printf "Insaner demo!\nArrow keys pan, A/Z zoom\nspace to toggle hardware multitexturing\nFeatures multitextured dynamic LOD terrain\n"
	
	bbGraphics3D(960,540,0,2) 

	dim as BBTerrain terrain=bbLoadTerrain( "media/insaner/hmap.bmp" ) 
	bbTerrainDetail(terrain,500,BBTRUE) 
	bbPositionEntity(terrain,-128,0,-128) 
	bbScaleEntity(terrain,1,50,1) 
	bbEntityFX(terrain,1) 

	'setup multitexturing:
	'dest=( ( (rock-grass) * track ) + grass ) * lighting

	dim as BBTexture tex0=bbLoadTexture( "media/insaner/CrackedStone_diff.bmp" ) 
	bbScaleTexture(tex0,16,16) 
	dim as BBTexture tex1=bbLoadTexture( "media/insaner/track.bmp" ) 
	bbScaleTexture(tex1,256,256) 
	dim as BBTexture tex2=bbLoadTexture( "media/insaner/MossyGround.bmp" ) 
	bbScaleTexture(tex2,16,16) 
	bbTextureBlend(tex2,3) 
	dim as BBTexture tex3=bbLoadTexture( "media/insaner/lmap.bmp" ) 
	bbScaleTexture(tex3,256,256) 

	bbEntityTexture(terrain,tex0,0,0) 
	bbEntityTexture(terrain,tex1,0,1) 
	bbEntityTexture(terrain,tex2,0,2) 
	bbEntityTexture(terrain,tex3,0,3) 

	dim as BBCamera camera=bbCreateCamera() 
	bbPositionEntity(camera,0,200,0) 
	bbRotateEntity(camera,90,0,0) 

	Dim As Integer hwmt=BBTRUE 
	Dim As Integer wire=BBFALSE 
	
	bbHWMultiTex(hwmt) 

	while bbKeyHit(1)=0 
		if(bbKeyHit(17))   Then wire= -wire:bbWireFrame(wire) :endif
		if(bbKeyHit(57))   Then hwmt= -hwmt:bbHWMultiTex(hwmt):endif
		if(bbKeyDown(30))  Then bbTranslateEntity(camera,0,-2,0) 
		if(bbKeyDown(44))  Then bbTranslateEntity(camera,0,+2,0) 
		if(bbKeyDown(203)) Then bbTranslateEntity(camera,-2,0,0) 
		if(bbKeyDown(205)) Then bbTranslateEntity(camera,+2,0,0) 
		if(bbKeyDown(200)) Then bbTranslateEntity(camera,0,0,+2) 
		if(bbKeyDown(208)) Then bbTranslateEntity(camera,0,0,-2) 
		bbUpdateWorld() 
		bbRenderWorld() 
		bbFlip() 
   Wend

End Sub

' *********************** xfighter *******************************
Type xplayer 
	As BBEntity entity 
	As BBCamera camera 
	As Integer ctrl_mode,cam_mode,ignition 
	As Single pitch,yaw,pitch_speed,yaw_speed,roll,thrust 
	As xplayer ptr nexts 
End Type 
Dim Shared As xplayer ptr xplayerlist=0 

Declare Function CreateXScene() As BBTerrain 
Declare Function LoadXPlane( file As string) As BBPivot 
Declare Function CreateXPlayer(plane As BBPivot , vp_x As Integer , vp_y As Integer , vp_w As Integer , vp_h As Integer , ctrl_mode As Integer , terr As BBTerrain) As xplayer ptr
Declare Sub UpdateXPlayers() 

Sub xfighter()
	printf "Terrain demo\nArrows/A/Z move, F1-F4 change camera\nW toggle wireframe, M toggle morphing\n[ and ] alter detail level\n" 

	bbGraphics3D(960,540,0,6) 

	bbAntiAlias(BBTRUE) 

	bbCollisions(1,10,2,2) 	'sphere-to-polygon, colliding collisions

	dim as BBTerrain terr=CreateXScene() 
	dim as BBPivot plane=LoadXPlane("media/xfighter/biplane.x") 
	dim as xplayer ptr player1=CreateXPlayer(plane,0,0,bbGraphicsWidth(),bbGraphicsHeight(),1,terr) 

	Dim As Single FPS=30 

	Dim As Integer period=1000/FPS 
	Dim As Integer times=bbMilliSecs()-period 

	Dim As Integer detail=2000 
	Dim As Integer morph=1 
	bbTerrainDetail(terr,detail,morph) 

	Dim As Integer wire=0 

	while bbKeyHit(1)=0 
		Dim As Integer elapsed 
		do
			elapsed=bbMilliSecs()-times
		loop while (elapsed=0)
     
'		how many ´frames´ have elapsed	
		Dim As Integer ticks=elapsed/period 

'	tween based render
		Dim As Single tween=(elapsed mod period)/(period) 
		for k As Integer=1 To ticks        
			if(k=ticks) Then bbCaptureWorld() 
			times=times+period 
			UpdateXPlayers() 
			bbUpdateWorld() 
      Next

		if(bbKeyHit(17)) Then 
			wire= -wire 
			bbWireFrame(wire) 	
		EndIf
  
		if(bbKeyHit(26)) Then  
			detail=detail-100 
			if(detail<100) Then detail=100 
			bbTerrainDetail(terr,detail,morph) 
		 ElseIf (bbKeyHit(27)) Then 
			detail=detail+100 
			if(detail>10000) Then detail=10000 
			bbTerrainDetail(terr,detail,morph) 
		EndIf
  

		if(bbKeyHit(50)) Then 
			morph= -morph 
			bbTerrainDetail(terr,detail,morph) 
		EndIf
  
		bbRenderWorld(tween) 

		bbColor(255,0,0) 
		Dim As string t

		if (morph) Then 
			t="Y"
		else
        t="N"
		EndIf

		bbFlip() 
  Wend
End Sub

Sub UpdateXPlayers()
	dim as xplayer ptr p 
	for p=xplayerlist To  p        
		Dim As Integer x_dir=0,y_dir=0,z_dir=0 
		Select Case  (p->ctrl_mode) 
			case 1 
				if(bbKeyDown(203)) Then x_dir=-1 
				if(bbKeyDown(205)) Then x_dir=1 
				
				if(bbKeyDown(200)) Then y_dir=-1 
				if(bbKeyDown(208)) Then y_dir=1 
				
				if(bbKeyDown(30)) Then z_dir=1 
				if(bbKeyDown(44)) Then z_dir=-1 
				
				if(bbKeyHit(59)) Then p->cam_mode=1 
				if(bbKeyHit(60)) Then p->cam_mode=2 
				if(bbKeyHit(61)) Then p->cam_mode=3 
				if(bbKeyHit(62)) Then p->cam_mode=4 
			
			case 2 
				x_dir=bbJoyXDir() 
				y_dir=bbJoyYDir() 
				if(bbJoyDown(1)) Then z_dir=1 
				if(bbJoyDown(2)) Then z_dir=-1 
				
				if(bbKeyHit(63)) Then p->cam_mode=1 
				if(bbKeyHit(64)) Then p->cam_mode=2 
				if(bbKeyHit(65)) Then p->cam_mode=3 
				if(bbKeyHit(66)) Then p->cam_mode=4 			
		
      End Select

		
		if(x_dir<0) Then 
			p->yaw_speed=p->yaw_speed + (4-p->yaw_speed)*.04 
		 else
			if(x_dir>0) Then 
				p->yaw_speed=p->yaw_speed + (-4-p->yaw_speed)*.04 
			 else
				p->yaw_speed=p->yaw_speed + (-p->yaw_speed)*.02 
			EndIf
		EndIf
  
			
		if(y_dir<0) Then 
			p->pitch_speed=p->pitch_speed + (2-p->pitch_speed)*.2 
		 else
			if(y_dir>0) Then 
				p->pitch_speed=p->pitch_speed + (-2-p->pitch_speed)*.2 
			 else
				p->pitch_speed=p->pitch_speed + (-p->pitch_speed)*.1 
			EndIf
		EndIf
  
			
		p->yaw=p->yaw+p->yaw_speed 
		if(p->yaw<-180) Then p->yaw=p->yaw+360 
		if(p->yaw>=180) Then p->yaw=p->yaw-360 
		
		p->pitch=p->pitch+p->pitch_speed 
		if(p->pitch<-180) Then p->pitch=p->pitch+360 
		if(p->pitch>=180) Then p->pitch=p->pitch-360 
			
		p->roll=p->yaw_speed*30 
		bbRotateEntity(p->entity,p->pitch,p->yaw,p->roll) 

		if(p->ignition) Then 
 
			if(z_dir>0) Then  'faster?
				p->thrust=p->thrust + (1.5-p->thrust)*.04 	'	´1.5
			 else
				if(z_dir<0) Then  'slower?
					p->thrust=p->thrust + (-p->thrust)*.04 
				EndIf
			EndIf
			bbMoveEntity(p->entity,0,0,p->thrust) 
		 else
			if(z_dir>0) Then p->ignition=1 
		EndIf
  
		if(p->camera) Then 
			Select Case (p->cam_mode) 
				case 1 
					bbEntityParent(p->camera,p->entity) 
					bbRotateEntity(p->camera,0,p->yaw,0,BBTRUE) 
					bbPositionEntity(p->camera,bbEntityX(p->entity),bbEntityY(p->entity),bbEntityZ(p->entity),BBTRUE) 
					bbMoveEntity(p->camera,0,1,-5) 
					bbPointEntity(p->camera,p->entity,p->roll/2) 

				case 2 
					bbEntityParent(p->camera,0) 
					bbPositionEntity(p->camera,bbEntityX(p->entity),bbEntityY(p->entity),bbEntityZ(p->entity)) 
					bbTranslateEntity(p->camera,0,1,-5) 
					bbPointEntity(p->camera,p->entity,0) 

				case 3 
					bbEntityParent(p->camera,p->entity) 
					bbPositionEntity(p->camera,0,.25,0) 
					bbRotateEntity(p->camera,0,0,0) 

				case 4 
					bbEntityParent(p->camera,0) 
					bbPointEntity(p->camera,p->entity,0) 
			
         End Select

		EndIf
    Next
End Sub

Function LoadXPlane(file As string) As BBPivot
	dim as BBPivot pivot=bbCreatePivot() 
	dim as BBMeshModel plane=bbLoadMesh( file,pivot ) 
	bbScaleMesh(plane,.125,.25,.125) 	'make it more spherical!
	bbRotateEntity(plane,0,180,0) 		'and align to z axis
	bbEntityRadius(pivot,1) 
	bbEntityType(pivot,1) 
	bbHideEntity(pivot) 
	return pivot 
End Function

Function CreateXPlayer(plane As BBPivot , vp_x As Integer , vp_y As Integer , vp_w As Integer , vp_h As Integer , ctrl_mode As Integer , terr As BBTerrain) As xplayer ptr
	dim as xplayer ptr p=new xplayer 
	p->nexts=xplayerlist 
	xplayerlist=p 
	p->ctrl_mode=ctrl_mode 
	p->cam_mode=1 
	Dim As Single x=ctrl_mode*10 
	Dim As Single z=ctrl_mode*10-2500 
	p->entity=bbCopyEntity( plane ) 
	p->ignition=0 
	p->pitch=0.0f 
	p->yaw=0.0f 
	p->pitch_speed=0.0f 
	p->yaw_speed=0.0f 
	p->roll=0.0f 

	p->thrust=0.0f:	bbPositionEntity(p->entity,x,bbTerrainY( terr,x,0,z )+50,z) 
	bbRotateEntity(p->entity,0,180,0) 
	bbResetEntity(p->entity) 
	p->camera=bbCreateCamera( p->entity ) 
	bbPositionEntity(p->camera,0,3,-10) 
	bbCameraViewport(p->camera,vp_x,vp_y,vp_w,vp_h) 
	bbCameraClsColor(p->camera,0,192,255) 
	bbCameraFogColor(p->camera,0,192,255) 
	bbCameraFogRange(p->camera,1000,3000) 
	bbCameraRange(p->camera,1,3000) 
'	CameraZoom p\camera,1.5
'	if(use_fog) bbCameraFogMode(p->camera,1);
	return p 
End Function

Function CreateXScene() As BBTerrain
	'setup lighting
	dim as BBLight l=bbCreateLight() 
	bbRotateEntity(l,45,45,0) 
	bbAmbientLight(32,32,32) 
	
	'Load terrain
	dim as BBTerrain terr=bbLoadTerrain( "media/xfighter/hmap_1024.bmp" ) 
	bbScaleEntity(terr,20,800,20) 
	bbPositionEntity(terr,-20*512,0,-20*512) 
	bbEntityFX(terr,1) 
	bbEntityType(terr,10) 

	'apply textures to terrain	
	dim as BBTexture tex1=bbLoadTexture( "media/xfighter/coolgrass2.bmp",1 ) 
	bbScaleTexture(tex1,10,10) 
	dim as BBTexture tex2=bbLoadTexture( "media/xfighter/lmap_256.bmp" ) 
	bbScaleTexture(tex2,bbTerrainSize(terr),bbTerrainSize(terr)) 
	bbEntityTexture(terr,tex1,0,0) 
	bbEntityTexture(terr,tex2,0,1) 
	
	'and ground plane
	dim as BBPlaneModel plane=bbCreatePlane() 
	bbScaleEntity(plane,20,1,20) 
	bbPositionEntity(plane,-20*512,0,-20*512) 
	bbEntityTexture(plane,tex1,0,0) 
	bbEntityOrder(plane,3) 
	bbEntityFX(plane,1) 
	bbEntityType(plane,10) 
	
	'create cloud planes
	dim as BBTexture tex=bbLoadTexture( "media/xfighter/cloud_2.bmp",3 ) 
	bbScaleTexture(tex,1000,1000) 
	dim as BBPlaneModel p=bbCreatePlane() 
	bbEntityTexture(p,tex) 
	bbEntityFX(p,1) 
	bbPositionEntity(p,0,450,0) 
	p=bbCopyEntity( p ) 
	bbRotateEntity(p,0,0,180) 
	
	'create water plane
	dim as BBTexture tex3=bbLoadTexture( "media/xfighter/water-2_mip.bmp",3 ) 
	bbScaleTexture(tex3,10,10) 
	dim as BBPlaneModel p1=bbCreatePlane() 
	bbEntityTexture(p1,tex3) 
	bbEntityBlend(p1,1) 
	bbEntityAlpha(p1,.75) 
	bbPositionEntity(p1,0,10,0) 
	bbEntityFX(p1,1) 

	return terr 
End Function






' *********************** audio test *******************************
Sub audiotest()
	printf "Audio Demo\n" 

	bbPlayMusic("media\tune1.mid") 

	bbGraphics3D(960,540,0,2) 

'	bbPlayMusic("shoot.wav");

'	bbPlayMusic("busy.mp3");
'	bbPlayMusic("c://home//blitz3dsdk//examples//GetBusy.mp3");

'	bbPlayCDTrack(9,3);

	bbFlip() 

	dim as BBTexture tex=bbLoadTexture( "media/castle_env.bmp",3) '128+8 );


	dim as BBSound sounds=bbLoadSound("media/lasergun.wav",0) 'gameover.ogg",0);
'	gxSound *sound=bbLoadSound("busy.mp3",0);
	bbLoopSound(sounds) 
	bbPlaySound(sounds) 


'	gxSound *sound=bbLoadSound("shoot.wav",0);
'	bbLoopSound(sound);
'	gxChannel *channel=bbPlaySound(sound);
'	gxChannel *channel=bbLoopSound(sound);

'	while (channel->isPlaying()){
'		Sleep(10);
'	}

	bbCreateListener() 

	dim as BBPivot pivot=bbCreatePivot(0) 

	dim as BBMeshModel cube=bbCreateCube(pivot) 
	bbPositionEntity(cube,0,0,20) 

'	bbEmitSound(sound,cube);

	dim as BBLight light=bbCreateLight(1,0) 
	dim as BBCamera camera=bbCreateCamera(0) 

	bbCameraClsColor(camera,100,0,200) 

	bbPositionEntity(camera,0,0,-4,1) 
	while bbKeyHit(1)=0 
		bbUpdateWorld(1) 
		bbRenderWorld(0) 
		bbTurnEntity(pivot,0,2.0f,0) 
		bbText(20,bbGraphicsHeight()-20,"Blitz3DSDK (C)2007 Blitz Research 2007",0,0) 
		bbFlip(1) 
   Wend
    
End Sub

' *********************** flag test *******************************
Dim Shared As Single PI=3.14159265359f 		'180 degrees

Function bbSin(f As Double) As Single
	return sin(f*2*PI/360.0) 
End Function

Sub flagtest()
	printf "Flag Demo\nFeatures mesh deformation\n" 

	bbGraphics3D(640,480,32,2) 

	Dim As Single segs=128 
	Dim As Single width_=4.0 
	Dim As Single depth=.125 

	dim as BBMeshModel mesh=bbCreateMesh() 
	dim as BBSurface surf=bbCreateSurface( mesh ) 

	for k As Integer=0 To segs        
		Dim As Single x=k*width_/segs-width_/2 
		Dim As Single u=k/segs 
		bbAddVertex(surf,x,1,0,u,0) 
		bbAddVertex(surf,x,-1,0,u,1) 
   Next
	for k As Integer=0 To segs-1        
		bbAddTriangle(surf,k*2,k*2+2,k*2+3) 
		bbAddTriangle(surf,k*2,k*2+3,k*2+1) 
   Next
	dim as BBBrush b=bbLoadBrush( "media/b3dlogo.jpg" ) 
	bbPaintSurface(surf,b) 

	dim as BBCamera camera=bbCreateCamera() 
	bbPositionEntity(camera,0,0,-5) 

	dim as BBLight light=bbCreateLight() 
	bbTurnEntity(light,45,45,0) 

	while bbKeyHit(1)=0 
		Dim As Single ph=bbMilliSecs()/4.0 
		Dim As Integer cnt=bbCountVertices(surf)-1 
		for k As Integer=0 To cnt        
			Dim As Single x=bbVertexX(surf,k) 
			Dim As Single y=bbVertexY(surf,k) 
			Dim As Single z=bbSin(ph+x*300)*depth 
			bbVertexCoords(surf,k,x,y,z) 
      Next
		bbUpdateNormals(mesh) 
		
		if (bbKeyDown(26)) Then bbTurnEntity(camera,0,1,0) 
		if (bbKeyDown(27)) Then bbTurnEntity(camera,0,-1,0) 
		if (bbKeyDown(30)) Then bbMoveEntity(camera,0,0,.1) 
		if (bbKeyDown(44)) Then bbMoveEntity(camera,0,0,-.1) 
		
		if (bbKeyDown(203)) Then bbTurnEntity(mesh,0,1,0,BBTRUE) 
		if (bbKeyDown(205)) Then bbTurnEntity(mesh,0,-1,0,BBTRUE) 
		if (bbKeyDown(200)) Then bbTurnEntity(mesh,1,0,0,BBTRUE) 
		if (bbKeyDown(208)) Then bbTurnEntity(mesh,-1,0,0,BBTRUE) 
		
		bbUpdateWorld() 
		bbRenderWorld() 
		bbFlip() 
	
  Wend
   
End Sub



' *********************** anim test *****************************
Sub animtest()
	printf "Animation demo\nHold down <return> to run\nHit <space> to toggle transitions\n" 

'	bbGraphics3D(1440,900,32,0,0);
	bbGraphics3D(1440/2,900/2,32,2) 

	dim as BBMeshModel mesh_3ds=bbLoadAnimMesh("media/makbot/mak_robotic.3ds") 	'anim seq 0
	bbLoadAnimSeq(mesh_3ds,"media/makbot/mak_running.3ds") 		'anim seq 1
	bbPositionEntity(mesh_3ds,-15,-45,0) 

	dim as BBMeshModel mesh_x=bbLoadAnimMesh("media/makbot/mak_robotic.x") 		'anim seq 0
	bbLoadAnimSeq(mesh_x,"media/makbot/mak_running.x") 			'anim seq 1
	bbPositionEntity(mesh_x,+15,-45,0) 

#define MAXCLONES 100

	dim as BBMeshModel clones(MAXCLONES) 
	for i As Integer=0 To MAXCLONES-1        
		clones(i)=cast(BBMeshModel,bbCopyEntity(mesh_x) )
		Dim As Single x=((i mod 20)-10)*15 
		Dim As Single z=(i/20)*45 
		bbPositionEntity(clones(i),x,-45,20+z) 
		bbAnimate(clones(i),2) 
   Next

	dim as BBPivot pivot=bbCreatePivot() 
	dim as BBCamera cam=bbCreateCamera( pivot ) 
	bbPositionEntity(cam,0,0,-100) 

	dim as BBLight lit=bbCreateLight() 
	bbRotateEntity(lit,45,45,0) 

	bbAnimate(mesh_3ds,2) 	'start ping-pong anims...
	bbAnimate(mesh_x,2) 

	Dim As Integer trans_=10 
	Dim As Integer fps=0 
	Dim As Integer ms=bbMilliSecs() 
	Dim As Integer fcount=0 
	Dim As Integer ucount=0 
	Dim As Integer rcount=0 

	while bbKeyHit(1)=0 
		if(bbKeyHit(57)) Then trans_=10-trans_ 

		if(bbKeyDown(28)) Then 
			if(bbAnimSeq(mesh_3ds)=0) Then bbAnimate(mesh_3ds,1,.5,1,trans_) 
			if(bbAnimSeq(mesh_x)=0) Then bbAnimate(mesh_x,  1,.5,1,trans_) 
		else
			if(bbAnimSeq(mesh_3ds)=1) Then bbAnimate(mesh_3ds,2,1,0,trans_) 
			if(bbAnimSeq(mesh_x)=1) Then bbAnimate(mesh_x  ,2,1,0,trans_) 
		EndIf
  
		for i As Integer=0 To MAXCLONES -1       
			if(bbAnimSeq(clones(i))=1) Then bbAnimate(clones(i),2,1,0,trans_) 
      Next

		if(bbKeyDown(30)) Then bbMoveEntity(cam,0,0,10) 
		if(bbKeyDown(44)) Then bbMoveEntity(cam,0,0,-10) 
		
		if(bbKeyDown(203)) Then bbTurnEntity(pivot,0,3,0) 
		if(bbKeyDown(205)) Then bbTurnEntity(pivot,0,-3,0) 

		bbCls() 
		Dim As Integer m 
		m=bbMilliSecs() 
		bbUpdateWorld() 
		ucount+=bbMilliSecs()-m 

		m=bbMilliSecs() 
		bbRenderWorld() 
		rcount+=bbMilliSecs()-m 

		fcount+=1
		if (fcount=10) Then 
			Dim As Integer ms2=bbMilliSecs() 
			fps=10000/(ms2-ms) 
			ms=ms2 
			fcount=0 
		EndIf
  
		Dim As string buffer 
		buffer="FPS="+str(fps)+" ucount="+str(ucount)+" rcount="+str(rcount)+" trisrendered="+str(bbTrisRendered()) 

		bbColor(255,55,255) 
		bbText(0,10,buffer) 
		
		bbFlip(0) 
	
   Wend
   
End Sub

' *********************** movie test *****************************
Sub movietest()
	printf "Movie Viewer Demo\nFeatures to view AVI movies\n" 

	bbGraphics3D(640,480,32,0) 
	bbAmbientLight(0,0,0) 

	dim as BBMovie movie=bbOpenMovie("media/clock.avi") 

	while bbKeyHit(1)=0 
		bbCls() 
		bbDrawMovie(movie,0,0,640,480) 
		bbFlip() 
   Wend
End Sub

' *********************** tron demo *****************************
Sub playtron()
	printf "Tron demo\nFeatures dynamic mesh creation\nUse arrow keys to steer, A/Z to zoom\n" 

	sleep 200,1 ' necesario para evitar detectar ESC de la demo anterior
	
	Dim As Integer smooth=BBTRUE 

	bbGraphics3D( 640,480,0,2 ) 

' draw our own floor texture
	dim as BBTexture grid_tex=bbCreateTexture( 32,32,0 ) 	'was 8 but crash???
	bbScaleTexture(grid_tex,10,10) 

	bbSetBuffer(bbTextureBuffer( grid_tex )) 
	bbColor(0,0,64) 
	bbRect(0,0,32,32) 
	bbColor(0,0,255) 
	bbRect(0,0,32,32,BBFALSE) 
	bbSetBuffer(bbBackBuffer()) 

	dim as BBPlaneModel grid_plane=bbCreatePlane() 
	bbEntityTexture(grid_plane,grid_tex) 
	bbEntityBlend(grid_plane,1) 
	bbEntityAlpha(grid_plane,.6f) 
	bbEntityFX(grid_plane,1) 

	dim as BBMirror mirror=bbCreateMirror() 

	dim as BBPivot pivot=bbCreatePivot() 

	dim as BBPivot p=bbCreatePivot( ) 'p???
	dim as BBMeshModel cube=bbCreateCube( p ) 
	bbScaleEntity(cube,1,1,5) 
	bbSetAnimKey(cube,0) 
	bbRotateEntity(cube,0,120,0) 
	bbSetAnimKey(cube,60) 
	bbRotateEntity(cube,0,240,0) 
	bbSetAnimKey(cube,120) 
	bbRotateEntity(cube,0,0,0) 
	bbSetAnimKey(cube,180) 
	bbAddAnimSeq(p,180) 

	for x As Integer=-100 To 100 step 25    
		for z As Integer=-100 To 100 step 25  
			dim as BBEntity e=bbCopyEntity( p,pivot ) 
			bbPositionEntity(e,x,5,z) 
			bbAnimate(e) '->getObject());
      Next
   Next
	bbFreeEntity(cube) 

	dim as BBMeshModel trail_mesh=bbCreateMesh() 
	dim as BBBrush    trail_brush=bbCreateBrush() 
	bbBrushColor(trail_brush,255,0,0) 
	bbBrushBlend(trail_brush,3) 
	bbBrushFX(trail_brush,1) 
	dim as BBSurface trail_surf=bbCreateSurface(trail_mesh,trail_brush) 
	bbAddVertex(trail_surf,0,2,0,0,0) 
	bbAddVertex(trail_surf,0,0,0,0,1) 
	bbAddVertex(trail_surf,0,2,0,0,0) 
	bbAddVertex(trail_surf,0,0,0,0,1) 
	bbAddTriangle(trail_surf,0,2,3) 
	bbAddTriangle(trail_surf,0,3,1) 
	bbAddTriangle(trail_surf,0,3,2) 
	bbAddTriangle(trail_surf,0,1,3) 
	Dim As Integer trail_vert=2 

	bbPositionEntity( trail_mesh,0,.01,0) 

	dim as BBMeshModel bike=bbCreateSphere() 
	bbScaleMesh(bike,.75,1,2) 
	bbPositionEntity(bike,0,1,0) 
	bbEntityShininess(bike,1) 
	bbEntityColor(bike,192,0,255) 

	dim as BBCamera camera=bbCreateCamera() 
	bbTurnEntity(camera,45,0,0) 

	dim as BBLight light=bbCreateLight() 
	bbTurnEntity(light,45,45,0) 

	Dim As Single cam_d=30 
	Dim As Integer add_flag=BBFALSE 
	Dim As Integer wire=0 
	Dim As Integer turn=0 
	Dim As Integer add_cnt=0 

	while bbKeyHit(1)=0 
		if(bbKeyHit(17)) Then 
			wire= - wire 
			bbWireFrame(wire) 
		EndIf
  
		if(bbKeyDown(30)) Then cam_d=cam_d-1 
		if(bbKeyDown(44)) Then cam_d=cam_d+1 
		
		turn=0 
		if(smooth) Then 
 
			if(bbKeyDown(203)) Then turn=5 
			if(bbKeyDown(205)) Then turn=-5 
			if(turn) Then 
				add_cnt=add_cnt+1 
				if(add_cnt=3) Then 
					add_cnt=0 
					add_flag=BBTRUE 
				 else
					add_flag=BBFALSE 
				EndIf
			 else
				if(add_cnt) Then 
					add_cnt=0 
					add_flag=BBTRUE 
				 else
					add_flag=BBFALSE 
				EndIf
				EndIf
		 else
			if(bbKeyHit(203)) Then turn=90 
			if(bbKeyHit(205)) Then turn=-90 
			if(turn) Then 
				add_flag=BBTRUE
			else
				add_flag=BBFALSE
			EndIf
		EndIf
  
		if(turn) Then 
			bbTurnEntity(bike,0,turn,0) 
		EndIf
  
		bbMoveEntity(bike,0,0,1) 
		
		if(add_flag) Then 
			bbAddVertex(trail_surf,bbEntityX(bike),2,bbEntityZ(bike),0,0) 
			bbAddVertex(trail_surf,bbEntityX(bike),0,bbEntityZ(bike),0,1) 
			bbAddTriangle(trail_surf,trail_vert,trail_vert+2,trail_vert+3) 
			bbAddTriangle(trail_surf,trail_vert,trail_vert+3,trail_vert+1) 
			bbAddTriangle(trail_surf,trail_vert,trail_vert+3,trail_vert+2) 
			bbAddTriangle(trail_surf,trail_vert,trail_vert+1,trail_vert+3) 
			trail_vert=trail_vert+2 
		 else
			bbVertexCoords(trail_surf,trail_vert,bbEntityX(bike),2,bbEntityZ(bike)) 
			bbVertexCoords(trail_surf,trail_vert+1,bbEntityX(bike),0,bbEntityZ(bike)) 
		EndIf
 
		bbUpdateWorld() 
		
		bbPositionEntity(camera,bbEntityX(bike)-5,0,bbEntityZ(bike)) 
		bbMoveEntity(camera,0,0,-cam_d) 

		bbRenderWorld() 
		bbFlip() 	'simon come here!
	
   Wend
    
End Sub




' --------------------------- MAIN --------------------------
	bbBeginBlitz3D()
	
	playtron()
	insaner() 
	xfighter() 
	'audiotest() 
	flagtest() 
	'collidetest() 
	animtest() 
	movietest() 
	'firepaint() 
	
	bbEndBlitz3D()

