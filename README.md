####What is it?

A [PoshDevOps](https://github.com/PoshDevOps/PoshDevOps) task that performs search and replace

####How do I install it?

```PowerShell
Add-PoshDevOpsTask -Name "YOUR-CISTEP-NAME" -ModulePackageId "SearchReplace"
```

####What parameters are available?
#####Path
a String[] representing one or more path specifications for files to perform replacements on; Wildcards allowed
```PowerShell
[String[]]
[Parameter(
	Mandatory=$true,
    ValueFromPipeline=$true,
	ValueFromPipelineByPropertyName=$true)]
$Paths
```

#####Recurse
a Switch representing whether to perform replacements on files located in sub directories of $Paths (at any depth)
```PowerShell
[Switch]
[Parameter(
	ValueFromPipelineByPropertyName=$true)]
$Recurse
```

#####Replacements
A Tuple[String,String][] representing `Regex string` => `Replacement string` pairs. Replacement is performed leveraging PowerShells `-creplace` operator. A fairly comprehensive writeup is [here](http://www.regular-expressions.info/powershell.html) 
```PowerShell
[Tuple[String,String][]]
[Parameter(
	Mandatory=$true,
	ValueFromPipelineByPropertyName=$true)]
$Replacements
```

####What's the build status?
![](https://ci.appveyor.com/api/projects/status/6djylr783ah3h1hc?svg=true)

