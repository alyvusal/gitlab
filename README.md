# Gitlab

[back](../README.md)

## CLI

```bash
# create project
git push --set-upstream git@gitlab.com:alyvusal/$(git rev-parse --show-toplevel | xargs basename).git $(git rev-parse --abbrev-ref HEAD)
```

## REFERENCE

- [Workshop](https://gitlab-for-eks.awsworkshop.io/)
