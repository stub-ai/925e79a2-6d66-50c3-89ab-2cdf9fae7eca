#!/bin/bash

# Set the security group name and resource group name
securityGroupName="mySecurityGroup"
resourceGroupName="myResourceGroup"

# Get the security group
echo "Getting security group..."
az network nsg show --name $securityGroupName --resource-group $resourceGroupName

# Get the security group rules
echo "Getting security group rules..."
az network nsg rule list --nsg-name $securityGroupName --resource-group $resourceGroupName

# Get the security group members
echo "Getting security group members..."
az ad group member list --group $securityGroupName