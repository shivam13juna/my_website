# specify the node base image with your desired version node:<version>
FROM node:16

# Copy the current directory contents into the container at /app and set the working directory to /app
COPY . /app
WORKDIR /app

# Install any needed packages specified in package.json
RUN npm install

RUN npm install parcel --save-dev

# replace this with your application's default port
EXPOSE 8888

# Run app.py when the container launches
CMD ["npm", "start"]

