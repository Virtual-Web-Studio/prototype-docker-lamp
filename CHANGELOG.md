# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),  
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [0.9.0] - 2025-04-12

### Added
- Initial Docker setup: Nginx + PHP-FPM + MySQL
- HTTPS support with self-signed certificate
- Makefile with basic commands (`up`, `down`, `restart`, `logs`, etc.)
- Xdebug integration with PHPStorm (with automatic discovery)
- PHP container built with non-root `app` user and essential extensions (`pdo_mysql`, `intl`, `mysqli`, `opcache`)
- Port configuration and support for multiple project instances on the same host
- Makefile command to publish tagged releases to GitHub
- Nginx configuration: all routes go through `index.php`, except static assets
