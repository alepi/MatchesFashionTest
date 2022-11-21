Here is a list of bugs I encountered during development.

I am using Xcode Version 14.1 (14B47b) on macOS 13.0 on a 15'' intel MacBook Pro.

*********************************************************
	XCODE 14 DOES NOT SHOW A VERY LONG LINE OF TEXT
*********************************************************
I pasted the JSON downloaded from https://www.matchesfashion.com/intl/womens/shop?format=json in an Xcode text file view.

This is because I wanted to have some data for my tests.

Xcode does not show the file contents, see the attached screenshot "Long single line of JSON".

I believe that this is due to the resulting JSON being a very long, single line of text. It makes sense to have the response from a server on a single line, due to saving bandwidth.

Xcode should be able to handle it. TextEdit is able to handle it.

Resorted to https://jsonformatter.org/json-pretty-print Pretty printed the JSON response and pasted the text back into Xcode. Xcode crashed and had to restart it. Finally, it worked.

Also, there are '\t' escape sequences in the JSON text, so I had to replace them all with "\\t" in the json string.

*********************************************************
	XCODE 14 DOES NOT SUPPORT COCOAPODS pod init
*********************************************************
I wanted to use https://github.com/jgsamudio/ModelSynchro to avoid having to manually build Decodable models for the data.

I had the same problem described here:

https://stackoverflow.com/questions/74137282/pod-init-error-force-encoding-cant-modify-frozen-string-frozenerror-at

Switching to an Xcode-13 compatible file format worked as suggested there.

Ended up ditching ModelSyncro as it had not been updated for years and was crashing with a segmentation fault.

Removed cocoa pods altogether.