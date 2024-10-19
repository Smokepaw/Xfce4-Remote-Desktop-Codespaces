FROM ubuntu:latest


# Install necessary packages
RUN apt-get update && apt-get install -y \
    xfce4 xfce4-goodies git \
    && apt-get clean \
    && mkdir -p ~/.vnc

# Clone the noVNC repository
RUN git clone https://github.com/novnc/noVNC.git /noVNC

# Set the default shell to bash
SHELL ["/bin/bash", "-c"]

# Copy the necessary scripts into the container
COPY ./setup.sh ./setup2.sh ./start.sh ./start_vnc.sh /usr/local/bin/

# Set execute permissions for the scripts
RUN chmod +x /usr/local/bin/setup.sh /usr/local/bin/setup2.sh /usr/local/bin/start.sh /usr/local/bin/start_vnc.sh

# Expose ports for noVNC
EXPOSE 6080 6081

# Copy entrypoint script into the container
COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh

# Make it executable
RUN chmod +x /usr/local/bin/entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

# Default command to run when the container starts
CMD ["bash", "-c", "echo 'kept for educational purposes!' && exec bash"]
