aws iam update-account-password-policy \
    --minimum-password-length 32 \
    --require-symbols \
    --require-numbers \
    --require-uppercase-characters \
    --require-lowercase-characters \
    --allow-users-to-change-password \
    --max-password-age 90 \
    --password-reuse-prevention 5

aws iam create-group --group-name AWSCookbook103Group

aws iam attach-group-policy --group-name AWSCookbook103Group \
    --policy-arn arn:aws:iam::aws:policy/AWSBillingReadOnlyAccess

aws iam create-user --user-name awscookbook103user

RANDOM_STRING=$(aws secretsmanager get-random-password \
--password-length 32 --require-each-included-type \
--output text \
--query RandomPassword)

aws iam create-login-profile --user-name awscookbook103user \
    --password $RANDOM_STRING

aws iam add-user-to-group --group-name AWSCookbook103Group \
    --user-name awscookbook103user