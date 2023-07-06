#!/bin/bash

# Create a Python virtual environment
python3 -m venv venv

# Activate Python environment
source venv/bin/activate

# Install Django
pip3 install Django

# Bootstraps the django codebase
django-admin startproject csfevents

# As per https://www.django-rest-framework.org/#installation
pip3 install djangorestframework
pip3 install markdown       # Markdown support for the browsable API.
pip3 install django-filter  # Filtering support
pip3 install pytz           # Timezone support

# Freeze the requirements
cd csfevents
pip3 freeze > requirements.txt