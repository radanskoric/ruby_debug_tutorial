FROM ruby:3.3

# Set the working directory
WORKDIR /app

# Run the tutorial when the container starts
CMD ["ruby", "start.rb"]
