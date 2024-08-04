' Run start code
#Include "blitz3dsdk.bi"

bbBeginBlitz3D ()

bbSetBlitz3DTitle ("PB Cube - ESC to exit", "")

bbGraphics3D (640, 480, 0, 2)

dim as integer cam = bbCreateCamera ()
dim as integer cube = bbCreateCube ()
dim as integer light = bbCreateLight ()

bbMoveEntity (cube, 0, 0, 5)
bbMoveEntity (light, -10, 5, -1)
bbPointEntity (light, cube)

Do
    bbTurnEntity (cube, 0.1, 0.25, 0.5)

    bbRenderWorld ()
    bbFlip ()
    
Loop Until bbKeyHit (KEY_ESCAPE)

bbEndBlitz3D ()
