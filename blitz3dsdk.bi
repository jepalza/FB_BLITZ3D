
' incluye la DLL
#inclib "b3d"
 
#define BBFALSE 0
#define BBTRUE 1

#define GFX_DEFAULT 0
#define GFX_FULLSCREEN 1
#define GFX_WINDOWED 2
#define GFX_WINDOWEDSCALED 3

#define PROJ_NONE 0
#define PROJ_PERSPECTIVE 1
#define PROJ_ORTHO 2

#define LIGHT_DIRECTIONAL 1
#define LIGHT_POINT 2
#define LIGHT_SPOT 3

#define TX_COLOR 1
#define TX_ALPHA 2
#define TX_MASKED 4
#define TX_MIP 8
#define TX_CLAMPU 16
#define TX_CLAMPV 32
#define TX_SPHERE 64
#define TX_CUBIC 128
#define TX_VRAM 256
#define TX_HIGHCOLOR 512

#define TX_BLEND_NONE 0
#define TX_BLEND_ALPHA 1
#define TX_BLEND_MULT 2
#define TX_BLEND_ADD 3
#define TX_BLEND_DOT3 4
#define TX_BLEND_MULT2 5

#define CUBEFACE_LEFT 0
#define CUBEFACE_FRONT 1
#define CUBEFACE_RIGHT 2
#define CUBEFACE_BACK 3
#define CUBEFACE_TOP 4
#define CUBEFACE_BOTTOM 5

#define CUBEMODE_SPECULAR 1
#define CUBEMODE_DIFFUSE 2
#define CUBEMODE_REFRACTION 3

#define BRUSHBLEND_NONE 0
#define BRUSHBLEND_ALPHA 1
#define BRUSHBLEND_MULTIPLY 2
#define BRUSHBLEND_ADD 3

#define BRUSHFX_NONE 0
#define BRUSHFX_FULLBRIGHT 1
#define BRUSHFX_VERTEXCOLOR 2
#define BRUSHFX_FLAT 4
#define BRUSHFX_NOFOG 8
#define BRUSHFX_DOUBLESIDED 16
#define BRUSHFX_VERTEXALPHA 32

#define COLLIDE_SPHERESPHERE 1
#define COLLIDE_SPHEREPOLY 2
#define COLLIDE_SPHEREBOX 3

#define COLLIDE_STOP 1
#define COLLIDE_SLIDE1 2
#define COLLIDE_SLIDE2 3

#define PICK_NONE 0
#define PICK_SPHERE 1
#define PICK_POLY 2
#define PICK_BOX 3

#define ANIM_STOP 0
#define ANIM_LOOP 1
#define ANIM_PINGPONG 2
#define ANIM_ONCE 3

#define SPRITE_TURNXY 1
#define SPRITE_STILL 2
#define SPRITE_ALIGNZ 3
#define SPRITE_TURNY 4

#define PLAYCD_SINGLE 1
#define PLAYCD_LOOP 2
#define PLAYCD_ALL 3

#define MOUSE_BUTTON 1
#define MOUSE_RIGHTBUTTON 2
#define MOUSE_MIDDLEBUTTON 3

#define JOYTYPE_NONE 0
#define JOYTYPE_DIGITAL 1
#define JOYTYPE_ANALOG 2

#define KEY_ESCAPE 1
#define KEY_TAB 15
#define KEY_SPACE 57
#define KEY_RETURN 28
#define KEY_LEFTSHIFT 42
#define KEY_LEFTCONTROL 29
#define KEY_LEFTALT 56
#define KEY_RIGHTSHIFT 54
#define KEY_RIGHTCONTROL 157
#define KEY_RIGHTALT 184

#define KEY_UP 200
#define KEY_LEFT 203
#define KEY_RIGHT 205
#define KEY_DOWN 208

#define KEY_F1 59
#define KEY_F2 60
#define KEY_F3 61
#define KEY_F4 62
#define KEY_F5 63
#define KEY_F6 64
#define KEY_F7 65
#define KEY_F8 66
#define KEY_F9 67
#define KEY_F10 68

#define KEY_Q 16
#define KEY_W 17
#define KEY_E 18
#define KEY_R 19
#define KEY_T 20
#define KEY_Y 21
#define KEY_U 22
#define KEY_I 23
#define KEY_O 24
#define KEY_P 25

#define KEY_A 30
#define KEY_S 31
#define KEY_D 32
#define KEY_F 33
#define KEY_G 34
#define KEY_H 35
#define KEY_J 36
#define KEY_K 37
#define KEY_L 38

#define KEY_Z 44
#define KEY_X 45
#define KEY_C 46
#define KEY_V 47
#define KEY_B 48
#define KEY_N 49
#define KEY_M 50

#define KEY_1 2
#define KEY_2 3
#define KEY_3 4
#define KEY_4 5
#define KEY_5 6
#define KEY_6 7
#define KEY_7 8
#define KEY_8 9
#define KEY_9 10
#define KEY_0 11

#define KEY_MINUS 12
#define KEY_EQUALS 13
#define KEY_BACKSPACE 14
#define KEY_LEFTBRACKET 26
#define KEY_RIGHTBRACKET 27
#define KEY_SEMICOLON 39
#define KEY_APOSTROPHE 40
#define KEY_GRAVE 41
#define KEY_BACKSLASH 43
#define KEY_COMMA 51
#define KEY_PERIOD 52
#define KEY_SLASH 53
#define KEY_CAPSLOCK 58

#define KEY_PRINT 183
#define KEY_SCROLLLOCK 70
#define KEY_PAUSEBREAK 197
#define KEY_INSERT 210
#define KEY_DELETE 211
#define KEY_HOME 199
#define KEY_END 207
#define KEY_PAGEUP 201
#define KEY_PAGEDOWN 209

#define KEY_NUMLOCK 69
#define KEY_NUMPADDIVIDE 181
#define KEY_NUMPADMULT 55
#define KEY_NUMPADMINUS 74
#define KEY_NUMPADPLUS 78
#define KEY_NUMPADENTER 156
#define KEY_NUMPADDOT 83
#define KEY_NUMPAD0 82
#define KEY_NUMPAD1 79
#define KEY_NUMPAD2 80
#define KEY_NUMPAD3 81
#define KEY_NUMPAD4 75
#define KEY_NUMPAD5 76
#define KEY_NUMPAD6 77
#define KEY_NUMPAD7 71
#define KEY_NUMPAD8 72
#define KEY_NUMPAD9 73

#define KEY_F11 87
#define KEY_F12 88
#define KEY_LEFTWINDOWS 219
#define KEY_RIGHTWINDOWS 220
#define KEY_NUMPADEQUALS 141
#define KEY_NUMPADCOMMA 179
#define KEY_OEM_102 86
#define KEY_AT 145
#define KEY_COLON 146
#define KEY_UNDERLINE 147
#define KEY_BREAK 149

#define KEY_PREVIOUSTRACK 144
#define KEY_NEXTTRACK 153
#define KEY_MUTE 160
#define KEY_PLAYPAUSE 162
#define KEY_STOP 164
#define KEY_VOLUMELESS 174
#define KEY_VOLUMEMORE 176

#define KEY_APPS 221
#define KEY_POWER 222
#define KEY_SLEEP 223
#define KEY_WAKE 227

#define KEY_WEBHOME 178
#define KEY_WEBSEARCH 229
#define KEY_WEBFAVORITES 230
#define KEY_WEBREFRESH 231
#define KEY_WEBSTOP 232
#define KEY_WEBFORWARD 233
#define KEY_WEBBACK 234

#define KEY_MYCOMPUTER 235
#define KEY_CALCULATOR 161
#define KEY_MAIL 236
#define KEY_MEDIASELECT 237

Type As integer BBObject

Type As BBObject BBTimer
Type As BBObject BBSound 
Type As BBObject BBChannel
Type As BBObject BBGraphics
Type As BBObject BBImage
Type As BBObject BBMovie
Type As BBObject BBFont
Type As BBObject BBCanvas
Type As BBObject BBScene
Type As BBObject BBLight
Type As BBObject BBCamera
Type As BBObject BBModel
Type As BBObject BBEntity
Type As BBObject BBSurface
Type As BBObject BBTexture
Type As BBObject BBBrush
Type As BBObject BBPivot
Type As BBObject BBSprite
Type As BBObject BBPlaneModel
Type As BBObject BBMeshModel
Type As BBObject BBQ3BSPModel
Type As BBObject BBMD2Model
Type As BBObject BBMirror
Type As BBObject BBTerrain



