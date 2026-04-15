#!/bin/bash

echo "Setting up AI Career Path Architect..."

# Create virtual environment
echo "Creating virtual environment..."
python -m venv venv

# Activate virtual environment
echo "Activating virtual environment..."
if [ "$(uname)" == "Darwin" ] || [ "$(uname)" == "Linux" ]; then
    source venv/bin/activate
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ] || [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
    venv\Scripts\activate
fi

# Install dependencies
echo "Installing Python dependencies..."
pip install -r requirements.txt

# Setup environment
echo "Setting up environment..."
cp .env.example .env
echo "Please edit .env file with your values"

echo "Setup complete!"
echo "Run 'python manage.py runserver' to start the backend"