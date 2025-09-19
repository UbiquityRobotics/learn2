    # Ubiquity Robotics Documentation

    This branch ('gh-pages') is for deploying the website to GitHub Pages.
    **Do not manually change anything here** without consulting to the main repository maintainer.

    The content in this branch is what gets deployed to the live website.

    ## Structure
    - The main landing page is at  in the root, which redirects to the latest documentation version.
    - The latest version is `jazzy`, served from the folder `jazzy/`. 
    - Other versions are stored in their own folders (e.g., `/version-name/`), each with its own .

    ## Build Process
    The documentation is automatically built and deployed by the  script, which pushes updates to the  branch.

