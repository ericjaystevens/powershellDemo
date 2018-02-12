function test-vmwareStatus {
<#
.SYNOPSIS
    Gets the status of importaint Vmware services
  
.EXAMPLE
     test-vmwareStatus

.EXAMPLE 
    test-vmwareStatus computer1
.NOTES
    Author:  Eric Stevens
#>

[CmdletBinding()]
param( 
    
)

    $statusResults = get-vmwareStatus -Verbose:$verbosePreference
   
    $downService = $statusResults | where-object {$_.status -ne "Running"}

    if (-not $downService) {
        Write-Output $true
    } else {
        Write-Verbose "Down services identified: $downService"
        Write-Output $false
    }


}