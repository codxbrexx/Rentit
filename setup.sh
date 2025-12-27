#!/bin/bash

# Renit Project Setup Script

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}Starting Renit Project Setup...${NC}"

# Check for Node.js
if ! command -v node &> /dev/null; then
    echo -e "${RED}Node.js is not installed. Please install Node.js (v18+) first.${NC}"
    exit 1
fi

# Check for npm
if ! command -v npm &> /dev/null; then
    echo -e "${RED}npm is not installed. Please install npm first.${NC}"
    exit 1
fi

echo -e "${GREEN}✓ Node.js and npm found.${NC}"

# Root Dependencies
echo -e "\n${BLUE}Installing Root Dependencies...${NC}"
npm install
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ Root dependencies installed.${NC}"
else
    echo -e "${RED}Failed to install root dependencies.${NC}"
    exit 1
fi

# Backend Setup
echo -e "\n${BLUE}Setting up Backend...${NC}"
cd backend

# Copy .env if it doesn't exist
if [ ! -f .env ]; then
    if [ -f .env.example ]; then
        cp .env.example .env
        echo -e "${GREEN}✓ Created backend .env from example.${NC}"
    else
        echo -e "${RED}Warning: backend/.env.example not found.${NC}"
    fi
else
    echo -e "${GREEN}✓ Backend .env already exists.${NC}"
fi

echo -e "${BLUE}Installing Backend Dependencies...${NC}"
npm install
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ Backend dependencies installed.${NC}"
else
    echo -e "${RED}Failed to install backend dependencies.${NC}"
    exit 1
fi
cd ..

# Frontend Setup
echo -e "\n${BLUE}Setting up Frontend...${NC}"
cd frontend

echo -e "${BLUE}Installing Frontend Dependencies...${NC}"
npm install
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ Frontend dependencies installed.${NC}"
else
    echo -e "${RED}Failed to install frontend dependencies.${NC}"
    exit 1
fi
cd ..

echo -e "\n${GREEN}==========================================${NC}"
echo -e "${GREEN}       Setup Completed Successfully!      ${NC}"
echo -e "${GREEN}==========================================${NC}"
echo -e "\nTo start the project, run:"
echo -e "${BLUE}npm run dev${NC}"
