# Ubiquity Robotics Gen 6 Documentation

This repository contains the source files for the documentation by Ubiquity Robotics. It is built using [Sphinx](https://www.sphinx-doc.org/) and styled using the [Read the Docs](https://github.com/readthedocs/sphinx_rtd_theme) theme. The documentation is deployed via [Github Pages](https://pages.github.com/).

## Overview

The site hosts technical documentation for Ubiquity Robotics robots, covering hardware, usage guides, software images, and systems software. 

- Each branch corresponds to a version of the documentation.
- Development branches (suffix `-devel`) are used for testing changes before they are pushed to the main documentation. 
- Feature branches (prefix `feature/`) are ignored in the version selector and are used for working on specific updates or improvements.

## Deployment

The documentation is built and deployed automatically using GitHub Actions. The latest version is available at:

**[https://learn2.ubiquityrobotics.com/jazzy/](https://learn2.ubiquityrobotics.com/jazzy/)**

## Local Development

To build and run the documentation locally:

<!-- TODO: Add the right links and names for cloning the repository. -->
```bash
git clone https://github.com/UbiquityRobotics/learn2.git
cd learn2
git fetch --all
git branch -a

python3 -m venv venv # Run this only the first time you clone the repo.
source venv/bin/activate  # Windows: venv\Scripts\activate

# Install latest compatible dependencies:
pip install -r required_packages.txt # Run this only the first time you clone the repo

# Enter which version you want to see
git checkout [version_name]

# or
# git switch [version_name]    # git added the "git switch" command now to switch branches

# Get into docs directory
cd docs/

# Build the documentation 
make clean && make html 

# Open in browser
firefox _build/html/index.html

---- 
# (Optional - Requires sphinx-autobuild)
# pip install sphinx-autobuild

# run next command from inside docs directory:
sphinx-autobuild . _build/html # autobuilds the site on local save. It serves it locally on port 8000. 
# [sphinx-autobuild] Serving on http://127.0.0.1:8000


---- 
# (Optional local run) - Requires python server

# From root of repository:
cd docs/_build/html/

# Start the server
python3 -m http.server 8000 

# Now you can see the documentation at http://0.0.0.0:8000/
# of course this port can be also changed to a different number than 8000.

# NOTE: Locally you can only see a single version, and will not be able to switch between versions without switching the branch and re-building.


```

> **NOTE**: Some images will show locally some will not. This is because we are hosting on GitHub pages, GitHub may look for the pictures in some other place and the relative path might not work when deployed. This is the case when having multiple in-line pictures.


## Contributing

The easiest way to contribute to the documentation is by forking or cloning the repository.

### Branching Rules

- **Development branches**: All changes should be pushed to branches ending with `-devel`. 
- **Creating new versions**: Only create a new branch if you are adding a completely new version. These branches will appear in the deployed version selector. 
- **Updating existing versions**: Createa a feature branch from the corresponding `-devel` branch. Feature branches should follow this naming convention: 

```bash 

feature/[version]-[feature-name]

```

This ensures: 

1. The branch does not appear as a version in the deployed site. 
2. Others can easily see which version and feautre you are working on. 

Once your feature is ready, merge it into the respective `-devel` branch. 
After verifying everything works, it can then be merged into the actual version branch. 

> **IMPORTANT**: This workflow helps avoid conflicts, especially since some images or embeddings may render differently locally versus after deployment.

### Workflow for Contributing

Assuming you have already cloned the repository locally:

```bash

# Switch to the version's development branch
git switch [version_name]-devel

# Create a new feature branch
git checkout -b feature/[version_name]-[feature-name]

# Make your changes, then commit and push
git add .
git commit -m "Meaningful commit message here"
git push -u origin feature/[version_name]-[feature-name]

```

After pushing:

1. Open a pull request on GitHub to merge your feature branch into the correspnding `-devel` branch. 
2. Once merged, wait for the GitHub workflow to build and deploy your changes.
3. Verify the deployed site to ensure your changes appear correctly.
