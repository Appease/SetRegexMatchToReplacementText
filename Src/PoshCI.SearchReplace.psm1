# halt immediately on any errors which occur in this module
$ErrorActionPreference = 'Stop'

function Invoke-CIStep(
[string[]]
[Parameter(
	Mandatory=$true,
    ValueFromPipeline=$true,
	ValueFromPipelineByPropertyName=$true)]
$Paths,

[switch]
[Parameter(
	ValueFromPipelineByPropertyName=$true)]
$Recurse,

[tuple[string,string][]]
[Parameter(
	Mandatory=$true,
	ValueFromPipelineByPropertyName=$true)]
$Replacements){

    foreach($item in Get-ChildItem -Path $Paths -Recurse:$Recurse | ?{ !$_.PSIsContainer } ){
    
        $itemContent = (gc $item)
        $Replacements|%{ $itemContent -creplace $_.Item1,$_.Item2 }
        sc -Path $item -Value $itemContent
    }

    Write-Debug "checking '$LastExitCode': $LastExitCode"
    if ($LastExitCode -ne 0) {
        throw $Error
    }
}

Export-ModuleMember -Function Invoke-CIStep
