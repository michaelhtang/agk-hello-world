
// Project: hello-world 
// Created: 2020-09-29
// Author: Michael Tang
// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "Hello World" )
SetWindowSize( 1024, 768, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 1024, 768 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts

SetPrintSize(50.0)
SetPrintColor(255,0,0)
counting = 1
nameChange = 0
running = 1 
while running = 1
    

    if GetRawKeyPressed(27) = 1 //if esc is pressed, set running to 0
		running = 0
	endif
	
    Printc( "Hello " )
    if GetRawKeyPressed(13) = 1
		nameChange = 1
	endif
    
    if nameChange = 1
		Print("Michael")
	else
		Print( "World" )
	endif
	For i = 1 to 10
		print(counting)
		counting = counting + 1
		Sync()
	next i
	
    Sync()
    
endwhile
