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

## Changelog

See [CHANGELOG.md](CHANGELOG.md) for version history and notable changes.

## Contributing

We welcome contributions from the community!

Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on how to get started.

## License

This project is licensed under the MIT License  
© 2025 Virtual Web Studio

