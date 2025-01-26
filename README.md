# F1 Social Media Application

Welcome to **F1 Social Media**, a private social media network designed exclusively for Formula 1 fans! This application allows users to share posts, comment on content, and connect with other F1 enthusiasts. Whether you're discussing the latest race results, sharing your thoughts on team strategies, or connecting with like-minded fans, this platform is your go-to destination for all things F1.

---

## Table of Contents

1. [Features](#features)
2. [Technologies Used](#technologies-used)
3. [Installation Guide](#installation-guide)
4. [Running the Application](#running-the-application)
5. [Screenshots](#screenshots)
6. [Contributing](#contributing)
7. [License](#license)

---

## Features

- **User Authentication**:
  - Sign up, log in, and log out functionality.
  - Secure password management with Devise.

- **Posts**:
  - Create, edit, and delete posts.
  - Add captions, body text, and images to posts.
  - View posts from other users.

- **Images**:
  - Upload and display images in posts.
  - Responsive image grid layout.

- **User Profiles**:
  - View user profiles and posts.
  - Edit user profile information.

- **Responsive Design**:
  - Mobile-friendly and responsive layout using Tailwind CSS.

- **Turbo Integration**:
  - Fast, seamless navigation with Turbo.

---

## Technologies Used

- **Frontend**:
  - HTML, ERB (Embedded Ruby)
  - Tailwind CSS for styling
  - JavaScript (via Importmaps)

- **Backend**:
  - Ruby on Rails (v8.0.1)
  - Devise for authentication
  - Active Storage for image uploads

- **Database**:
  - SQLite (for development and testing)

- **Other Tools**:
  - Turbo for faster page navigation
  - Heroku (or any other platform) for deployment

---

## Installation Guide

Follow these steps to set up the F1 Social Media application on your local machine.

### Prerequisites

- Ruby (version 3.4.1)
- Rails (version 8.0.1)
- SQLite (version 3.x or higher)
- Node.js (for JavaScript runtime)
- Yarn (for managing JavaScript dependencies)

### Step 1: Clone the Repository

1. Open your terminal and navigate to the directory where you want to clone the project.
2. Run the following command to clone the repository:

   ```bash
   git clone https://github.com/EssamMohamedAbo-ElMkarem/social-media.git
   cd social-media
   ```

### Step 2: Install Dependencies

1. Install Ruby dependencies using Bundler:

   ```bash
   bundle install
   ```

2. Install JavaScript dependencies using Yarn:

   ```bash
   yarn install
   ```

### Step 3: Set Up the Database

1. Create the database:

   ```bash
   rails db:create
   ```

2. Run migrations to set up the database schema:

   ```bash
   rails db:migrate
   ```

3. (Optional) Seed the database with sample data:

   ```bash
   rails db:seed
   ```

### Step 4: Configure Environment Variables

1. Create a `.env` file in the root directory of the project.
2. Add the following environment variables (if needed):

   ```plaintext
   # Example environment variables
   SECRET_KEY_BASE=your_secret_key_base
   ```

---

## Running the Application

1. Start the Rails server:

   ```bash
   rails server
   ```

2. Open your browser and navigate to:

   ```plaintext
   http://localhost:3000
   ```

3. You should see the F1 Social Media homepage. Sign up or log in to start using the application.

---

## Screenshots

### Homepage


### Sign Up Page


### Login Page


### Posts Feed


### New Post Form


---

## Contributing

We welcome contributions to the F1 Social Media application! If you'd like to contribute, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bugfix:

   ```bash
   git checkout -b feature/your-feature-name
   ```

3. Commit your changes:

   ```bash
   git commit -m "Add your commit message here"
   ```

4. Push your branch to GitHub:

   ```bash
   git push origin feature/your-feature-name
   ```

5. Open a pull request and describe your changes.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

- Thanks to the Ruby on Rails community for their excellent documentation and resources.
- Special thanks to the creators of Tailwind CSS for making styling so much easier.
- Inspired by the passion of Formula 1 fans worldwide.

---

Enjoy using the F1 Social Media application! If you have any questions or feedback, feel free to open an issue or contact the maintainers. 🏎️

### Key Notes:
1. **Database**: SQLite is used for development and testing, as specified.
2. **Rails Version**: Updated to Rails 8.0.1.
3. **Ruby Version**: Updated to Ruby 3.4.1.
4. **Placeholder Images**: Replace the placeholder image paths with actual screenshots once available.
5. **Environment Variables**: Added an example for `SECRET_KEY_BASE` in case you need to configure additional environment variables.

Let me know if you need further adjustments! 🚀