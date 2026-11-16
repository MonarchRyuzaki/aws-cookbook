#Detach the AmazonEC2ReadOnlyAccess policy from the role:
source ../../Getting-Started/setup.sh

aws iam detach-role-policy --role-name AWSCookbook104IamRole \
--policy-arn arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess

# Delete the IAM Role for the proxy:

aws iam delete-role --role-name AWSCookbook104IamRole