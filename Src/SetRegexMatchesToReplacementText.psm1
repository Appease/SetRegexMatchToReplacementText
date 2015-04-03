# halt immediately on any errors which occur in this module
$ErrorActionPreference = 'Stop'

function Invoke(
[String[]]
[Parameter(
	Mandatory=$true,
	ValueFromPipelineByPropertyName=$true)]
$Path,

[String]
[Parameter(
	Mandatory=$true,
	ValueFromPipelineByPropertyName=$true)]
$Regex,

[String]
[Parameter(
	Mandatory=$true,
	ValueFromPipelineByPropertyName=$true)]
$ReplacementText,

[Switch]
[Parameter(
	ValueFromPipelineByPropertyName=$true)]
$Recurse){

    foreach($item in Get-ChildItem -Path $Path -Recurse:$Recurse | ?{ !$_.PSIsContainer } ){
    
        (gc $item) -creplace $Regex, $ReplacementText | sc -Path $item -Force
    }
}

Export-ModuleMember -Function Invoke
