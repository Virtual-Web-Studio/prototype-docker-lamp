# prototype-docker-lamp

A simple Docker-based boilerplate for running a local LAMP-like environment: **Nginx + PHP-FPM + MySQL**, with support for HTTP and HTTPS. All actions are controlled via the `Makefile` — fast, convenient, and reproducible.

> 📦 This is a finalized prototype. The current version is considered **stable and complete** for local LAMP development.
> Future updates will focus on internal improvements and developer experience — no new services will be added.

## Stack

- Nginx (handles HTTP/HTTPS requests)
- PHP-FPM (executes PHP code)
- MySQL (database engine)
- Docker & Docker Compose
- Makefile to orchestrate everything

## 🧪 Using This Project as a Base (Self-Hosted / GitLab / Standalone)

If you're using GitLab or want to start your own project based on this one, you can fully decouple it from GitHub.

### ✅ Steps to Use as a Standalone Template

1. **Clone this project from GitHub (only once):**

```bash

git clone https://github.com/Virtual-Web-Studio/prototype-docker-lamp.git your-project-name
cd your-project-name
```
2. Remove the GitHub remote and history (start fresh):

```bash

rm -rf .git
git init
git add .
git commit -m "Initial commit based on prototype-docker-lamp"
```

3. Push to your GitLab repository:
```bash

git remote add origin https://gitlab.com/your-username/your-project-name.git
git push -u origin main
```
4. ✅ Done!
   Your new repository is now independent, and you can continue developing without linking back to GitHub.

## Quick Start

```
make up         # Starts the project  
make down       # Stops and removes containers  
make logs       # Shows container logs  
make restart    # Restarts all containers
```

After startup, access your site at:  
http://localhost  
https://localhost *(self-signed certificate)*

## Project Structure

```
.
├── docker/
│   ├── nginx/
│   ├── php/
│   └── mysql/
├── app/
│   ├── public/         # Web root directory
├── Makefile
├── docker-compose.yml
└── LICENSE
```

## Changelog

See [CHANGELOG.md](CHANGELOG.md) for version history and notable changes.

## Contributing

We welcome contributions from the community!

Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on how to get started.

## License

This project is licensed under the MIT License  
© 2025 Virtual Web Studio

