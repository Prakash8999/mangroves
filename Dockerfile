# Use the official Node image with the specified version
FROM node:15.14.0

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and yarn.lock to the working directory
COPY package.json yarn.lock ./

# Install dependencies using Yarn
RUN yarn install

# Copy the entire project to the working directory
COPY . .

# Expose the port on which your application will run (adjust if needed)
EXPOSE 3000

# Command to run your application
CMD ["yarn", "start"]
