# Build the Docker image
build:
    docker-compose build

# Start the Docker containers
up:
    docker-compose up

# Stop the Docker containers
down:
    docker-compose down

# Show the logs for the Docker containers
logs:
    docker-compose logs -f

# Rebuild and restart containers
rebuild:
    just down
    just build
    just up

# Launch Emulator
test:
    docker-compose exec frontend npx react-native run-android