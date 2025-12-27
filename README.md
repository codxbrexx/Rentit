# Renit - Modern Rental Platform

Renit is a full-stack rental marketplace platform designed to facilitate renting homes, hotels, vehicles, and equipment. It features a modern, responsive frontend and a robust backend API.

## 🚀 Tech Stack

### Frontend
- **Framework**: [Next.js 14](https://nextjs.org/) (App Directory)
- **Language**: TypeScript
- **Styling**: [Tailwind CSS](https://tailwindcss.com/)
- **Icons**: Lucide React
- **State/Data**: React Hooks, Fetch

### Backend
- **Framework**: [NestJS](https://nestjs.com/)
- **Language**: TypeScript
- **Database**: PostgreSQL (via TypeORM)
- **Authentication**: JWT (JSON Web Tokens)

## 🛠️ Prerequisites

Before you begin, ensure you have the following installed:
- [Node.js](https://nodejs.org/) (v18 or higher)
- [npm](https://www.npmjs.com/) (v9 or higher)

## ⚡ Quick Start

We have provided a convenient script to set up the entire project (root, backend, and frontend) in one go.

1.  **Clone the repository**:
    ```bash
    git clone https://github.com/codxbrexx/RentIt.git
    cd RentIt
    ```

2.  **Run the setup script**:
    ```bash
    ./setup.sh
    ```
    This script will:
    - Install root dependencies.
    - Install Backend dependencies.
    - Set up the Backend environment file (`.env`).
    - Install Frontend dependencies.

3.  **Start the application**:
    ```bash
    npm run dev
    ```
    - **Frontend**: [http://localhost:3000](http://localhost:3000)
    - **Backend API**: [http://localhost:4000](http://localhost:4000)

## 🔧 Manual Setup

If you prefer to set things up manually, follow these steps:

### 1. Root Setup
Install the root dependencies (needed to run both servers concurrently):
```bash
npm install
```

### 2. Backend Setup
```bash
cd backend
npm install
cp .env.example .env  # Configure your environment variables in .env
cd ..
```

### 3. Frontend Setup
```bash
cd frontend
npm install
cd ..
```

### 4. Running the Project
From the root directory, run:
```bash
npm run dev
```

## 📂 Project Structure

```
renit/
├── backend/            # NestJS Backend Application
│   ├── src/            # Source code
│   └── ...
├── frontend/           # Next.js Frontend Application
│   ├── src/            # Source code
│   └── ...
├── package.json        # Root configuration & scripts
├── setup.sh            # Automated setup script
└── README.md           # Project documentation
```

## 🤝 Contributing

1.  Fork the repository.
2.  Create a feature branch (`git checkout -b feature/amazing-feature`).
3.  Commit your changes (`git commit -m 'Add some amazing feature'`).
4.  Push to the branch (`git push origin feature/amazing-feature`).
5.  Open a Pull Request.

---
&copy; 2025 Renit. All rights reserved.
