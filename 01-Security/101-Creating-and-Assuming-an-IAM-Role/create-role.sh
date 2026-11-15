ROLE_ARN=$(aws iam create-role --role-name AWSCookbook101Role \
    --assume-role-policy-document file://assume-role-policy.json \
    --output text --query Role.Arn)

aws iam attach-role-policy --role-name AWSCookbook101Role \
    --policy-arn arn:aws:iam::aws:policy/PowerUserAccess


aws sts assume-role --role-arn $ROLE_ARN \
    --role-session-name AWSCookbook101