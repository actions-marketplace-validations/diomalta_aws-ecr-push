# ECR Push

This action builds, tags, and pushes a Docker image to AWS ECR.

## Environment Variables

| Name                   | Description                                      |
|------------------------|--------------------------------------------------|
| AWS_ACCESS_KEY_ID      | AWS Access Key ID                                |
| AWS_SECRET_ACCESS_KEY  | AWS Secret Access Key                            |
| AWS_ECR_REGION         | AWS ECR Region                                   |
| IMAGE_REPOSITORY_URL   | AWS ECR Image Repository URL                     |
| IMAGE_TAG              | Docker Image Tag (default: random hash)          |
| IMAGE_TAG_DEFAULT      | Docker Image Tag Default  (default: latest)      |
| PATH_DOCKERFILE        | Dockerfile Path (default: ./Dockerfile)          |
| DOCKER_ARCHITECTURE    | Docker Architecture (default: linux/amd64)       |

## Example Usage

```yaml
- name: diomalta/aws-ecr-push
  uses: diomalta/aws-ecr-push@v1.0.8
  env:
    AWS_ECR_REGION: ${{ secrets.AWS_ECR_REGION }}
    AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
    AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
    IMAGE_REPOSITORY_URL: ${{ secrets.IMAGE_REPOSITORY_URL }}
```
