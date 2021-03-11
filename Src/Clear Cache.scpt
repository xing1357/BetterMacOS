tell application "System Events"
		
		set libraryPath to path to library folder from user domain
		
		tell application "Finder"
			
			set cacheFolder to folder "Caches" of folder libraryPath
			
			set deleted to POSIX file "~/Library/Caches/"
			
			try
				
				tell application "Finder"
					
					delete (files of folderdeleted)
					
					delete (folders of folderdeleted)
					
				end tell
				
			end try
			
			delete every item of cacheFolder
			
		end tell
		
		tell application "Finder"
			
			try
				
				empty the trash
				
			end try
			
			empty the trash
			
		end tell
		
	end tell
	
	tell application "Finder"
		
		
		empty trash
		
	end tell
