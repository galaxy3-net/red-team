# red-team
RedTeam environment.


### Helpful Documentation
- [New-AzResourceGroupDeployment manpage](https://docs.microsoft.com/en-us/powershell/module/az.resources/new-azresourcegroupdeployment?view=azps-6.6.0)
- [New-AzResourceGroup manpage](https://docs.microsoft.com/en-us/powershell/scripting/install/install-ubuntu?view=powershell-7.2)
- [Installing Powershell on Ubuntu](https://docs.microsoft.com/en-us/powershell/scripting/install/install-ubuntu?view=powershell-7.2)
- [Manage Network Security Groups With PowerShell and Azure DevOps](https://www.awshole.com/2019/11/08/manage-network-security-groups-with-powershell-and-azure-devops/)
- [Create a Network Security Group (NSG) with PowerShell in Azure and assign it to an existing subnet!](https://techcommunity.microsoft.com/t5/azure-networking/create-a-network-security-group-nsg-with-powershell-in-azure-and/m-p/1936046)


Instructions
1. Log onto the UCIBOX desktop using the vagrant account
2. Obtain the account Tenant Id
    1. After logging into the AWS console.
    2. GoTo: Azure Active Directory -> Overview
    3. Copy the Tenant ID, store it in a secure place

wget https://raw.githubusercontent.com/galaxy3-net/red-team/krk/azure/arm/deploy
chmod u+x deploy

3. Install Powershell
> Run
> 
>bash -c "$(curl -s https://raw.githubusercontent.com/galaxy3-net/red-team/krk/azure/arm/setup)"

.
> Run
> 
> iwr https://raw.githubusercontent.com/galaxy3-net/red-team/krk/azure/arm/resource_group.ps1 -UseBasicParsing | iex

4. Connect the Powershell Session to the Azure Account
> Run
>
>bash -c "$(curl -s https://raw.githubusercontent.com/galaxy3-net/red-team/krk/azure/arm/authenticate)"


### Install Powershell on Ubuntu 
