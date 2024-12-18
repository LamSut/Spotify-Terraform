# this file is optional 
# you can manually run the Docker command as referenced in the README.md

# how to build & run docker container with this file:
# step 1: modify your environment variables
# step 2: run command $ docker build -t spotify-auth-proxy .
# step 3: run command $ docker run --rm -it -p 27228:27228 spotify-auth-proxy

# image
FROM ghcr.io/conradludgate/spotify-auth-proxy

# spotify environment variables (remember to modify it)
ENV SPOTIFY_CLIENT_ID=your_client_id
ENV SPOTIFY_CLIENT_SECRET=your_client_secret

# default port for spotify auth proxy
EXPOSE 27228

# include the environment file
CMD ["sh", "-c", "env $(cat /app/.env | xargs) && ./entrypoint"]
