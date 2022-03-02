FROM node:latest

# Add a work directory
WORKDIR /app
# Cache and Install dependencies

COPY yarn.lock .
RUN yarn install
# Copy app files

# Expose port
EXPOSE 3000
# Start the app
CMD [ "yarn", "run" ]