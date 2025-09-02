# -*- coding: utf-8 -*-
#
# Configuration file for the Sphinx documentation builder.

# Sphinx configuration for Ubiquity Robotics documentation.
# Inspired by common Read the Docs + GitHub Pages workflows; fully rewritten.

import os
import sys

# -- Path setup --------------------------------------------------------------
sys.path.insert(0, os.path.abspath('../src'))

# -- Project information -----------------------------------------------------
project = 'Ubiquity Robotics Documentation'
copyright = '2025, Ubiquity Robotics'
author = 'Pavel for now'
version = ''
release = '1.0.0'

# -- General configuration ---------------------------------------------------
extensions = [
    'sphinx_rtd_theme',
    'sphinx.ext.viewcode',
    'sphinx.ext.githubpages',
]

templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
language = None 
exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']
pygments_style = None

# -- HTML output -------------------------------------------------------------
html_theme = 'sphinx_rtd_theme'
html_static_path = ['_static']

# -- RTD lower-left menu setup -----------------------------------------------
try:
    html_context
except NameError:
    html_context = dict()

html_context['display_lower_left'] = True

# Repo and environment info
REPO_NAME = os.environ.get('REPO_NAME', '')
OWNER = os.environ.get('OWNER', '') 

# Use ALL_VERSIONS from workflow environment
all_versions_env = os.environ.get("ALL_VERSIONS", "")
ALL_VERSIONS = [v.strip() for v in all_versions_env.splitlines() if v.strip()]

current_version = os.environ.get('CURRENT_BRANCH') or (ALL_VERSIONS[0] if ALL_VERSIONS else 'main')
html_context['current_version'] = current_version
html_context['version'] = current_version

# Base URL for GitHub Pages

# Get the custom domain 
CUSTOM_DOMAIN = os.environ.get("CUSTOM_DOMAIN", "")

# If the DOMAIN exists in the workflow then use it
if CUSTOM_DOMAIN:
    GITHUB_PAGES_BASE = f"https://{CUSTOM_DOMAIN}"
else:
    GITHUB_PAGES_BASE = f"https://{OWNER}.github.io/{REPO_NAME}"# Set versions for selector with absolute URLs
html_context['versions'] = [
    (v, f"{GITHUB_PAGES_BASE}/{v}/") for v in ALL_VERSIONS
]

# project_name = project.replace(' ', '_')

html_context['current_language'] = ''
html_context['language'] = ''

# -- "Edit on GitHub" links --------------------------------------------------
html_context['display_github'] = True
html_context['github_user'] = ''
html_context['github_repo'] = REPO_NAME
html_context['github_version'] = f'{current_version}/docs/'


