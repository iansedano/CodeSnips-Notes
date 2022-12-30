
```ps
get-alias | findstr -i pattern
```

get-alias outputs all aliases

-i ignores case

or 

```ps
get-alias | out-string -stream | select-string 'property'
```

out-string outputs input objects as stream - needed because get-alias returns objects not stricly strings

-stream so that each line is outputted separately, or else it matches the whole output which is useless

select-string now functions similar to grep


or add to profile:

```powershell
function grep {
  $input | out-string -stream | select-string $args
}
```