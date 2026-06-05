Standard Step-by-Step WorkflowRegardless of the tool you use, 

your overall terminal sequence should look like this:

Create and switch to
your feature branch:bashgit checkout -b feature-branch-name

Make your changes, then stage and commit them:bashgit add .
git commit -m "Fix bugs and add features"

Push the branch to your remote repository:bashgit push --set-upstream origin feature-branch-name

Run your platform's CLI command:bashgh pr create --fill