' ------------------------------------
'bbruntime
	Declare Function bbVersion CDecl Alias "bbVersion"( ) As Integer 

	Declare Sub bbSetBlitz3DDebugMode CDecl Alias "bbSetBlitz3DDebugMode"(ByVal debugmode As Integer) 

	Declare Sub bbSetBlitz3DHWND CDecl Alias "bbSetBlitz3DHWND"(ByVal hwndparent As Integer) 
	Declare Sub bbSetBlitz3DTitle CDecl Alias "bbSetBlitz3DTitle"(ByVal title As Zstring Ptr ,ByVal close_ As Zstring Ptr) 

	Declare Function bbBeginBlitz3D CDecl Alias "bbBeginBlitz3D"( ) As Integer 
	Declare Function bbBeginBlitz3DEx CDecl Alias "bbBeginBlitz3DEx"(ByVal hwnd_ As Integer ,ByVal flags As Integer) As Integer 
	Declare Sub bbEndBlitz3D CDecl Alias "bbEndBlitz3D"( ) 

	Declare Function bbValidateGraphics CDecl Alias "bbValidateGraphics"( ) As Integer 

	Declare Sub bbRuntimeError CDecl Alias "bbRuntimeError"(ByVal nerror As Zstring Ptr) 
	Declare Function bbSystemProperty CDecl Alias "bbSystemProperty"(ByVal names As Zstring Ptr) As Zstring Ptr

	Declare Function bbMilliSecs CDecl Alias "bbMilliSecs"( ) As Integer 

	Declare Sub bbDelay CDecl Alias "bbDelay"(ByVal ms As Integer) 
	Declare Sub bbShowPointer CDecl Alias "bbShowPointer"( ) 
	Declare Sub bbHidePointer CDecl Alias "bbHidePointer"( ) 

	Declare Function bbCreateTimer CDecl Alias "bbCreateTimer"(ByVal hz As Integer) As BBTimer 
	Declare Sub bbFreeTimer CDecl Alias "bbFreeTimer"(ByVal timers As BBTimer) 
	Declare Sub bbWaitTimer CDecl Alias "bbWaitTimer"(ByVal timers As BBTimer) 



' ------------------------------------
' bbinput

	'keyboard
	Declare Function bbKeyDown CDecl Alias "bbKeyDown"(ByVal n As Integer) As Integer 
	Declare Function bbKeyHit CDecl Alias "bbKeyHit"(ByVal n As Integer) As Integer 
	Declare Function bbGetKey CDecl Alias "bbGetKey"( ) As Integer 
	Declare Function bbWaitKey CDecl Alias "bbWaitKey"( ) As Integer 
	Declare Sub bbFlushKeys CDecl Alias "bbFlushKeys"( ) 

	'mouse
	Declare Function bbMouseDown CDecl Alias "bbMouseDown"(ByVal n As Integer) As Integer 
	Declare Function bbMouseHit CDecl Alias "bbMouseHit"(ByVal n As Integer) As Integer 
	Declare Function bbGetMouse CDecl Alias "bbGetMouse"( ) As Integer 
	Declare Function bbWaitMouse CDecl Alias "bbWaitMouse"( ) As Integer 
	Declare Function bbMouseX CDecl Alias "bbMouseX"( ) As Integer 
	Declare Function bbMouseY CDecl Alias "bbMouseY"( ) As Integer 
	Declare Function bbMouseZ CDecl Alias "bbMouseZ"( ) As Integer 
	Declare Function bbMouseXSpeed CDecl Alias "bbMouseXSpeed"( ) As Integer 
	Declare Function bbMouseYSpeed CDecl Alias "bbMouseYSpeed"( ) As Integer 
	Declare Function bbMouseZSpeed CDecl Alias "bbMouseZSpeed"( ) As Integer 
	Declare Sub bbMoveMouse CDecl Alias "bbMoveMouse"(ByVal x As Integer ,ByVal y As Integer) 
	Declare Sub bbFlushMouse CDecl Alias "bbFlushMouse"( ) 

	'joysticks
	Declare Function bbJoyType CDecl Alias "bbJoyType"(ByVal port As Integer=0) As Integer 
	Declare Function bbJoyDown CDecl Alias "bbJoyDown"(ByVal n As Integer ,ByVal port As Integer=0) As Integer 
	Declare Function bbJoyHit CDecl Alias "bbJoyHit"(ByVal n As Integer ,ByVal port As Integer=0) As Integer 
	Declare Function bbGetJoy CDecl Alias "bbGetJoy"(ByVal port As Integer=0) As Integer 
	Declare Function bbWaitJoy CDecl Alias "bbWaitJoy"(ByVal port As Integer=0) As Integer 
	Declare Function bbJoyX CDecl Alias "bbJoyX"(ByVal port As Integer=0) As Single 
	Declare Function bbJoyY CDecl Alias "bbJoyY"(ByVal port As Integer=0) As Single 
	Declare Function bbJoyZ CDecl Alias "bbJoyZ"(ByVal port As Integer=0) As Single 
	Declare Function bbJoyU CDecl Alias "bbJoyU"(ByVal port As Integer=0) As Single 
	Declare Function bbJoyV CDecl Alias "bbJoyV"(ByVal port As Integer=0) As Single 
	Declare Function bbJoyPitch CDecl Alias "bbJoyPitch"(ByVal port As Integer=0) As Single 
	Declare Function bbJoyYaw CDecl Alias "bbJoyYaw"(ByVal port As Integer=0) As Single 
	Declare Function bbJoyRoll CDecl Alias "bbJoyRoll"(ByVal port As Integer=0) As Single 
	Declare Function bbJoyHat CDecl Alias "bbJoyHat"(ByVal port As Integer=0) As Integer 
	Declare Function bbJoyXDir CDecl Alias "bbJoyXDir"(ByVal port As Integer=0) As Integer 
	Declare Function bbJoyYDir CDecl Alias "bbJoyYDir"(ByVal port As Integer=0) As Integer 
	Declare Function bbJoyZDir CDecl Alias "bbJoyZDir"(ByVal port As Integer=0) As Integer 
	Declare Function bbJoyUDir CDecl Alias "bbJoyUDir"(ByVal port As Integer=0) As Integer 
	Declare Function bbJoyVDir CDecl Alias "bbJoyVDir"(ByVal port As Integer=0) As Integer 

	Declare Sub bbFlushJoy CDecl Alias "bbFlushJoy"( ) 


' ------------------------------------
' bbaudio
	Declare Function bbLoadSound CDecl Alias "bbLoadSound"(ByVal src As Zstring Ptr ,ByVal flags As Integer=0) As BBSound 

	Declare Sub bbFreeSound CDecl Alias "bbFreeSound"(ByVal sound As BBSound) 
	Declare Function bbPlaySound CDecl Alias "bbPlaySound"(ByVal sound As BBSound) As BBChannel 
	Declare Sub bbLoopSound CDecl Alias "bbLoopSound"(ByVal sound As BBSound) 
	Declare Sub bbSoundPitch CDecl Alias "bbSoundPitch"(ByVal sound As BBSound ,ByVal pitch As Integer) 
	Declare Sub bbSoundVolume CDecl Alias "bbSoundVolume"(ByVal sound As BBSound ,ByVal volume As Single) 
	Declare Sub bbSoundPan CDecl Alias "bbSoundPan"(ByVal sound As BBSound ,ByVal pan As Single) 

	Declare Function bbPlayMusic CDecl Alias "bbPlayMusic"(ByVal src As Zstring Ptr ,ByVal mode As Integer=1) As BBChannel 
	Declare Function bbPlayCDTrack CDecl Alias "bbPlayCDTrack"(ByVal track As Integer ,ByVal mode As Integer=1) As BBChannel 

	Declare Sub bbStopChannel CDecl Alias "bbStopChannel"(ByVal channel As BBChannel) 
	Declare Sub bbPauseChannel CDecl Alias "bbPauseChannel"(ByVal channel As BBChannel) 
	Declare Sub bbResumeChannel CDecl Alias "bbResumeChannel"(ByVal channel As BBChannel) 
	Declare Sub bbChannelPitch CDecl Alias "bbChannelPitch"(ByVal channel As BBChannel ,ByVal pitch As Integer) 
	Declare Sub bbChannelVolume CDecl Alias "bbChannelVolume"(ByVal channel As BBChannel ,ByVal volume As Single) 
	Declare Sub bbChannelPan CDecl Alias "bbChannelPan"(ByVal channel As BBChannel ,ByVal pan As Single) 
	Declare Function bbChannelPlaying CDecl Alias "bbChannelPlaying"(ByVal channel As BBChannel) As Integer 



