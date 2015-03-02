####What is it?

A PoshCI step that performs search and replace

####How do I install it?

```PowerShell
Add-CIStep -Name "YOUR-CISTEP-NAME" -ModulePackageId "PoshCI.SearchReplace"
```

####What parameters are available?
#####Path
a string[] representing one or more path specifications for files to perform replacements on; Wildcards allowed
```PowerShell
[string[]]
[Parameter(
	Mandatory=$true,
    ValueFromPipeline=$true,
	ValueFromPipelineByPropertyName=$true)]
$Paths
```

#####Recurse
a switch representing whether to perform replacements on files located in sub directories of $Paths (at any depth)
```PowerShell
[switch]
[Parameter(
	ValueFromPipelineByPropertyName=$true)]
$Recurse
```

#####Replacements
A tuple[string,string][] representing `Regex string` => `Replacement string` pairs. Replacement is performed leveraging PowerShells `-creplace` operator. A fairly comprehensive writeup is [here](http://www.regular-expressions.info/powershell.html) 
```PowerShell
[tuple[string,string][]]
[Parameter(
	Mandatory=$true,
	ValueFromPipelineByPropertyName=$true)]
$Replacements
```

####What's the build status?
![](https://ci.appveyor.com/api/projects/status/sye7k4oc83plnib3?svg=true)

