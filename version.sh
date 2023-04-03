#!/bin/bash

set -e

# Define environment variables
export DOCKER_IMAGE=my-image
export LATEST_TAG=$(git describe --abbrev=0 --tags 2>/dev/null || echo "v0.0.0")
export SEMVER_REGEX="^v([0-9]+)\.([0-9]+)\.([0-9]+)$"

# Parse the latest tag to get the major, minor, and patch version numbers
if [[ "$LATEST_TAG" =~ $SEMVER_REGEX ]]; then
    MAJOR="${BASH_REMATCH[1]}"
    MINOR="${BASH_REMATCH[2]}"
    PATCH="${BASH_REMATCH[3]}"
else
    MAJOR=0
    MINOR=0
    PATCH=0
fi

# Increment the patch version number to create the new tag
NEW_PATCH=$((PATCH+1))
NEW_TAG="v$MAJOR.$MINOR.$NEW_PATCH"

# Create the previous tag
PREV_PATCH=$((PATCH-1))
PREV_TAG="v$MAJOR.$MINOR.$PREV_PATCH"

# Tag the Docker image with the new and previous tags
docker tag $DOCKER_IMAGE $DOCKER_IMAGE:$NEW_TAG
docker tag $DOCKER_IMAGE $DOCKER_IMAGE:$PREV_TAG

# Print the new and previous tags
echo "New tag: $NEW_TAG"
echo "Previous tag: $PREV_TAG"

