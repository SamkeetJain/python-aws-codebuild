# python-aws-codebuild

### Requirements
* Amazon AWS ECR
* Amazon AWS CodeBuild

### Amazon Elastic Container Registry(ECR)
On Amazon AWS select "ECR" service and click "Create repository". </br>
On new page enter "python-aws-codebuild" as repository name

### Amazon CodeBuild
On Amazon AWS select "CodeBuild" service and click "Create project".
Project configuration
```
Project name: python-aws-codebuild
 ```
Source
``` 
Source provider: Github
Repository: Public repository
Connect using OAuth: true (click "Connect to Github" option if needed)
Repository URL: https://github.com/twistedFantasy/python-aws-codebuild
```
Environment
```
Operation system: Ubuntu
Runtime: Docker
Runtime version: aws/codebuild/docker:18.09.0
Image version: aws/codebuild/docker:18.09.0-1.7.0
Service role: New service role
Role name: New-Service-Role

Select "Additional configuration"
Click "Add environment variable"
Name: REPOSITORY_URI
Value: value from ECR step
Type: Plaintext
```
Buildspec
```
Use a buildspec file: true
```
Artifacts
```
Type: No artifacts
```
Logs
```
CloudWatch logs - optional: true
S3 logs - optional: false

Allow AWS CodeBuild to modify this service role so it can be used with this build project: true
```
Click "Create build project"

### Amazon IAM
Attach "AmazonEC2ContainerRegistryFullAccess" and " CloudWatchFullAccess" to "New-Service-Role"
