# This is the syntax that defines a function

Function hello-world {

write-host "hello world"

}

hello-world

function Get-TimesResult {
	Param ([int]$a, [int]$b)
	$c = $a * $b
	Write-Output $c
}

Get-TimesResult -a 5 -b 10

function Get-TimesResult {
	Param ([int]$a, [int]$b)
	$c = $a * $b
	return $c
}


function printme {

	Param ([string]$a)
	
	write-host $a
}


function Add-Values ($value1 , $value2)
{
   $value3 = $value1 + $value2
   $value3
}
Add-Values -value1 12 -value2 22