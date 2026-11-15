export AWS_REGION=us-east-1
export AWS_CLI_AUTO_PROMPT=off

export AWS_ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export AWS_USER_ID=$(aws sts get-caller-identity --query UserId --output text)
export AWS_PRINCIPAL_ARN=$(aws sts get-caller-identity --query Arn --output text)
