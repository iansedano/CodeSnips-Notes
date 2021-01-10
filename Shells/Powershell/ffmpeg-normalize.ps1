Get-ChildItem -Recurse |`
ForEach{
	$split = $_.tostring().split(".")
	$output = $split[0] + "-denoise" + "." + $split[1]
	$output2 = $split[0] + "-loud1" + "." + $split[1]
	$output3 = $split[0] + "-loud2" + "." + $split[1]
	ffmpeg -i $_ -hide_banner -filter:a "afftdn" $output
	ffmpeg -i $output -hide_banner -filter:a "loudnorm" $output2
	ffmpeg -i $output -hide_banner -filter:a "loudnorm" $output3
}

Get-ChildItem -Recurse |`
ForEach{
	$split = $_.tostring().split(".")
	$output = $split[0] + "-processed" + "." + $split[1]
	Move-Item $_ ./
}