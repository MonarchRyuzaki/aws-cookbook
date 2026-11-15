RANDOM_STRING=$(aws secretsmanager get-random-password \
     --exclude-punctuation --exclude-uppercase \
     --password-length 6 --require-each-included-type \
     --output text \
     --query RandomPassword)