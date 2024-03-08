# MariaDB MaxScale Docker Compose

This project contains a base Docker Compose configuration file to run adapted MaxScale and MariaDB containers. MaxScale is used as a proxy, and there is one master MariaDB container and one slave MariaDB container.

## Prerequisites

Before running this project, make sure you have the following installed:

- Docker
- Docker Compose

## Usage

1. Clone this repository to your local machine.
2. Navigate to the project directory.
3. Open a terminal and run the following command to start the containers:

  ```bash
  docker compose up -d
  ```

  This will start the MaxScale and MariaDB containers in the background.

4. To stop the containers, run the following command:

  ```bash
  docker compose down
  ```

## Configuration

The Docker Compose file (`compose.yml`) contains the configuration for the MaxScale and MariaDB containers. You can modify this file to suit your specific needs.