# Ubiquity Robotics Documentation
The content in this branch is what gets deployed to the live website.

**DO NOT MANUALLY CHANGE ANYTHING HERE** without consulting the main repository maintainer.

## Structure
- The main landing page is at  in the root, which redirects to the latest documentation version.
- The latest version is `jazzy`, served from the folder `jazzy/`. 
- Other versions are stored in their own folders (e.g., `/version-name/`), each with its own .
- The empty  file is required for the pages to show the rtd-theme. Without them the CSS will not be visible.
- The CNAME is a required file to REDIRECT these pages to our CUSTOM DOMAIN. 

## Build Process
The documentation is automatically built and deployed by the  script, which pushes updates to the  branch.
