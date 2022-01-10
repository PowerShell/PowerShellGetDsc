# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.

<#
.DESCRIPTION
Implement build and packaging of the package and place the output $OutDirectory/$ModuleName
#>
function DoBuild
{
    Write-Verbose -Verbose -Message "Starting DoBuild  for $ModuleName with configuration: $BuildConfiguration, framework: $BuildFramework"

    # Module build out path
    $BuildOutPath = "${OutDirectory}/${ModuleName}"
    Write-Verbose -Verbose -Message "Module output file path: '$BuildOutPath'"

    # Copy module script files
    Write-Verbose -Verbose -Message "Copy-Item ${SrcPath}/${ModuleName}.psd1 to '$BuildOutPath'"
    Copy-Item -Path "${SrcPath}/${ModuleName}.psd1" -Dest "$BuildOutPath" -Force

    # Copy Modules folder into out directory
    # Modules -> out/ModuleName/Modules
    Write-Verbose -Verbose -Message "Copy-Item ${SrcPath}/Modules to '$BuildOutPath'"
    Copy-Item -Path "${SrcPath}/Modules" -Dest "$BuildOutPath" -Force -Recurse

    # Copy DSCResources folder into out directory
    # DSCResources -> out/ModuleName/DSCResources
    Write-Verbose -Verbose -Message "Copy-Item ${SrcPath}/DSCResources to '$BuildOutPath'"
    Copy-Item -Path "${SrcPath}/DSCResources" -Dest "$BuildOutPath" -Force -Recurse

    # Copy license
    Write-Verbose -Verbose -Message "Copying LICENSE file to '$BuildOutPath'"
    Copy-Item -Path "./LICENSE" -Dest "$BuildOutPath"

    # Copy notice
    Write-Verbose -Verbose -Message "Copying ThirdPartyNotices.txt to '$BuildOutPath'"
    Copy-Item -Path "./Notice.txt" -Dest "$BuildOutPath"

    # Ensure code is in src directory
    if ( Test-Path "${SrcPath}/code" ) {
        Write-Verbose -Verbose -Message "Source code found and copied to '$BuildOutPath'"
    }
    else {
        Write-Verbose -Verbose -Message "No code to build in '${SrcPath}/code'"
    }

    Write-Verbose -Verbose -Message "Ending build"
}
