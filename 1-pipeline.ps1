########################
# Intro to the Pipleine with objects
##########################

#this is an array
$vmwareServices = @('VMnetDHCP', 'VMUSBArbService', 'VMware NAT Service')

#this gets an object that tells you about a service
get-serivce -Name 'VMnetDHCP'

get-service -Name $vmwareService

#piplines and objects in action
$vmwareServices | select -First 1

#Where, Foreach, Format. 