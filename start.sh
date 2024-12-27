#!/bin/bash

docker-compose up -d
sleep 5

LOGS=$(docker logs spotify-auth-proxy 2>&1)

API_KEY=$(echo "$LOGS" | grep "APIKey:" | awk '{print $2}')
AUTH_URL=$(echo "$LOGS" | grep "Auth URL:" | awk '{print $3}')

if [ -z "$API_KEY" ] || [ -z "$AUTH_URL" ]; then
    echo "Error: Failed to extract APIKey or Auth URL from logs."
    echo "Logs:"
    echo "$LOGS"
    exit 1
fi

echo "spotify_api_key = \"$API_KEY\"" > src/terraform.tfvars
echo "Saved API Key to successfully!"
echo "Your Spotify API Key: $API_KEY"

echo "Your Spotify Auth URL: $AUTH_URL"
echo "Connecting to Authorization URL..."

xdg-open "$AUTH_URL" 2>/dev/null || open "$AUTH_URL" 2>/dev/null || echo "Please open the following URL in your browser: $AUTH_URL"

echo "Setup complete!"