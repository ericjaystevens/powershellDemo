function restart-vmwareServices {
<#
.SYNOPSIS
    restart the importaint Vmware services
  
.EXAMPLE
     restart-vmwareServcies

.EXAMPLE 
    restart-vmwareServcies computer1, computer2 
.NOTES
    Author:  Eric Stevens
#>

[CmdletBinding()]
param( 
    [string[]] $computerName = $env:computerName
)

    foreach ($computer in $computerName){


        $vmwareServices = @('VMnetDHCP', 'VMUSBArbService', 'VMware NAT Service')
        write-verbose "testing VMware services: $vmwareServices "

        restart-service -Name $vmwareServices -Force -Verbose:$verbosePreference
     
    }
}

