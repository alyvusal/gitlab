# https://docs.gitlab.com/user/infrastructure/iac/terraform_state/?tab=Manually+with+OpenTofu+CLI
# https://gitlab.com/components/opentofu/-/tree/2.13.0?ref_type=tags
# https://gitlab.com/explore/catalog/
# https://gitlab.com/explore/catalog/components/opentofu
# https://gitlab.com/components/opentofu/-/tree/2.13.0/templates?ref_type=tags

TF_USERNAME="alyvusal"
TF_PASSWORD="glpat-LHUNphhTOQ8BrpTW4g4ozG86MQp1Omhxd2l2Cw.01.120isshbw"

PROJECT_ID="71554181"  # test
GITLAB_TOFU_STATE_NAME="dev"
TF_ADDRESS="https://gitlab.com/api/v4/projects/${PROJECT_ID}/terraform/state/${GITLAB_TOFU_STATE_NAME}"

tofu init -migrate-state \
  -backend-config=address=${TF_ADDRESS} \
  -backend-config=lock_address=${TF_ADDRESS}/lock \
  -backend-config=unlock_address=${TF_ADDRESS}/lock \
  -backend-config=username=${TF_USERNAME} \
  -backend-config=password=${TF_PASSWORD} \
  -backend-config=lock_method=POST \
  -backend-config=unlock_method=DELETE \
  -backend-config=retry_wait_min=5


# glab opentofu init -R 'alyvusal/test' 'prod'
# Alternatively, use the Terraform or OpenTofu CLI directly. You must use a personal access token with the scope set to api. How do I create a personal access token?.

# export GITLAB_ACCESS_TOKEN=<YOUR-ACCESS-TOKEN>
# export TF_STATE_NAME=prod
# terraform init \
#     -backend-config="address=https://gitlab.com/api/v4/projects/71554181/terraform/state/$TF_STATE_NAME" \
#     -backend-config="lock_address=https://gitlab.com/api/v4/projects/71554181/terraform/state/$TF_STATE_NAME/lock" \
#     -backend-config="unlock_address=https://gitlab.com/api/v4/projects/71554181/terraform/state/$TF_STATE_NAME/lock" \
#     -backend-config="username=alyvusal" \
#     -backend-config="password=$GITLAB_ACCESS_TOKEN" \
#     -backend-config="lock_method=POST" \
#     -backend-config="unlock_method=DELETE" \
#     -backend-config="retry_wait_min=5"