#!/bin/bash

echo "Starting deployment..."

echo "Pulling latest code..."
git pull origin main

echo "Installing frontend dependencies.."
cd frontend
npm install

echo "Building React frontend.."
npm run build

cd ..

echo "Setting up backend.."
cd backend

python -m venv venv
source venv/bin/activate

pip install -r requirements.txt

echo "Starting backend server.."
python app.py

echo "Deployment completed!"