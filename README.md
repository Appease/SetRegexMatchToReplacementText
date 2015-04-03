![](https://ci.appveyor.com/api/projects/status/6djylr783ah3h1hc?svg=true)

####What is it?

An [Appease](http://appease.io) task template that sets one or more regex matches to replacement text

####How do I install it?

```PowerShell
Add-AppeaseTask `
    -DevOpName YOUR-DEVOP-NAME `
    -Name YOUR-TASK-NAME `
    -TemplateId SetRegexMatchesToReplacementText
```

####What parameters are required?

#####Path
description: a `string[]` representing one or more path specifications for files to perform replacements on; Wildcards allowed

#####Regex
description: a `string` representing the regex to pass to the PowerShell `-creplace` operator. A fairly comprehensive writeup is [here](http://www.regular-expressions.info/powershell.html) 

#####ReplacementText
description: a `string` representing the replacement text to pass to the PowerShell `-creplace` operator.

####What parameters are optional?

#####Recurse
description: a `switch` representing whether to perform replacements on files located in sub directories of $Paths (at any depth)