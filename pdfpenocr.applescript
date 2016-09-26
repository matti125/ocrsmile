on run argv
	
	set fname to item 1 of argv
	#you must use "POSIX file", not "POSIX file of". Also, seems "set infile to POSIX file item 1 of argv" does not work.
	# and, it seems you must feed absolute filenames to applescript, relative ones do not seem to work, even though documentation states otherwise.
	set infile to POSIX file fname as alias
	tell application "PDFpen"
		open infile
		tell document 1
			if (needs ocr) then
				with timeout of 1.0E+9 seconds
					ocr
				end timeout
				repeat while performing ocr
					delay 1
				end repeat
				close saving yes
			else
				close
			end if
		end tell
		#you need to quit PDFPen each time, as otherwise it will hog memory and die eventually
		quit
	end tell
end run
