docker build -t ruby-debug-tutorial . \
  && docker run -it --rm -v .:/app ruby-debug-tutorial
