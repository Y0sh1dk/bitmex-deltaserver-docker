# Start from official image
FROM node

# Make directories
RUN mkdir -p /home/bitmex-deltaserver-docker
WORKDIR  /home/bitmex-deltaserver-docker

# Copy code
COPY ./delta-server /home/bitmex-deltaserver-docker

# Make startup script executable
RUN chmod +x ./start.sh

# Run startup script
CMD ["./start.sh"]