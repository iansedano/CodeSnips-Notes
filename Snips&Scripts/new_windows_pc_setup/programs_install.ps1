$chocolateyAppList = " `
				stardock-fences, `
				krita, `
				inkscape, `
				scribus, `
				manictime, `
				ffmpeg, `
				reaper, `
				reaper-sws-extension, `
				freefilesync, `
				docfetcher, `
				freecad, `
				shotcut, `
				avidemux, `
				virtualdub, `
				putty
				"
$dismAppList = ""

Invoke-Expression "InstallApps.ps1 ""$chocolateyAppList"" ""$dismAppList"""