' ------------------------------------
' bbgraphics
	Declare Sub bbGraphics3D CDecl Alias "bbGraphics3D"(ByVal width_ As Integer ,ByVal height As Integer ,ByVal depth As Integer=0 ,ByVal mode As Integer=0) 

	Declare Function bbCountGfxDrivers CDecl Alias "bbCountGfxDrivers"( ) As Integer 
	Declare Function bbGfxDriverName CDecl Alias "bbGfxDriverName"(ByVal n As Integer) As Zstring Ptr 
	Declare Function bbGfxDriver3D CDecl Alias "bbGfxDriver3D"(ByVal n As Integer) As Integer 

	Declare Function bbGfxDriverCaps3D CDecl Alias "bbGfxDriverCaps3D"( ) As Integer 

	Declare Function bbCountGfxModes3D CDecl Alias "bbCountGfxModes3D"( ) As Integer 
	Declare Function bbGfxMode3DExists CDecl Alias "bbGfxMode3DExists"(ByVal w As Integer ,ByVal h As Integer ,ByVal d As Integer) As Integer 
	Declare Function bbGfxMode3D CDecl Alias "bbGfxMode3D"(ByVal n As Integer) As Integer 
	Declare Function bbWindowed3D CDecl Alias "bbWindowed3D"( ) As Integer 

	Declare Function bbGfxDriverX CDecl Alias "bbGfxDriverX"(ByVal n As Integer) As Integer 
	Declare Function bbGfxDriverY CDecl Alias "bbGfxDriverY"(ByVal n As Integer) As Integer 
	Declare Function bbGfxDriverHz CDecl Alias "bbGfxDriverHz"(ByVal n As Integer) As Integer 

	Declare Sub bbSetGfxDriver CDecl Alias "bbSetGfxDriver"(ByVal n As Integer) 
	Declare Function bbGfxModeExists CDecl Alias "bbGfxModeExists"(ByVal w As Integer ,ByVal h As Integer ,ByVal d As Integer) As Integer 
	Declare Function bbCountGfxModes CDecl Alias "bbCountGfxModes"( ) As Integer 

	Declare Function bbGfxModeWidth CDecl Alias "bbGfxModeWidth"(ByVal n As Integer) As Integer 
	Declare Function bbGfxModeHeight CDecl Alias "bbGfxModeHeight"(ByVal n As Integer) As Integer 
	Declare Function bbGfxModeDepth CDecl Alias "bbGfxModeDepth"(ByVal n As Integer) As Integer 

	Declare Function bbGraphicsWidth CDecl Alias "bbGraphicsWidth"( ) As Integer 
	Declare Function bbGraphicsHeight CDecl Alias "bbGraphicsHeight"( ) As Integer 
	Declare Function bbGraphicsDepth CDecl Alias "bbGraphicsDepth"( ) As Integer 

	Declare Function bbAvailVidMem CDecl Alias "bbAvailVidMem"( ) As Integer 
	Declare Function bbTotalVidMem CDecl Alias "bbTotalVidMem"( ) As Integer 

	'mode functions
	Declare Sub bbGraphics CDecl Alias "bbGraphics"(ByVal w As Integer ,ByVal h As Integer ,ByVal d As Integer ,ByVal mode As Integer) 
	Declare Function bbFrontBuffer CDecl Alias "bbFrontBuffer"( ) As BBCanvas 
	Declare Function bbBackBuffer CDecl Alias "bbBackBuffer"( ) As BBCanvas 
	Declare Sub bbEndGraphics CDecl Alias "bbEndGraphics"( ) 
	Declare Function bbGraphicsLost CDecl Alias "bbGraphicsLost"( ) As Integer 
	Declare Function bbScanLine CDecl Alias "bbScanLine"( ) As Integer 
	Declare Sub bbVWait CDecl Alias "bbVWait"(ByVal n As Integer) 
	Declare Sub bbFlip CDecl Alias "bbFlip"(ByVal vwait As Integer=1) 

	'graphics buffer functions
	Declare Sub bbSetBuffer CDecl Alias "bbSetBuffer"(ByVal buff As BBCanvas) 
	Declare Function bbGraphicsBuffer CDecl Alias "bbGraphicsBuffer"( ) As BBCanvas 
	Declare Function bbLoadBuffer CDecl Alias "bbLoadBuffer"(ByVal surf As BBCanvas ,ByVal str_ As Zstring Ptr) As Integer 
	Declare Function bbSaveBuffer CDecl Alias "bbSaveBuffer"(ByVal surf As BBCanvas ,ByVal str_ As Zstring Ptr) As Integer 
	Declare Sub bbBufferDirty CDecl Alias "bbBufferDirty"(ByVal buffer As BBCanvas) 
	Declare Sub bbAutoBufferDirty CDecl Alias "bbAutoBufferDirty"(ByVal enable As Integer) 

	'fast read/write operations...
	Declare Sub bbLockBuffer CDecl Alias "bbLockBuffer"(ByVal buff As BBCanvas) 
	Declare Sub bbUnlockBuffer CDecl Alias "bbUnlockBuffer"(ByVal buff As BBCanvas) 
	Declare Function bbReadPixel CDecl Alias "bbReadPixel"(ByVal x As Integer ,ByVal y As Integer ,ByVal buff As BBCanvas) As Integer 
	Declare Sub bbWritePixel CDecl Alias "bbWritePixel"(ByVal x As Integer ,ByVal y As Integer ,ByVal argb As Integer ,ByVal buff As BBCanvas) 
	Declare Function bbReadPixelFast CDecl Alias "bbReadPixelFast"(ByVal x As Integer ,ByVal y As Integer ,ByVal buff As BBCanvas) As Integer 
	Declare Sub bbWritePixelFast CDecl Alias "bbWritePixelFast"(ByVal x As Integer ,ByVal y As Integer ,ByVal argb As Integer ,ByVal buff As BBCanvas) 
	Declare Sub bbCopyPixel CDecl Alias "bbCopyPixel"(ByVal src_x As Integer ,ByVal src_y As Integer ,ByVal src As BBCanvas ,ByVal dest_x As Integer ,ByVal dest_y As Integer ,ByVal buff As BBCanvas) 
	Declare Sub bbCopyPixelFast CDecl Alias "bbCopyPixelFast"(ByVal src_x As Integer ,ByVal src_y As Integer ,ByVal src As BBCanvas ,ByVal dest_x As Integer ,ByVal dest_y As Integer ,ByVal buff As BBCanvas) 

	'2d rendering functions
	Declare Sub bbOrigin CDecl Alias "bbOrigin"(ByVal x As Integer ,ByVal y As Integer) 
	Declare Sub bbViewport CDecl Alias "bbViewport"(ByVal x As Integer ,ByVal y As Integer ,ByVal w As Integer ,ByVal h As Integer) 
	Declare Sub bbColor CDecl Alias "bbColor"(ByVal r As Integer ,ByVal g As Integer ,ByVal b As Integer) 
	Declare Sub bbClsColor CDecl Alias "bbClsColor"(ByVal r As Integer ,ByVal g As Integer ,ByVal b As Integer) 
	Declare Sub bbCls CDecl Alias "bbCls"( ) 
	Declare Sub bbPlot CDecl Alias "bbPlot"(ByVal x As Integer ,ByVal y As Integer) 
	Declare Sub bbLine CDecl Alias "bbLine"(ByVal x1 As Integer ,ByVal y1 As Integer ,ByVal x2 As Integer ,ByVal y2 As Integer) 
	Declare Sub bbRect CDecl Alias "bbRect"(ByVal x As Integer ,ByVal y As Integer ,ByVal w As Integer ,ByVal h As Integer ,ByVal solid As Integer=1) 
	Declare Sub bbOval CDecl Alias "bbOval"(ByVal x As Integer ,ByVal y As Integer ,ByVal w As Integer ,ByVal h As Integer ,ByVal solid As Integer=1) 
	Declare Sub bbText CDecl Alias "bbText"(ByVal x As Integer ,ByVal y As Integer ,ByVal t As Zstring Ptr ,ByVal centre_x As Integer=0 ,ByVal centre_y As Integer=0) 
	Declare Sub bbCopyRect CDecl Alias "bbCopyRect"(ByVal sx As Integer ,ByVal sy As Integer ,ByVal w As Integer ,ByVal h As Integer ,ByVal dx As Integer ,ByVal dy As Integer ,ByVal src As BBCanvas ,ByVal dest As BBCanvas) 
	Declare Sub bbGetColor CDecl Alias "bbGetColor"(ByVal x As Integer ,ByVal y As Integer) 
	Declare Function bbColorRed CDecl Alias "bbColorRed"( ) As Integer 
	Declare Function bbColorGreen CDecl Alias "bbColorGreen"( ) As Integer 
	Declare Function bbColorBlue CDecl Alias "bbColorBlue"( ) As Integer 

	'font functions
	Declare Function bbLoadFont CDecl Alias "bbLoadFont"(ByVal name As Zstring Ptr ,ByVal height As Integer ,ByVal bold As Integer ,ByVal italic As Integer ,ByVal underline As Integer) As BBFont 
	Declare Sub bbFreeFont CDecl Alias "bbFreeFont"(ByVal f As BBFont) 
	Declare Sub bbSetFont CDecl Alias "bbSetFont"(ByVal f As BBFont) 
	Declare Function bbFontWidth CDecl Alias "bbFontWidth"( ) As Integer 
	Declare Function bbFontHeight CDecl Alias "bbFontHeight"( ) As Integer 
	Declare Function bbStringWidth CDecl Alias "bbStringWidth"(ByVal str As Zstring Ptr) As Integer 
	Declare Function bbStringHeight CDecl Alias "bbStringHeight"(ByVal str As Zstring Ptr) As Integer 

	'image functions
	Declare Function bbLoadImage CDecl Alias "bbLoadImage"(ByVal s As Zstring Ptr) As BBImage 
	Declare Function bbCopyImage CDecl Alias "bbCopyImage"(ByVal sourceimage As BBImage) As BBImage 
	Declare Function bbCreateImage CDecl Alias "bbCreateImage"(ByVal w As Integer ,ByVal h As Integer ,ByVal n As Integer) As BBImage 
	Declare Function bbLoadAnimImage CDecl Alias "bbLoadAnimImage"(ByVal s As Zstring Ptr ,ByVal w As Integer ,ByVal h As Integer ,ByVal first As Integer ,ByVal cnt As Integer) As BBImage 
	Declare Sub bbFreeImage CDecl Alias "bbFreeImage"(ByVal i As BBImage) 
	Declare Function bbSaveImage CDecl Alias "bbSaveImage"(ByVal i As BBImage ,ByVal filename As Zstring Ptr ,ByVal frame As Integer) As Integer 
	Declare Sub bbGrabImage CDecl Alias "bbGrabImage"(ByVal i As BBImage ,ByVal x As Integer ,ByVal y As Integer ,ByVal n As Integer) 
	Declare Function bbImageBuffer CDecl Alias "bbImageBuffer"(ByVal i As BBImage ,ByVal n As Integer) As BBCanvas 
	Declare Sub bbDrawImage CDecl Alias "bbDrawImage"(ByVal i As BBImage ,ByVal x As Integer ,ByVal y As Integer ,ByVal frame As Integer) 
	Declare Sub bbDrawBlock CDecl Alias "bbDrawBlock"(ByVal i As BBImage ,ByVal x As Integer ,ByVal y As Integer ,ByVal frame As Integer) 
	Declare Sub bbTileImage CDecl Alias "bbTileImage"(ByVal i As BBImage ,ByVal x As Integer ,ByVal y As Integer ,ByVal frame As Integer) 
	Declare Sub bbTileBlock CDecl Alias "bbTileBlock"(ByVal i As BBImage ,ByVal x As Integer ,ByVal y As Integer ,ByVal frame As Integer) 
	Declare Sub bbDrawImageRect CDecl Alias "bbDrawImageRect"(ByVal i As BBImage ,ByVal x As Integer ,ByVal y As Integer ,ByVal r_x As Integer ,ByVal r_y As Integer ,ByVal r_w As Integer ,ByVal r_h As Integer ,ByVal frame As Integer) 
	Declare Sub bbDrawBlockRect CDecl Alias "bbDrawBlockRect"(ByVal i As BBImage ,ByVal x As Integer ,ByVal y As Integer ,ByVal r_x As Integer ,ByVal r_y As Integer ,ByVal r_w As Integer ,ByVal r_h As Integer ,ByVal frame As Integer) 
	Declare Sub bbMaskImage CDecl Alias "bbMaskImage"(ByVal i As BBImage ,ByVal r As Integer ,ByVal g As Integer ,ByVal b As Integer) 
	Declare Sub bbHandleImage CDecl Alias "bbHandleImage"(ByVal i As BBImage ,ByVal x As Integer ,ByVal y As Integer) 
	Declare Sub bbScaleImage CDecl Alias "bbScaleImage"(ByVal i As BBImage ,ByVal w As Single ,ByVal h As Single) 
	Declare Sub bbResizeImage CDecl Alias "bbResizeImage"(ByVal i As BBImage ,ByVal w As Single ,ByVal h As Single) 
	Declare Sub bbRotateImage CDecl Alias "bbRotateImage"(ByVal i As BBImage ,ByVal angle As Single) 
	Declare Sub bbTFormImage CDecl Alias "bbTFormImage"(ByVal i As BBImage ,ByVal a As Single ,ByVal b As Single ,ByVal c As Single ,ByVal d As Single) 
	Declare Sub bbTFormFilter CDecl Alias "bbTFormFilter"(ByVal enable As Integer) 
	Declare Sub bbAutoMidHandle CDecl Alias "bbAutoMidHandle"(ByVal enable As Integer) 
	Declare Sub bbMidHandle CDecl Alias "bbMidHandle"(ByVal i As BBImage) 
	Declare Function bbImageWidth CDecl Alias "bbImageWidth"(ByVal i As BBImage) As Integer 
	Declare Function bbImageHeight CDecl Alias "bbImageHeight"(ByVal i As BBImage) As Integer 
	Declare Function bbImageXHandle CDecl Alias "bbImageXHandle"(ByVal i As BBImage) As Integer 
	Declare Function bbImageYHandle CDecl Alias "bbImageYHandle"(ByVal i As BBImage) As Integer 
	Declare Function bbImagesOverlap CDecl Alias "bbImagesOverlap"(ByVal i1 As BBImage ,ByVal x1 As Integer ,ByVal y1 As Integer ,ByVal i2 As BBImage ,ByVal x2 As Integer ,ByVal y2 As Integer) As Integer 
	Declare Function bbImagesCollide CDecl Alias "bbImagesCollide"(ByVal i1 As BBImage ,ByVal x1 As Integer ,ByVal y1 As Integer ,ByVal f1 As Integer ,ByVal i2 As BBImage ,ByVal x2 As Integer ,ByVal y2 As Integer ,ByVal f2 As Integer) As Integer 
	Declare Function bbRectsOverlap CDecl Alias "bbRectsOverlap"(ByVal x1 As Integer ,ByVal y1 As Integer ,ByVal w1 As Integer ,ByVal h1 As Integer ,ByVal x2 As Integer ,ByVal y2 As Integer ,ByVal w2 As Integer ,ByVal h2 As Integer) As Integer 
	Declare Function bbImageRectOverlap CDecl Alias "bbImageRectOverlap"(ByVal i As BBImage ,ByVal x As Integer ,ByVal y As Integer ,ByVal r_x As Integer ,ByVal r_y As Integer ,ByVal r_w As Integer ,ByVal r_h As Integer) As Integer 
	Declare Function bbImageRectCollide CDecl Alias "bbImageRectCollide"(ByVal i As BBImage ,ByVal x As Integer ,ByVal y As Integer ,ByVal f As Integer ,ByVal r_x As Integer ,ByVal r_y As Integer ,ByVal r_w As Integer ,ByVal r_h As Integer) As Integer 
	Declare Sub bbWrite CDecl Alias "bbWrite"(ByVal str As Zstring Ptr) 
	Declare Sub bbPrint CDecl Alias "bbPrint"(ByVal str As Zstring Ptr) 
	Declare Function bbInput CDecl Alias "bbInput"(ByVal prompt As Zstring Ptr) As Zstring Ptr
	Declare Sub bbLocate CDecl Alias "bbLocate"(ByVal x As Integer ,ByVal y As Integer) 

	' movie commands
	Declare Function bbOpenMovie CDecl Alias "bbOpenMovie"(ByVal s As Zstring Ptr) As BBMovie 
	Declare Function bbDrawMovie CDecl Alias "bbDrawMovie"(ByVal movie As BBMovie ,ByVal x As Integer ,ByVal y As Integer ,ByVal w As Integer ,ByVal h As Integer) As Integer 
	Declare Function bbMovieWidth CDecl Alias "bbMovieWidth"(ByVal movie As BBMovie) As Integer 
	Declare Function bbMovieHeight CDecl Alias "bbMovieHeight"(ByVal movie As BBMovie) As Integer 
	Declare Function bbMoviePlaying CDecl Alias "bbMoviePlaying"(ByVal movie As BBMovie) As Integer 
	Declare Sub bbCloseMovie CDecl Alias "bbCloseMovie"(ByVal movie As BBMovie) 

	' gamma commands
	Declare Sub bbSetGamma CDecl Alias "bbSetGamma"(ByVal r As Integer ,ByVal g As Integer ,ByVal b As Integer ,ByVal dr As Single ,ByVal dg As Single ,ByVal db As Single) 
	Declare Sub bbUpdateGamma CDecl Alias "bbUpdateGamma"(ByVal calibrate As Integer) 
	Declare Function bbGammaRed CDecl Alias "bbGammaRed"(ByVal n As Integer) As Single 
	Declare Function bbGammaGreen CDecl Alias "bbGammaGreen"(ByVal n As Integer) As Single 
	Declare Function bbGammaBlue CDecl Alias "bbGammaBlue"(ByVal n As Integer) As Single 




