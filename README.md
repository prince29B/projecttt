# Salesforce CI/CD Pipeline

This repository uses GitHub Actions to automate Salesforce deployments and code validation.

---

## 🌳 Branching Strategy

- **main**: Stable, production-ready branch. All deployments originate here.
- **feature/\***: For new features or bug fixes. Merge into `main` via Pull Request (PR).
- **PRs**: All changes must be validated by the CI pipeline before merging.

---

## 🔄 CI/CD Flow Diagram

graph TD
A[Feature Branch] -->|Pull Request| B[CI: Validate Deployment & Tests]
B -->|Checks Pass| C[Merge to main]
C --> D[CI: Deploy to UAT/Production]


**Summary:**
1. Open a PR to `main` to trigger validation (deployment check, Apex tests, code quality).
2. On merge to `main`, deployment to UAT/Production is automatically triggered.

---

## 🛠️ Troubleshooting Steps

- **Authentication Issues**
  - Ensure all required GitHub Secrets (`SFDX_JWT_AUTH_KEY`, `SFDX_CLIENT_ID`, `SFDX_DEVHUB_USERNAME`, `SFDX_PROD_USERNAME`) are set and valid.

- **Deployment Failures**
  - Review the Actions workflow logs for errors.
  - Check for missing or invalid metadata in `force-app` or `manifest/package.xml`.

- **Code Quality/Test Failures**
  - Review PMD, ESLint, and Prettier outputs in the logs.
  - Run tests and linters locally to resolve issues before pushing.


