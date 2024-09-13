# Build the Docker image
build:
    docker-compose build

# Start the Docker containers
up:
    docker-compose up -d

# Stop the Docker containers
down:
    docker-compose down

# Show the logs for the Docker containers
logs:
    docker-compose logs -f

# Run tests or other commands (adjust as needed)
test:
    docker-compose run --rm react-native npm test

# Rebuild and restart containers
rebuild:
    just down
    just build
    just up
