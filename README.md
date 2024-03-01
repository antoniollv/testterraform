# TEST TERRAFORM REPO

## For create repo in local and push to remote
```BASH
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:antoniollv/testterraform.git
git push -u origin main
```
## To verify the account with which you are authenticated in the AWS CLI (Command Line Interface)
```BASH
aws sts get-caller-identity
```