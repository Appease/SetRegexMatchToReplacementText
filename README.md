**What is it?**
A [Posh-CI](https://github.com/Posh-CI/Posh-CI) step for  invoking [Git.exe](http://git-scm.com/downloads)

**How do I use it?**

add an entry in your ci plans `Packages.config` file
```Xml
<packages>
  <package id="posh-ci-git" />
  <!-- other dependencies snipped -->
</packages>
```

then just pass variables to Invoke-CIPlan according to the following parameters:

#####GitParameters Parameter
an array of parameters to pass to Git.exe
```PowerShell
[string[]][Parameter(ValueFromPipelineByPropertyName = $true)]$GitParameters
```

**What's the build Status?**
![](https://ci.appveyor.com/api/projects/status/tshm942ilarekod7?svg=true)

