export AWS_REGION=us-east-1

AWS_ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)

