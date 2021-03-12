set _source to choose folder with prompt "Select the source image folder"
	
	set _target to (choose folder with prompt "Select the target image folder") as string
	
	tell application "Finder"
		
		try
			
			set _images to (every file of folder _source whose name extension is "jpg") as alias list
			
		on error
			
			set _images to (every file of folder _source whose name extension is "jpg") as alias as list
			
		end try
		
	end tell
	
	tell application "Preview"
		
		activate
		
		repeat with _singleImage in _images
			
			open _singleImage
			
			save front document as "PDF" in (_target & (text 1 through -5 of (name of (info for _singleImage))) & ".pdf")
			
			close front document
			
		end repeat
		
	end tell
