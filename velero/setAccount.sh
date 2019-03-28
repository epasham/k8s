export AZURE_SUBSCRIPTION_ID="95124793-2b54-4b0e-b16e-970293b80322"
export AZURE_TENANT_ID="d22a5dd1-ae22-4d29-8b30-bdb2c0f25ea4"
export AZURE_CLIENT_ID="a747fc2f-50d4-4271-a55e-829b6ea14bab"
export AZURE_CLIENT_SECRET="hiiqMucnKNCYpUTOusVZx/IkYoxMZedJtBkv7RRiZxA="
export AZURE_RESOURCE_GROUP="scripttest"

kubectl create secret generic cloud-credentials --namespace velero --from-literal AZURE_SUBSCRIPTION_ID=${AZURE_SUBSCRIPTION_ID} --from-literal AZURE_TENANT_ID=${AZURE_TENANT_ID} --from-literal AZURE_CLIENT_ID=${AZURE_CLIENT_ID} --from-literal AZURE_CLIENT_SECRET=${AZURE_CLIENT_SECRET} --from-literal AZURE_RESOURCE_GROUP=${AZURE_RESOURCE_GROUP}
