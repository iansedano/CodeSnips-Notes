# https://stackoverflow.com/questions/43810090/
function tree {
  <#
  .SYNOPSIS
  Prints a directory's subtree structure, optionally with exclusions.                        #'

  .DESCRIPTION
  Prints a given directory's subdirectory structure recursively in tree form,
  so as to visualize the directory hierarchy similar to cmd.exe's built-in
  'tree' command, but with the added ability to exclude subtrees by directory
  names.

  NOTE: Symlinks to directories are not followed; a warning to that effect is
        issued.

  .PARAMETER Path
  The target directory path; defaults to the current directory.
  You may specify a wildcard pattern, but it must resolve to a single directory.

  .PARAMETER Exclude
  One or more directory names that should be excluded from the output; wildcards
  are permitted. Any directory that matches anywhere in the target hierarchy
  is excluded, along with its subtree.
  If -IncludeFiles is also specified, the exclusions are applied to the files'
  names as well.

  .PARAMETER IncludeFiles
  By default, only directories are printed; use this switch to print files
  as well.

  .PARAMETER Ascii
  Uses ASCII characters to visualize the tree structure; by default, graphical
  characters from the OEM character set are used.

  .PARAMETER IndentCount
  Specifies how many characters to use to represent each level of the hierarchy.
  Defaults to 4.

  .PARAMETER Force
  Includes hidden items in the output; by default, they're ignored.

  .NOTES
  Directory symlinks are NOT followed, and a warning to that effect is issued.

  .EXAMPLE
  tree

  Prints the current directory's subdirectory hierarchy.

  .EXAMPLE
  tree ~/Projects -Ascii -Force -Exclude node_modules, .git

  Prints the specified directory's subdirectory hierarchy using ASCII characters
  for visualization, including hidden subdirectories, but excluding the
  subtrees of any directories named 'node_modules' or '.git'.

  #>

    [cmdletbinding(PositionalBinding=$false)]
    param(
      [parameter(Position=0)]
      [string] $Path = '.',
      [string[]] $Exclude,
      [ValidateRange(1, [int]::maxvalue)]
      [int] $IndentCount = 4,
      [switch] $Ascii,
      [switch] $Force,
      [switch] $IncludeFiles
    )

    # Embedded recursive helper function for drawing the tree.
    function _tree_helper {

      param(
        [string] $literalPath,
        [string] $prefix
      )

      # Get all subdirs. and, if requested, also files.
      $items = Get-ChildItem -Directory:(-not $IncludeFiles) -LiteralPath $LiteralPath -Force:$Force

      # Apply exclusion filter(s), if specified.
      if ($Exclude -and $items) {
        $items = $items.Where({ $name = $_.Name; -not $Exclude.Where({ $name -like $_ }, 'First') })
      }

      if (-not $items) { return } # no subdirs. / files, we're done

      $i = 0
      foreach ($item in $items) {
        $isLastSibling = ++$i -eq $items.Count
        # Print this dir.
        $prefix + $(if ($isLastSibling) { $chars.last } else { $chars.interior }) + $chars.hline * ($indentCount-1) + $item.Name
        # Recurse, if it's a subdir (rather than a file).
        if ($item.PSIsContainer) {
          if ($item.LinkType) { Write-Warning "Not following dir. symlink: $item"; continue }
          $subPrefix = $prefix + $(if ($isLastSibling) { $chars.space * $indentCount } else { $chars.vline + $chars.space * ($indentCount-1) })
          _tree_helper $item.FullName $subPrefix
        }
      }
    } # function _tree_helper

    # Hashtable of characters used to draw the structure
    $ndx = [bool] $Ascii
    $chars = @{
      interior = ('├', '+')[$ndx]
      last = ('└', '\')[$ndx]                                                                #'
      hline = ('─', '-')[$ndx]
      vline = ('│', '|')[$ndx]
      space = ' '
    }

    # Resolve the path to a full path and verify its existence and expected type.
    $literalPath = (Resolve-Path $Path).Path
    if (-not $literalPath -or -not (Test-Path -PathType Container -LiteralPath $literalPath) -or $literalPath.count -gt 1) { throw "'$Path' must resolve to a single, existing directory."}

    # Print the target path.
    $literalPath

    # Invoke the helper function to draw the tree.
    _tree_helper $literalPath

  }