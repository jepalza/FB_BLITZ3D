
randomize timer
Function PbRandom(nummax as uinteger,nummin as uinteger=0) as uinteger
   return int( (rnd(1)*(nummax-nummin)) +nummin)
End Function

' Play with this value!
#define NUM_CUBES 200  '  1000 - 2000 fine here on Core 2 Duo 6300 / Geforce 6800 GS

' Include Blitz3D engine...
#Include "blitz3dsdk.bi"

' Initialise Blitz3D engine...
bbBeginBlitz3D ()

' Set debug mode (it's on by default -- just added this so you can turn it off)...
bbSetBlitz3DDebugMode (1) '  1 = DEBUG ON, 0 = DEBUG OFF

' Window title and close gadget warning text...
bbSetBlitz3DTitle ("Use cursors plus A & Z", "Are you sure?")

' Open dislay...
bbGraphics3D (640, 480)

' Camera...
dim as integer cam = bbCreateCamera ()
 bbCameraClsColor (cam, 64, 128, 180)
 bbCameraRange (cam, 0.1, 1000)
 bbMoveEntity (cam, 0, 5, 0)

' Light...
dim as integer light = bbCreateLight ()
 bbMoveEntity (light, -10, 5, -1)

' Grass...
dim as integer grasstex = bbLoadTexture ("./media/grass.png")
dim as integer plane = bbCreatePlane ()
 bbEntityTexture (plane, grasstex)

' Cube (will be hidden and 20 copies made)...
dim as integer cubetex = bbLoadTexture ("./media/boing.png")
dim as integer cube    = bbCreateCube ()
 bbMoveEntity (cube, 0, 0, 5)
 bbEntityTexture (cube, cubetex)
 bbHideEntity (cube)

' Point light to centre of world...
bbPointEntity (light, cube)

' Create duplicates of cube entity...
dim as integer cubes(NUM_CUBES)

dim dupe as integer
For dupe = 1 To NUM_CUBES
    cubes(dupe) = bbCopyEntity (cube)
    bbPositionEntity (cubes(dupe), PbRandom (50) - 25, PbRandom (25) + 2, PbRandom (50))
    bbTurnEntity (cubes(dupe), PbRandom (720) - 360, PbRandom (720) - 360, PbRandom (720) - 360)
Next

Do
    ' Rotate all cubes...
    For dupe = 1 To NUM_CUBES
        bbTurnEntity (cubes(dupe), 0.1, 0.2, 0.3)
    Next

    ' Camera control...
    ' Turn left/right...
    If bbKeyDown (KEY_LEFT) Then
        bbTurnEntity (cam, 0, 1, 0, 1)  ' The last parameter here makes sure we rotate
    Else  ' on the 3D world's y-axis. Change to 0 to see
        If bbKeyDown (KEY_RIGHT) then  ' the undesired effect of rotating on the entity's
            bbTurnEntity (cam, 0, -1, 0, 1) '  own y-axis (at least in this case)...
        EndIf
    EndIf
    
    ' Tilt up/down...
    If bbKeyDown (KEY_UP) Then
        bbTurnEntity (cam, 1, 0, 0)
    Else                                
        If bbKeyDown (KEY_DOWN) Then
            bbTurnEntity (cam, -1, 0, 0)
        EndIf
    EndIf

    ' Forwards/backwards...
    If bbKeyDown (KEY_A) Then
        bbMoveEntity (cam, 0, 0, 0.25)
    Else
        If bbKeyDown (KEY_Z) Then
            bbMoveEntity (cam, 0, 0, -0.25)
        EndIf
    EndIf
	
    ' Render 3D world to back buffer...
    bbRenderWorld ()
    
    ' Show the rendered buffer (flips back buffer to front buffer)...
    bbFlip ()
    
Loop Until bbKeyHit (1)

'  Close down Blitz3D engine...
bbEndBlitz3D ()
