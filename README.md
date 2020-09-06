# GitHub Actions Workflows

All of our workflows by type, and git hooks to update the workflow file
pre-commit.

To use :
## Install pre-commit
```
curl https://pre-commit.com/install-local.py | python3 -
```

## Adding pre-commit hooks to a repo
```
cd $my_repo
pre-commit sample-config > .pre-commit-config.yaml
```

Then you can add our github-actions hooks to the .pre-commit file :
```
- repo: https://github.com/SineQuaNonSoftware/workflows/
  rev: master
  hooks:
    - id: terraform-github-actions
```

We currently have :
```
terraform-github-actions
puppet-github-actions
puppet-forge-github-actions
rails-github-actions
```

## Updating hooks
```
pre-commit autoupdate
```

## Installing the hooks for an already hooked repo
Install all the hooks
```
pre-commit install
```

## Adding new hooks
[List of available hooks](https://pre-commit.com/hooks.html)
[Adding existing hooks](https://pre-commit.com/#plugins)
[Hook creation](https://pre-commit.com/#new-hooks)