' ------------------------------------
' bbgraphics3d

	' global world commands
	Declare Sub bbLoaderMatrix CDecl Alias "bbLoaderMatrix"(ByVal ext As Zstring Ptr ,ByVal xx As Single ,ByVal xy As Single ,ByVal xz As Single ,ByVal yx As Single ,ByVal yy As Single ,ByVal yz As Single ,ByVal zx As Single ,ByVal zy As Single ,ByVal zz As Single) 
	Declare Function bbHWTexUnits CDecl Alias "bbHWTexUnits"( ) As Integer 
	Declare Sub bbHWMultiTex CDecl Alias "bbHWMultiTex"(ByVal enable As Integer) 
	Declare Sub bbWBuffer CDecl Alias "bbWBuffer"(ByVal enable As Integer) 
	Declare Sub bbDither CDecl Alias "bbDither"(ByVal enable As Integer) 
	Declare Sub bbAntiAlias CDecl Alias "bbAntiAlias"(ByVal enable As Integer) 
	Declare Sub bbWireFrame CDecl Alias "bbWireFrame"(ByVal enable As Integer) 
	Declare Sub bbAmbientLight CDecl Alias "bbAmbientLight"(ByVal r As Single ,ByVal g As Single ,ByVal b As Single) 
	Declare Sub bbClearCollisions CDecl Alias "bbClearCollisions"( ) 
	Declare Sub bbCollisions CDecl Alias "bbCollisions"(ByVal src_type As Integer ,ByVal dest_type As Integer ,ByVal method As Integer ,ByVal response As Integer) 
	Declare Sub bbUpdateWorld CDecl Alias "bbUpdateWorld"(ByVal elapsed As Single=1.0) 
	Declare Sub bbRenderWorld CDecl Alias "bbRenderWorld"(ByVal tween As Single=1.0) 
	Declare Sub bbCaptureWorld CDecl Alias "bbCaptureWorld"( ) 
	Declare Function bbTrisRendered CDecl Alias "bbTrisRendered"( ) As Integer 
	Declare Function bbStats3D CDecl Alias "bbStats3D"(ByVal n As Integer) As Single 

	' texture commands
	Declare Function bbLoadTexture CDecl Alias "bbLoadTexture"(ByVal file As Zstring Ptr ,ByVal flags As Integer=1) As BBTexture 
	Declare Function bbCreateTexture CDecl Alias "bbCreateTexture"(ByVal w As Integer ,ByVal h As Integer ,ByVal flags As Integer=0 ,ByVal numframes As Integer=1) As BBTexture 
	Declare Function bbLoadAnimTexture CDecl Alias "bbLoadAnimTexture"(ByVal file As Zstring Ptr ,ByVal flags As Integer ,ByVal w As Integer ,ByVal h As Integer ,ByVal first As Integer ,ByVal cnt As Integer) As BBTexture 
	Declare Sub bbFreeTexture CDecl Alias "bbFreeTexture"(ByVal t As BBTexture) 
	Declare Sub bbTextureBlend CDecl Alias "bbTextureBlend"(ByVal t As BBTexture ,ByVal blend As Integer) 
	Declare Sub bbTextureCoords CDecl Alias "bbTextureCoords"(ByVal t As BBTexture ,ByVal flags As Integer) 
	Declare Sub bbScaleTexture CDecl Alias "bbScaleTexture"(ByVal t As BBTexture ,ByVal u_scale As Single ,ByVal v_scale As Single) 
	Declare Sub bbRotateTexture CDecl Alias "bbRotateTexture"(ByVal t As BBTexture ,ByVal angle As Single) 
	Declare Sub bbPositionTexture CDecl Alias "bbPositionTexture"(ByVal t As BBTexture ,ByVal u_pos As Single ,ByVal v_pos As Single) 
	Declare Function bbTextureWidth CDecl Alias "bbTextureWidth"(ByVal t As BBTexture) As Integer 
	Declare Function bbTextureHeight CDecl Alias "bbTextureHeight"(ByVal t As BBTexture) As Integer 
	Declare Function bbTextureName CDecl Alias "bbTextureName"(ByVal t As BBTexture) As Zstring Ptr
	Declare Sub bbSetCubeFace CDecl Alias "bbSetCubeFace"(ByVal t As BBTexture ,ByVal face As Integer) 
	Declare Sub bbSetCubeMode CDecl Alias "bbSetCubeMode"(ByVal t As BBTexture ,ByVal mode As Integer) 
	Declare Function bbTextureBuffer CDecl Alias "bbTextureBuffer"(ByVal t As BBTexture ,ByVal frame As Integer=0) As BBCanvas 
	Declare Sub bbClearTextureFilters CDecl Alias "bbClearTextureFilters"( ) 
	Declare Sub bbTextureFilter CDecl Alias "bbTextureFilter"(ByVal t As Zstring Ptr ,ByVal flags As Integer) 

	' brush commands
	Declare Function bbCreateBrush CDecl Alias "bbCreateBrush"(ByVal r As Single=255.0 ,ByVal g As Single=255.0 ,ByVal b As Single=255.0) As BBBrush 
	Declare Function bbLoadBrush CDecl Alias "bbLoadBrush"(ByVal file As Zstring Ptr ,ByVal texture_flags As Integer=1 ,ByVal u_scale As Single=1.0 ,ByVal v_scale As Single=1.0) As BBBrush 
	Declare Sub bbFreeBrush CDecl Alias "bbFreeBrush"(ByVal b As BBBrush) 
	Declare Sub bbBrushColor CDecl Alias "bbBrushColor"(ByVal br As BBBrush ,ByVal r As Single ,ByVal g As Single ,ByVal b As Single) 
	Declare Sub bbBrushAlpha CDecl Alias "bbBrushAlpha"(ByVal b As BBBrush ,ByVal alpha As Single) 
	Declare Sub bbBrushShininess CDecl Alias "bbBrushShininess"(ByVal b As BBBrush ,ByVal n As Single) 
	Declare Sub bbBrushTexture CDecl Alias "bbBrushTexture"(ByVal b As BBBrush ,ByVal t As BBTexture ,ByVal frame As Integer ,ByVal index As Integer) 
	Declare Function bbGetBrushTexture CDecl Alias "bbGetBrushTexture"(ByVal b As BBBrush ,ByVal index As Integer) As BBTexture 
	Declare Sub bbBrushBlend CDecl Alias "bbBrushBlend"(ByVal b As BBBrush ,ByVal blend As Integer) 
	Declare Sub bbBrushFX CDecl Alias "bbBrushFX"(ByVal b As BBBrush ,ByVal fx As Integer) 

	' mesh commands
	Declare Function bbCreateMesh CDecl Alias "bbCreateMesh"(ByVal p As BBEntity=0) As BBModel 
	Declare Function bbLoadMesh CDecl Alias "bbLoadMesh"(ByVal f As Zstring Ptr ,ByVal p As BBEntity=0) As BBModel 
	Declare Function bbLoadAnimMesh CDecl Alias "bbLoadAnimMesh"(ByVal f As Zstring Ptr ,ByVal p As BBEntity=0) As BBModel 
	Declare Function bbCreateCube CDecl Alias "bbCreateCube"(ByVal p As BBEntity=0) As BBModel 
	Declare Function bbCreateSphere CDecl Alias "bbCreateSphere"(ByVal segs As Integer=8 ,ByVal p As BBEntity=0) As BBModel 
	Declare Function bbCreateCylinder CDecl Alias "bbCreateCylinder"(ByVal segs As Integer=8 ,ByVal solid As Integer=1 ,ByVal p As BBEntity=0) As BBModel 
	Declare Function bbCreateCone CDecl Alias "bbCreateCone"(ByVal segs As Integer=8 ,ByVal solid As Integer=1 ,ByVal p As BBEntity=0) As BBModel 
	Declare Function bbCopyMesh CDecl Alias "bbCopyMesh"(ByVal m As BBModel ,ByVal p As BBEntity=0) As BBModel 
	Declare Sub bbScaleMesh CDecl Alias "bbScaleMesh"(ByVal m As BBModel ,ByVal x As Single ,ByVal y As Single ,ByVal z As Single) 
	Declare Sub bbRotateMesh CDecl Alias "bbRotateMesh"(ByVal m As BBModel ,ByVal x As Single ,ByVal y As Single ,ByVal z As Single) 
	Declare Sub bbPositionMesh CDecl Alias "bbPositionMesh"(ByVal m As BBModel ,ByVal x As Single ,ByVal y As Single ,ByVal z As Single) 
	Declare Sub bbFitMesh CDecl Alias "bbFitMesh"(ByVal m As BBModel ,ByVal x As Single ,ByVal y As Single ,ByVal z As Single ,ByVal w As Single ,ByVal h As Single ,ByVal d As Single ,ByVal uniform As Integer=0) 
	Declare Sub bbFlipMesh CDecl Alias "bbFlipMesh"(ByVal m As BBModel) 
	Declare Sub bbPaintMesh CDecl Alias "bbPaintMesh"(ByVal m As BBModel ,ByVal b As BBBrush) 
	Declare Sub bbAddMesh CDecl Alias "bbAddMesh"(ByVal src As BBModel ,ByVal dest As BBModel) 
	Declare Sub bbUpdateNormals CDecl Alias "bbUpdateNormals"(ByVal m As BBModel) 
	Declare Sub bbLightMesh CDecl Alias "bbLightMesh"(ByVal m As BBModel ,ByVal r As Single ,ByVal g As Single ,ByVal b As Single ,ByVal range As Single ,ByVal x As Single ,ByVal y As Single ,ByVal z As Single) 
	Declare Function bbMeshWidth CDecl Alias "bbMeshWidth"(ByVal m As BBModel) As Single 
	Declare Function bbMeshHeight CDecl Alias "bbMeshHeight"(ByVal m As BBModel) As Single 
	Declare Function bbMeshDepth CDecl Alias "bbMeshDepth"(ByVal m As BBModel) As Single 
	Declare Function bbMeshesIntersect CDecl Alias "bbMeshesIntersect"(ByVal a As BBModel ,ByVal b As BBModel) As Integer 
	Declare Function bbCountSurfaces CDecl Alias "bbCountSurfaces"(ByVal m As BBModel) As Integer 
	Declare Function bbGetSurface CDecl Alias "bbGetSurface"(ByVal m As BBModel ,ByVal index As Integer) As BBSurface 
	Declare Sub bbMeshCullBox CDecl Alias "bbMeshCullBox"(ByVal m As BBModel ,ByVal x As Single ,ByVal y As Single ,ByVal z As Single ,ByVal w As Single ,ByVal h As Single ,ByVal d As Single) 

	' surface commands
	Declare Function bbCreateSurface CDecl Alias "bbCreateSurface"(ByVal m As BBModel ,ByVal b As BBBrush=0) As BBSurface 
	Declare Function bbFindSurface CDecl Alias "bbFindSurface"(ByVal m As BBModel ,ByVal b As BBBrush) As BBSurface 
	Declare Function bbGetSurfaceBrush CDecl Alias "bbGetSurfaceBrush"(ByVal s As BBSurface) As BBBrush 
	Declare Function bbGetEntityBrush CDecl Alias "bbGetEntityBrush"(ByVal m As BBModel) As BBBrush 
	Declare Sub bbClearSurface CDecl Alias "bbClearSurface"(ByVal s As BBSurface ,ByVal verts As Integer ,ByVal tris As Integer) 
	Declare Sub bbPaintSurface CDecl Alias "bbPaintSurface"(ByVal s As BBSurface ,ByVal b As BBBrush) 
	Declare Function bbAddVertex CDecl Alias "bbAddVertex"(ByVal s As BBSurface ,ByVal x As Single ,ByVal y As Single ,ByVal z As Single ,ByVal tu As Single=0.0 ,ByVal tv As Single=0.0 ,ByVal tw As Single=0.0) As Integer 
	Declare Function bbAddTriangle CDecl Alias "bbAddTriangle"(ByVal s As BBSurface ,ByVal v0 As Integer ,ByVal v1 As Integer ,ByVal v2 As Integer) As Integer 
	Declare Sub bbVertexCoords CDecl Alias "bbVertexCoords"(ByVal s As BBSurface ,ByVal n As Integer ,ByVal x As Single ,ByVal y As Single ,ByVal z As Single) 
	Declare Sub bbVertexNormal CDecl Alias "bbVertexNormal"(ByVal s As BBSurface ,ByVal n As Integer ,ByVal x As Single ,ByVal y As Single ,ByVal z As Single) 
	Declare Sub bbVertexColor CDecl Alias "bbVertexColor"(ByVal s As BBSurface ,ByVal n As Integer ,ByVal r As Single ,ByVal g As Single ,ByVal b As Single ,ByVal a As Single) 
	Declare Sub bbVertexTexCoords CDecl Alias "bbVertexTexCoords"(ByVal s As BBSurface ,ByVal n As Integer ,ByVal u As Single ,ByVal v As Single ,ByVal w As Single ,ByVal set As Integer) 
	Declare Function bbCountVertices CDecl Alias "bbCountVertices"(ByVal s As BBSurface) As Integer 
	Declare Function bbCountTriangles CDecl Alias "bbCountTriangles"(ByVal s As BBSurface) As Integer 
	Declare Function bbVertexX CDecl Alias "bbVertexX"(ByVal s As BBSurface ,ByVal n As Integer) As Single 
	Declare Function bbVertexY CDecl Alias "bbVertexY"(ByVal s As BBSurface ,ByVal n As Integer) As Single 
	Declare Function bbVertexZ CDecl Alias "bbVertexZ"(ByVal s As BBSurface ,ByVal n As Integer) As Single 
	Declare Function bbVertexNX CDecl Alias "bbVertexNX"(ByVal s As BBSurface ,ByVal n As Integer) As Single 
	Declare Function bbVertexNY CDecl Alias "bbVertexNY"(ByVal s As BBSurface ,ByVal n As Integer) As Single 
	Declare Function bbVertexNZ CDecl Alias "bbVertexNZ"(ByVal s As BBSurface ,ByVal n As Integer) As Single 
	Declare Function bbVertexRed CDecl Alias "bbVertexRed"(ByVal s As BBSurface ,ByVal n As Integer) As Single 
	Declare Function bbVertexGreen CDecl Alias "bbVertexGreen"(ByVal s As BBSurface ,ByVal n As Integer) As Single 
	Declare Function bbVertexBlue CDecl Alias "bbVertexBlue"(ByVal s As BBSurface ,ByVal n As Integer) As Single 
	Declare Function bbVertexAlpha CDecl Alias "bbVertexAlpha"(ByVal s As BBSurface ,ByVal n As Integer) As Single 
	Declare Function bbVertexU CDecl Alias "bbVertexU"(ByVal s As BBSurface ,ByVal n As Integer ,ByVal t As Integer) As Single 
	Declare Function bbVertexV CDecl Alias "bbVertexV"(ByVal s As BBSurface ,ByVal n As Integer ,ByVal t As Integer) As Single 
	Declare Function bbVertexW CDecl Alias "bbVertexW"(ByVal s As BBSurface ,ByVal n As Integer ,ByVal t As Integer) As Single 
	Declare Function bbTriangleVertex CDecl Alias "bbTriangleVertex"(ByVal s As BBSurface ,ByVal n As Integer ,ByVal v As Integer) As Integer 

	' camera commands
	Declare Function bbCreateCamera CDecl Alias "bbCreateCamera"(ByVal p As BBEntity=0) As BBCamera 
	Declare Sub bbCameraZoom CDecl Alias "bbCameraZoom"(ByVal c As BBCamera ,ByVal zoom As Single) 
	Declare Sub bbCameraRange CDecl Alias "bbCameraRange"(ByVal c As BBCamera ,ByVal nr As Single ,ByVal fr As Single) 
	Declare Sub bbCameraClsColor CDecl Alias "bbCameraClsColor"(ByVal c As BBCamera ,ByVal r As Single ,ByVal g As Single ,ByVal b As Single) 
	Declare Sub bbCameraClsMode CDecl Alias "bbCameraClsMode"(ByVal c As BBCamera ,ByVal cls_color As Integer ,ByVal cls_zbuffer As Integer) 
	Declare Sub bbCameraProjMode CDecl Alias "bbCameraProjMode"(ByVal c As BBCamera ,ByVal mode As Integer) 
	Declare Sub bbCameraViewport CDecl Alias "bbCameraViewport"(ByVal c As BBCamera ,ByVal x As Integer ,ByVal y As Integer ,ByVal w As Integer ,ByVal h As Integer) 
	Declare Sub bbCameraFogRange CDecl Alias "bbCameraFogRange"(ByVal c As BBCamera ,ByVal nr As Single ,ByVal fr As Single) 
	Declare Sub bbCameraFogColor CDecl Alias "bbCameraFogColor"(ByVal c As BBCamera ,ByVal r As Single ,ByVal g As Single ,ByVal b As Single) 
	Declare Sub bbCameraFogMode CDecl Alias "bbCameraFogMode"(ByVal c As BBCamera ,ByVal mode As Integer) 
	Declare Function bbCameraProject CDecl Alias "bbCameraProject"(ByVal c As BBCamera ,ByVal x As Single ,ByVal y As Single ,ByVal z As Single) As Integer 
	Declare Function bbProjectedX CDecl Alias "bbProjectedX"( ) As Single 
	Declare Function bbProjectedY CDecl Alias "bbProjectedY"( ) As Single 
	Declare Function bbProjectedZ CDecl Alias "bbProjectedZ"( ) As Single 
	Declare Function bbCameraPick CDecl Alias "bbCameraPick"(ByVal c As BBCamera ,ByVal x As Single ,ByVal y As Single) As BBEntity 
	Declare Function bbLinePick CDecl Alias "bbLinePick"(ByVal x As Single ,ByVal y As Single ,ByVal z As Single ,ByVal dx As Single ,ByVal dy As Single ,ByVal dz As Single ,ByVal radius As Single) As BBEntity 
	Declare Function bbEntityPick CDecl Alias "bbEntityPick"(ByVal src As BBObject ,ByVal range As Single) As BBEntity 
	Declare Function bbEntityVisible CDecl Alias "bbEntityVisible"(ByVal src As BBObject ,ByVal dest As BBObject) As Integer 
	Declare Function bbEntityInView CDecl Alias "bbEntityInView"(ByVal e As BBEntity ,ByVal c As BBCamera) As Integer 
	Declare Function bbPickedX CDecl Alias "bbPickedX"( ) As Single 
	Declare Function bbPickedY CDecl Alias "bbPickedY"( ) As Single 
	Declare Function bbPickedZ CDecl Alias "bbPickedZ"( ) As Single 
	Declare Function bbPickedNX CDecl Alias "bbPickedNX"( ) As Single 
	Declare Function bbPickedNY CDecl Alias "bbPickedNY"( ) As Single 
	Declare Function bbPickedNZ CDecl Alias "bbPickedNZ"( ) As Single 
	Declare Function bbPickedTime CDecl Alias "bbPickedTime"( ) As Single 
	Declare Function bbPickedEntity CDecl Alias "bbPickedEntity"( ) As BBObject 
	Declare Function bbPickedSurface CDecl Alias "bbPickedSurface"( ) As BBSurface 
	Declare Function bbPickedTriangle CDecl Alias "bbPickedTriangle"( ) As Integer 

	' light commands
	Declare Function bbCreateLight CDecl Alias "bbCreateLight"(ByVal types As Integer=0 ,ByVal p As BBEntity=0) As BBLight 
	Declare Sub bbLightColor CDecl Alias "bbLightColor"(ByVal light As BBLight ,ByVal r As Single ,ByVal g As Single ,ByVal b As Single) 
	Declare Sub bbLightRange CDecl Alias "bbLightRange"(ByVal light As BBLight ,ByVal range As Single) 
	Declare Sub bbLightConeAngles CDecl Alias "bbLightConeAngles"(ByVal light As BBLight ,ByVal inner As Single ,ByVal outer As Single) 

	' pivot commands
	Declare Function bbCreatePivot CDecl Alias "bbCreatePivot"(ByVal p As BBEntity=0) As BBPivot 

	' sprite commands
	Declare Function bbCreateSprite CDecl Alias "bbCreateSprite"(ByVal p As BBEntity=0) As BBSprite 
	Declare Function bbLoadSprite CDecl Alias "bbLoadSprite"(ByVal file As Zstring Ptr ,ByVal texture_flags As Integer=1 ,ByVal p As BBEntity=0) As BBSprite 
	Declare Sub bbRotateSprite CDecl Alias "bbRotateSprite"(ByVal s As BBSprite ,ByVal angle As Single) 
	Declare Sub bbScaleSprite CDecl Alias "bbScaleSprite"(ByVal s As BBSprite ,ByVal x As Single ,ByVal y As Single) 
	Declare Sub bbHandleSprite CDecl Alias "bbHandleSprite"(ByVal s As BBSprite ,ByVal x As Single ,ByVal y As Single) 
	Declare Sub bbSpriteViewMode CDecl Alias "bbSpriteViewMode"(ByVal s As BBSprite ,ByVal mode As Integer) 

	' mirror commands
	Declare Function bbCreateMirror CDecl Alias "bbCreateMirror"(ByVal p As BBEntity=0) As BBMirror 

	' plane commands
	Declare Function bbCreatePlane CDecl Alias "bbCreatePlane"(ByVal segs As Integer=1 ,ByVal p As BBEntity=0) As BBPlaneModel 

	' md2 commands
	Declare Function bbLoadMD2 CDecl Alias "bbLoadMD2"(ByVal file As Zstring Ptr ,ByVal p As BBEntity=0) As BBMD2Model 
	Declare Sub bbAnimateMD2 CDecl Alias "bbAnimateMD2"(ByVal m As BBMD2Model ,ByVal mode As Integer=1 ,ByVal speed As Single=1.0 ,ByVal first As Integer=0 ,ByVal last As Integer=9999 ,ByVal trans_ As Single=0.0) 
	Declare Function bbMD2AnimTime CDecl Alias "bbMD2AnimTime"(ByVal m As BBMD2Model) As Single 
	Declare Function bbMD2AnimLength CDecl Alias "bbMD2AnimLength"(ByVal m As BBMD2Model) As Integer 
	Declare Function bbMD2Animating CDecl Alias "bbMD2Animating"(ByVal m As BBMD2Model) As Integer 

	' bsp commands
	Declare Function bbLoadBSP CDecl Alias "bbLoadBSP"(ByVal file As Zstring Ptr ,ByVal gam As Single ,ByVal p As BBEntity=0) As BBQ3BSPModel 
	Declare Sub bbBSPAmbientLight CDecl Alias "bbBSPAmbientLight"(ByVal t As BBQ3BSPModel ,ByVal r As Single ,ByVal g As Single ,ByVal b As Single) 
	Declare Sub bbBSPLighting CDecl Alias "bbBSPLighting"(ByVal t As BBQ3BSPModel ,ByVal lmap As Integer) 

	' terrain commands
	Declare Function bbCreateTerrain CDecl Alias "bbCreateTerrain"(ByVal n As Integer ,ByVal p As BBEntity=0) As BBTerrain 
	Declare Function bbLoadTerrain CDecl Alias "bbLoadTerrain"(ByVal file As Zstring Ptr ,ByVal p As BBEntity=0) As BBTerrain 
	Declare Sub bbTerrainDetail CDecl Alias "bbTerrainDetail"(ByVal t As BBTerrain ,ByVal n As Integer ,ByVal m As Integer) 
	Declare Sub bbTerrainShading CDecl Alias "bbTerrainShading"(ByVal t As BBTerrain ,ByVal enable As Integer) 
	Declare Function bbTerrainX CDecl Alias "bbTerrainX"(ByVal t As BBTerrain ,ByVal x As Single ,ByVal y As Single ,ByVal z As Single) As Single 
	Declare Function bbTerrainY CDecl Alias "bbTerrainY"(ByVal t As BBTerrain ,ByVal x As Single ,ByVal y As Single ,ByVal z As Single) As Single 
	Declare Function bbTerrainZ CDecl Alias "bbTerrainZ"(ByVal t As BBTerrain ,ByVal x As Single ,ByVal y As Single ,ByVal z As Single) As Single 
	Declare Function bbTerrainSize CDecl Alias "bbTerrainSize"(ByVal t As BBTerrain) As Integer 
	Declare Function bbTerrainHeight CDecl Alias "bbTerrainHeight"(ByVal t As BBTerrain ,ByVal x As Integer ,ByVal z As Integer) As Single 
	Declare Sub bbModifyTerrain CDecl Alias "bbModifyTerrain"(ByVal t As BBTerrain ,ByVal x As Integer ,ByVal z As Integer ,ByVal h As Single ,ByVal realtime As Integer) 

	' audio commands
	Declare Function bbCreateListener CDecl Alias "bbCreateListener"(ByVal p As BBEntity=0 ,ByVal roll As Single=1.0 ,ByVal dopp As Single=1.0 ,ByVal dist As Single=1.0) As BBEntity 
	Declare Function bbEmitSound CDecl Alias "bbEmitSound"(ByVal sound As BBSound ,ByVal o As BBObject) As BBChannel 

	' entity commands
	Declare Function bbCopyEntity CDecl Alias "bbCopyEntity"(ByVal e As BBEntity ,ByVal p As BBEntity=0) As BBEntity 
	Declare Sub bbFreeEntity CDecl Alias "bbFreeEntity"(ByVal e As BBEntity) 
	Declare Sub bbHideEntity CDecl Alias "bbHideEntity"(ByVal e As BBEntity) 
	Declare Sub bbShowEntity CDecl Alias "bbShowEntity"(ByVal e As BBEntity) 
	Declare Sub bbEntityParent CDecl Alias "bbEntityParent"(ByVal e As BBEntity ,ByVal p As BBEntity=0 ,ByVal global As Integer=1) 
	Declare Function bbCountChildren CDecl Alias "bbCountChildren"(ByVal e As BBEntity) As Integer 
	Declare Function bbGetChild CDecl Alias "bbGetChild"(ByVal e As BBEntity ,ByVal index As Integer) As BBEntity 
	Declare Function bbFindChild CDecl Alias "bbFindChild"(ByVal e As BBEntity ,ByVal t As Zstring Ptr) As BBEntity 

	' animation commands
	Declare Function bbLoadAnimSeq CDecl Alias "bbLoadAnimSeq"(ByVal o As BBObject ,ByVal f As Zstring Ptr) As Integer 
	Declare Sub bbSetAnimTime CDecl Alias "bbSetAnimTime"(ByVal o As BBObject ,ByVal time As Single ,ByVal seq As Integer) 
	Declare Sub bbAnimate CDecl Alias "bbAnimate"(ByVal o As BBObject ,ByVal mode As Integer=1 ,ByVal speed As Single=1.0 ,ByVal seq As Integer=0 ,ByVal trans_ As Single=0.0) 
	Declare Sub bbSetAnimKey CDecl Alias "bbSetAnimKey"(ByVal o As BBObject ,ByVal frame As Integer ,ByVal pos_key As Integer=1 ,ByVal rot_key As Integer=1 ,ByVal scl_key As Integer=1) 
	Declare Function bbExtractAnimSeq CDecl Alias "bbExtractAnimSeq"(ByVal o As BBObject ,ByVal first As Integer ,ByVal last As Integer ,ByVal seq As Integer) As Integer 
	Declare Function bbAddAnimSeq CDecl Alias "bbAddAnimSeq"(ByVal o As BBObject ,ByVal length As Integer) As Integer 
	Declare Function bbAnimSeq CDecl Alias "bbAnimSeq"(ByVal o As BBObject) As Integer 
	Declare Function bbAnimTime CDecl Alias "bbAnimTime"(ByVal o As BBObject) As Single 
	Declare Function bbAnimLength CDecl Alias "bbAnimLength"(ByVal o As BBObject) As Integer 
	Declare Function bbAnimating CDecl Alias "bbAnimating"(ByVal o As BBObject) As Integer 

	' entity special fx commands
	Declare Sub bbPaintEntity CDecl Alias "bbPaintEntity"(ByVal e As BBEntity ,ByVal b As BBBrush) 
	Declare Sub bbEntityColor CDecl Alias "bbEntityColor"(ByVal m As BBModel ,ByVal r As Single ,ByVal g As Single ,ByVal b As Single) 
	Declare Sub bbEntityAlpha CDecl Alias "bbEntityAlpha"(ByVal m As BBModel ,ByVal alpha As Single) 
	Declare Sub bbEntityShininess CDecl Alias "bbEntityShininess"(ByVal m As BBModel ,ByVal shininess As Single) 
	Declare Sub bbEntityTexture CDecl Alias "bbEntityTexture"(ByVal m As BBModel ,ByVal t As BBTexture ,ByVal frame As Integer=0 ,ByVal index As Integer=0) 
	Declare Sub bbEntityBlend CDecl Alias "bbEntityBlend"(ByVal m As BBModel ,ByVal blend As Integer) 
	Declare Sub bbEntityFX CDecl Alias "bbEntityFX"(ByVal m As BBModel ,ByVal fx As Integer) 
	Declare Sub bbEntityAutoFade CDecl Alias "bbEntityAutoFade"(ByVal m As BBModel ,ByVal nr As Single ,ByVal fr As Single) 
	Declare Sub bbEntityOrder CDecl Alias "bbEntityOrder"(ByVal o As BBObject ,ByVal n As Integer) 

	' entity property commands
	Declare Function bbEntityX CDecl Alias "bbEntityX"(ByVal e As BBEntity ,ByVal global As Integer=0) As Single 
	Declare Function bbEntityY CDecl Alias "bbEntityY"(ByVal e As BBEntity ,ByVal global As Integer=0) As Single 
	Declare Function bbEntityZ CDecl Alias "bbEntityZ"(ByVal e As BBEntity ,ByVal global As Integer=0) As Single 
	Declare Function bbEntityPitch CDecl Alias "bbEntityPitch"(ByVal e As BBEntity ,ByVal global As Integer=0) As Single 
	Declare Function bbEntityYaw CDecl Alias "bbEntityYaw"(ByVal e As BBEntity ,ByVal global As Integer=0) As Single 
	Declare Function bbEntityRoll CDecl Alias "bbEntityRoll"(ByVal e As BBEntity ,ByVal global As Integer=0) As Single 
	Declare Function bbGetMatElement CDecl Alias "bbGetMatElement"(ByVal e As BBEntity ,ByVal row As Integer ,ByVal col As Integer) As Single 
	Declare Sub bbTFormPoint CDecl Alias "bbTFormPoint"(ByVal x As Single ,ByVal y As Single ,ByVal z As Single ,ByVal src As BBEntity ,ByVal dest As BBEntity) 
	Declare Sub bbTFormVector CDecl Alias "bbTFormVector"(ByVal x As Single ,ByVal y As Single ,ByVal z As Single ,ByVal src As BBEntity ,ByVal dest As BBEntity) 
	Declare Sub bbTFormNormal CDecl Alias "bbTFormNormal"(ByVal x As Single ,ByVal y As Single ,ByVal z As Single ,ByVal src As BBEntity ,ByVal dest As BBEntity) 
	Declare Function bbTFormedX CDecl Alias "bbTFormedX"( ) As Single 
	Declare Function bbTFormedY CDecl Alias "bbTFormedY"( ) As Single 
	Declare Function bbTFormedZ CDecl Alias "bbTFormedZ"( ) As Single 
	Declare Function bbVectorYaw CDecl Alias "bbVectorYaw"(ByVal x As Single ,ByVal y As Single ,ByVal z As Single) As Single 
	Declare Function bbVectorPitch CDecl Alias "bbVectorPitch"(ByVal x As Single ,ByVal y As Single ,ByVal z As Single) As Single 
	Declare Function bbDeltaYaw CDecl Alias "bbDeltaYaw"(ByVal src As BBEntity ,ByVal dest As BBEntity) As Single 
	Declare Function bbDeltaPitch CDecl Alias "bbDeltaPitch"(ByVal src As BBEntity ,ByVal dest As BBEntity) As Single 

	' entity collision commands
	Declare Sub bbResetEntity CDecl Alias "bbResetEntity"(ByVal o As BBObject) 
	Declare Sub bbCaptureEntity CDecl Alias "bbCaptureEntity"(ByVal o As BBObject) 
	Declare Sub bbEntityType CDecl Alias "bbEntityType"(ByVal o As BBObject ,ByVal types As Integer ,ByVal recurs As Integer=0) 
	Declare Sub bbEntityPickMode CDecl Alias "bbEntityPickMode"(ByVal o As BBObject ,ByVal mode As Integer ,ByVal obs As Integer) 
	Declare Function bbGetParent CDecl Alias "bbGetParent"(ByVal e As BBEntity) As BBEntity 
	Declare Function bbGetEntityType CDecl Alias "bbGetEntityType"(ByVal o As BBObject) As Integer 
	Declare Sub bbEntityRadius CDecl Alias "bbEntityRadius"(ByVal o As BBObject ,ByVal x_radius As Single ,ByVal y_radius As Single=0.0) 
	Declare Sub bbEntityBox CDecl Alias "bbEntityBox"(ByVal o As BBObject ,ByVal x As Single ,ByVal y As Single ,ByVal z As Single ,ByVal w As Single ,ByVal h As Single ,ByVal d As Single) 
	Declare Function bbEntityCollided CDecl Alias "bbEntityCollided"(ByVal o As BBObject ,ByVal type As Integer) As BBObject 
	Declare Function bbCountCollisions CDecl Alias "bbCountCollisions"(ByVal o As BBObject) As Integer 
	Declare Function bbCollisionX CDecl Alias "bbCollisionX"(ByVal o As BBObject ,ByVal index As Integer) As Single 
	Declare Function bbCollisionY CDecl Alias "bbCollisionY"(ByVal o As BBObject ,ByVal index As Integer) As Single 
	Declare Function bbCollisionZ CDecl Alias "bbCollisionZ"(ByVal o As BBObject ,ByVal index As Integer) As Single 
	Declare Function bbCollisionNX CDecl Alias "bbCollisionNX"(ByVal o As BBObject ,ByVal index As Integer) As Single 
	Declare Function bbCollisionNY CDecl Alias "bbCollisionNY"(ByVal o As BBObject ,ByVal index As Integer) As Single 
	Declare Function bbCollisionNZ CDecl Alias "bbCollisionNZ"(ByVal o As BBObject ,ByVal index As Integer) As Single 
	Declare Function bbCollisionTime CDecl Alias "bbCollisionTime"(ByVal o As BBObject ,ByVal index As Integer) As Single 
	Declare Function bbCollisionEntity CDecl Alias "bbCollisionEntity"(ByVal o As BBObject ,ByVal index As Integer) As BBObject 
	Declare Function bbCollisionSurface CDecl Alias "bbCollisionSurface"(ByVal o As BBObject ,ByVal index As Integer) As BBSurface 
	Declare Function bbCollisionTriangle CDecl Alias "bbCollisionTriangle"(ByVal o As BBObject ,ByVal index As Integer) As Integer 
	Declare Function bbEntityDistance CDecl Alias "bbEntityDistance"(ByVal src As BBEntity ,ByVal dest As BBEntity) As Single 

	' entity transformation commands
	Declare Sub bbMoveEntity CDecl Alias "bbMoveEntity"(ByVal e As BBEntity ,ByVal x As Single ,ByVal y As Single ,ByVal z As Single) 
	Declare Sub bbTurnEntity CDecl Alias "bbTurnEntity"(ByVal e As BBEntity ,ByVal p As Single ,ByVal y As Single ,ByVal r As Single ,ByVal global As Integer=0) 
	Declare Sub bbTranslateEntity CDecl Alias "bbTranslateEntity"(ByVal e As BBEntity ,ByVal x As Single ,ByVal y As Single ,ByVal z As Single ,ByVal global As Integer=0) 
	Declare Sub bbPositionEntity CDecl Alias "bbPositionEntity"(ByVal e As BBEntity ,ByVal x As Single ,ByVal y As Single ,ByVal z As Single ,ByVal global As Integer=0) 
	Declare Sub bbScaleEntity CDecl Alias "bbScaleEntity"(ByVal e As BBEntity ,ByVal x As Single ,ByVal y As Single ,ByVal z As Single ,ByVal global As Integer=0) 
	Declare Sub bbRotateEntity CDecl Alias "bbRotateEntity"(ByVal e As BBEntity ,ByVal p As Single ,ByVal y As Single ,ByVal r As Single ,ByVal global As Integer=0) 
	Declare Sub bbPointEntity CDecl Alias "bbPointEntity"(ByVal e As BBEntity ,ByVal t As BBEntity ,ByVal roll As Single=0) 
	Declare Sub bbAlignToVector CDecl Alias "bbAlignToVector"(ByVal e As BBEntity ,ByVal nx As Single ,ByVal ny As Single ,ByVal nz As Single ,ByVal axis As Integer ,ByVal rate As Single) 

	' entity misc commands
	Declare Sub bbNameEntity CDecl Alias "bbNameEntity"(ByVal e As BBEntity ,ByVal t As Zstring Ptr) 
	Declare Function bbEntityName CDecl Alias "bbEntityName"(ByVal e As BBEntity) As Zstring Ptr 
	Declare Function bbEntityClass CDecl Alias "bbEntityClass"(ByVal e As BBEntity) As Zstring Ptr 
	Declare Sub bbClearWorld CDecl Alias "bbClearWorld"(ByVal e As Integer ,ByVal b As Integer ,ByVal t As Integer) 
	Declare Sub bbSetEntityID CDecl Alias "bbSetEntityID"(ByVal e As BBEntity Ptr ,ByVal id As Integer) 
	Declare Function bbEntityID CDecl Alias "bbEntityID"(ByVal e As BBEntity Ptr) As Integer 
	Declare Function bbActiveTextures CDecl Alias "bbActiveTextures"( ) As Integer 
