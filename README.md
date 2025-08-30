# Gitlab

[back](../README.md)

## CLI

```bash
# create project
git push --set-upstream git@gitlab.com:alyvusal/$(git rev-parse --show-toplevel | xargs basename).git $(git rev-parse --abbrev-ref HEAD)
```

Exmaples

- [Multi environment deployment with tofu, security scanning, terraform-docs, auto commit](./examples/multi-env-deployment-with-tofu/)
- [k8s agent example](./examples/k8s-agent/)
- [Docker build](./examples/docker-build.yml)
- [Automating tag adding after merge](./examples/autodate-tag.gitlab-ci.yml)

## REFERENCE

- [Workshop](https://gitlab-for-eks.awsworkshop.io/)
