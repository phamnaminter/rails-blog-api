# Use the official Ruby image from the Docker Hub as a parent image
FROM ruby:3.2.3

# Install Node.js and Yarn (necessary for Rails applications)
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg -o /root/yarn-pubkey.gpg && apt-key add /root/yarn-pubkey.gpg
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y --no-install-recommends nodejs yarn

# Set the working directory in the container
WORKDIR /

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

# Install the gems specified in the Gemfile
RUN bundle install

# Copy the rest of the application code into the container
COPY . .

# Expose port 3000 for the Rails server
EXPOSE 3000

# Create a shell script for entrypoint
RUN chmod +x /entrypoint.sh

# Set the entrypoint to run the shell script
ENTRYPOINT ["/entrypoint.sh"]
