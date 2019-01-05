# Single container automated deployment workflow

_Repo contains code from the single container, automated deployment workflow from
Docker and Kubernetes: The Complete Guide_

## Workflow

1. Dev image used with volumes for local development and testing _(docker-compose
   used to simplify mapping ports and volumes for docker run command)_
2. Multi-step prod image with nginx used for app deployment
3. Travis used to run tests and deploy to AWS Beanstalk
4. AWS Beanstalk running in web environment serves application

## Notes

See the following files for addl notes

- [Dockerfile.dev](./Dockerfile.dev)
- [Dockerfile](./Dockerfile)
- [.travis.yml](./.travis.yml)

- The production image doesn't run tests, which makes sense because they are run
  as part of the Travis workflow