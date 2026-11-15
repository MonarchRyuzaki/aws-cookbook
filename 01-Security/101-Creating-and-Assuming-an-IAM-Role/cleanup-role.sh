aws iam detach-role-policy --role-name AWSCookbook101Role \
--policy-arn arn:aws:iam::aws:policy/PowerUserAccess

aws iam delete-role --role-name AWSCookbook101Role

unset ROLE_ARN
unset AWS_PRINCIPAL_ARN
