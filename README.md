# Job Portal API
 
A Ruby on Rails backend application for managing users and their associated job applications. This API supports role-based access control with Admin and Candidate roles, and includes secure authentication using JWT.
 
## 🔧 Tech Stack
 
- **Ruby**: 3.0.0

- **Rails**: 7.1.5.1

- **Database**: PostgreSQL

- **Authentication**: Devise + JWT

- **Authorization**: Pundit

- **API Response**: Jbuilder
 
---
 
## 🚀 Features
 
- User registration and login with email & password

- Role-based access: `Admin` and `Candidate`

- Admin can:

  - View all users

  - View all job applications

- Candidates can:

  - View only their own data and job applications

- API returns JSON data

- Email and password validations

- Secure JWT authentication with denylist token strategy
 
---
 
## 📦 Getting Started
 
### 1. Clone the Repository
 
```bash

1. git clone https://github.com/your-username/job_portal_api.git
cd job_portal_api

2. Install Dependencies
bundle install

3. Database Setup
rails db:create
rails db:migrate

4. Run Seed data
rails db:seed 

5. Start the Server
rails server
The server runs at http://localhost:3000.

🔐 Authentication
The app uses JWT-based authentication. After logging in, you'll receive a JWT token which must be included in the headers of all authorized API requests.

Login Endpoint
bashCopyEditcurl -X POST http://localhost:3000/users/sign_in \
-H "Content-Type: application/json" \
-d '{"user": {"email": "admin@example.com", "password": "password"}}' 

The response will contain the token in the headers:
makefileCopyEditAuthorization: Bearer <your_token_here> 

📬 API Endpoints
1. Get Current User Details (with Job Applications)
bashCopyEditcurl -X GET http://localhost:3000/users/1 \
-H "Authorization: Bearer <your_token_here>" 

2. Admin Access to All Users
bashCopyEditcurl -X GET http://localhost:3000/users \
-H "Authorization: Bearer <admin_token_here>" 
