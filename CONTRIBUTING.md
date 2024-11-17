# Contributing guidelines to Hangout

We appreciate your interest in contributing to Hangout Storage Service! This guide outlines the process for submitting pull requests and becoming a contributor.

## Before You Contribute
* **Sign the Contributor License Agreement (CLA):** All contributions require signing the CLA. You can find the agreement [here](https://gist.github.com/opticSquid/9739d0fe0ae090f4dd9c124b9a3dac8c). By signing the CLA, you agree to the terms under which your contributions will be distributed.

## Getting Started
1. **Fork the Repository:** Create a fork of the repository by clicking the "Fork" button on the GitHub repository page. This creates a copy of the code in your own account.
2. **Clone Your Fork:** Clone your forked repository to your local machine using Git.
3. **Create a Branch:** Create a new branch for your changes. It's recommended to use a descriptive branch name that reflects your contribution (e.g., `fix-bug-in-feature-x`). There are some predefined branch naming patterns to types of changes which should be followed
   - `docs/<short-description-of-what-changes-in-branch does>` for any documentation related changes
   - `feature/<short-description-of-what-changes-in-branch does>` for addition of new features
   - `fix/<short-description-of-what-changes-in-branch does>` for fixing existing bugs
   - `hotfix/<short-description-of-what-changes-in-branch does>` this is for critical bug fixes to production. This is the only branch that can directly raise a PR to `main` branch.
   - For other branches they should raise a PR to `dev` branch first and after every sprint all accumulated changes will be pushed to production with a PR to `main` branch followed by a release. 
5. **Make Changes:** Make your changes to the codebase.
6. **Commit Your Changes:** Commit your changes with a clear and concise commit message. Each commit message should describe what you changed and why. (e.g., "Fixed typo in documentation" or "Added support for feature Y").
7. **Push Your Changes:** Push your changes to your forked repository on GitHub.

## Submitting a Pull Request
1. **Open a Pull Request:** In your GitHub repository, navigate to your branch and click on the "Pull requests" tab. Click on the "New pull request" button.
2. **Create Pull Request:**  Choose the branch you want to merge your changes into the `dev`  and provide a title and description of your changes. Be as detailed as possible in the description, explaining what your change does and why it's necessary.
3. **Address Feedback:** We may request changes to your pull request before merging it. Address any feedback as soon as possible and update your pull request accordingly.

## Code Style and Commit Messages
* **Follow the existing code style:** We maintain a consistent code style throughout the project. Please try your best to follow the existing conventions. If you're unsure, feel free to ask!
* **Use clear and descriptive commit messages:**  Commit messages should be clear and concise, explaining what you changed and why.

## Additional Notes
* **Testing:**  We encourage you to add unit tests for any new features or bug fixes you contribute.
* **Documentation:** If your contribution requires changes to the documentation, please update the relevant documentation files.

We are grateful for your contributions! Don't hesitate to reach out if you have any questions.