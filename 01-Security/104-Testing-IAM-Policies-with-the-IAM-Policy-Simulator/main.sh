aws iam create-role --assume-role-policy-document \
    file://assume-role-policy.json --role-name AWSCookbook104IamRole

aws iam attach-role-policy --role-name AWSCookbook104IamRole \
    --policy-arn arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess
