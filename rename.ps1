$oldName = "DotNetCross.Sorting.Benchmarks."
$newName = ""
Get-ChildItem -Filter "*$oldName*" -Recurse | Rename-Item -NewName {$_.name -replace $oldName, $newName }
