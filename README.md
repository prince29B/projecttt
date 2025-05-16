# Salesforce CI/CD Pipeline

Automated Salesforce deployments and code checks using GitHub Actions.

---

## Workflow Overview

- **Pull Requests to `main`**

  - Code is validated in a scratch org.
  - Deployment is checked.
  - If all checks pass, GitHub marks the PR as ready to merge.

- **Pushes to `main` (after PR merge)**
  - Code is deployed to production.
  - Post-deployment tests run.

> **Note:**  
> Merging is controlled by GitHub branch protection rules, not by a workflow step.  
> Set up branch protection to require this workflow to pass before merging.

---

## Branching Strategy

- **main**: Production code only.
- **feature/**: Branch from `main` for changes.
- All changes go through PRs to `main`.

---

## Troubleshooting

- **Scratch org issues**: Check config and DevHub credentials.
- **Deployment errors**: Review logs in GitHub Actions.
- **Auth problems**: Verify GitHub secrets and Salesforce connected app.

Credentials are stored in GitHub Secrets.
