$chocolateyAppList = "`
				7zip,`
				everything,`
				keepass,`
				keepass-keepasshttp,`
				googlechrome,`
				ungoogled-chromium,`
				fsviewer,`
				fsresizer.install,`
				greenshot,`
				stardock-fences,`
				vlc,`
				autohotkey,`
				deluge,`
				sublimetext3,`
				sublimetext3.packagecontrol,`
				krita,`
				inkscape,`
				scribus,`
				python,`
				git,`
				clink,`
				conemu,`
				dropbox,`
				manictime,`
				thunderbird,`
				reaper,`
				reaper-sws-extension,`
				foobar2000,`
				freefilesync,`
				obs-studio,`
				docfetcher,`
				freecad,`
				shotcut,`
				avidemux,`
				virtualdub,`
				paint.net,`
				
				"
$dismAppList = ""

Invoke-Expression "InstallApps.ps1 ""$chocolateyAppList"" ""$dismAppList"""