$drumFolders = ""
$count = 20


$drums = Get-ChildItem -Path $drumFolders -Recurse -Include *.mp3, *.wav | Get-Random -Count $count


Set-Clipboard
ForEach-Object -InputObject $drums -Process{Set-Clipboard -Append -LiteralPath $_}
