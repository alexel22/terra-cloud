# Terraform Cloud 

# Crear Services Principal para Conection in Azure (from PowerShell)
## 1- Primero seteo Consola con la Subscription donde quiero Contextualizar el nuevo SP
 az account list --output table
 
 az account set --subscription XXXX-XXXX-XXXX-XXXX

## 2 - In console 
> az ad sp create-for-rbac --name "terraCloud" --role Contributor --scope (SubscriptionID)

## 3 - copio salida / chequeo que en AD/AppRegistration(Este mi services principal) / cheque el IAM del Scope (que este como contributor dentro del RG "x Ej")
-----------------------------------------------------------------------------------------------------------------------------------------------------------
LINK DE REFERENCIA 
https://www.youtube.com/watch?v=zQp_NCsYYwc
