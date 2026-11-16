source ../../Getting-Started/setup.sh

aws iam simulate-principal-policy \
    --policy-source-arn arn:aws:iam::$AWS_ACCOUNT_ID:role/AWSCookbook104IamRole \
    --action-names ec2:CreateInternetGateway

aws iam simulate-principal-policy \
    --policy-source-arn arn:aws:iam::$AWS_ACCOUNT_ID:role/AWSCookbook104IamRole \
    --action-names ec2:DescribeInstances