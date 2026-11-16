aws iam delete-login-profile --user-name awscookbook103user
aws iam delete-login-profile --user-name awscookbook103user2

aws iam remove-user-from-group --user-name awscookbook103user \
--group-name AWSCookbook103Group
aws iam detach-group-policy --group-name AWSCookbook103Group \
--policy-arn arn:aws:iam::aws:policy/AWSBillingReadOnlyAccess
aws iam delete-group --group-name AWSCookbook103Group
aws iam delete-user --user-name awscookbook103user
aws iam delete-user --user-name awscookbook103user2
aws iam delete-account-password-policy

unset RANDOM_STRING
unset RANDOM_STRING2
