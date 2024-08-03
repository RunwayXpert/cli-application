#!/bin/bash

# Package name
PACKAGE_NAME="airport_manager"

echo "Removing existing dist directory..."
rm -rf dist

echo "Building the package..."
python3 setup.py sdist bdist_wheel

echo "Uninstalling the current package..."
pip uninstall -y $PACKAGE_NAME

echo "Installing the package locally..."
pip install dist/*.whl

echo "Package rebuilt and installed successfully."
