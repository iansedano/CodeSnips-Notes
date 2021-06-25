bin/
    hello                          # command executable
    outyet                         # command executable
src/
    github.com/golang/example/
	    .git/                      # Git repository metadata

		hello/
		    hello.go               # command source
		outyet/
		    main.go                # command source
		    main_test.go           # test source
		stringutil/
		    reverse.go             # package source
		    reverse_test.go        # test source

	    golang.org/x/image/
	    .git/                      # Git repository metadata

		bmp/
		    reader.go              # package source
		    writer.go              # package source

	    ... (many more repositories and packages omitted) ...



Most Go programmers keep all their Go source code and dependencies in a single workspace.

Note that symbolic links should not be used to link files or directories into your workspace.

GOPATH defaults to a directory named go inside your home directory, so $HOME/go on Unix, $home/go on Plan 9, and %USERPROFILE%\go (usually C:\Users\YourName\go) on Windows.


If you would like to work in a different location, you will need to set GOPATH

on BASH add this to profile:
export GOPATH={your_directory}

