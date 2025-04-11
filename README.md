# prototype-docker-lamp

A simple Docker-based boilerplate for running a local LAMP-like environment: **Nginx + PHP-FPM + MySQL**, with support for HTTP and HTTPS. All actions are controlled via the `Makefile` — fast, convenient, and reproducible.

## Stack

- Nginx (handles HTTP/HTTPS requests)
- PHP-FPM (executes PHP code)
- MySQL (database engine)
- Docker & Docker Compose
- Makefile to orchestrate everything

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

## License

This project is licensed under the [MIT License](LICENSE)  
© 2025 Virtual Web Studio
