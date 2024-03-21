param (
    [Parameter(Mandatory=$true)][string]$srcDirPath
)

mkdir $srcDirPath\renamed
Get-ChildItem $srcDirPath |
where { ! $_.PSIsContainer } |
Foreach-Object {
	Copy-Item ($srcDirPath+"\"+$_.BaseName+$_.Extension) ($srcDirPath+"\renamed\Z"+$_.BaseName+$_.Extension)
}