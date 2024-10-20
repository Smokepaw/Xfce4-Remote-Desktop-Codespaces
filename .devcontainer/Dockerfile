FROM ubuntu:latest

# Install necessary packages and tools
RUN apt-get update && apt-get install -y \
    software-properties-common \
    sudo \
    curl \
    wget \
    git \
    lsb-release \
    xfce4 \
    xfce4-goodies \
    locales \
    && apt-get clean \
    && mkdir -p ~/.vnc

# Set the locale
RUN locale-gen en_US.UTF-8 && \
    update-locale LANG=en_US.UTF-8

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Install Bash-completion for better command line experience
RUN apt-get install -y bash-completion

# Clone the noVNC repository into the current directory
RUN git clone https://github.com/novnc/noVNC.git ./noVNC

# Set the default shell to bash
SHELL ["/bin/bash", "-c"]

# Add color support to the bash prompt
RUN echo "export PS1='\\[\\e[1;32m\\]\\u@\\h:\\[\\e[1;34m\\]\\w\\[\\e[0m\\]\\$ '" >> ~/.bashrc && \
    echo "alias ll='ls -la --color=auto'" >> ~/.bashrc && \
    echo "alias grep='grep --color=auto'" >> ~/.bashrc && \
    echo "alias diff='diff --color=auto'" >> ~/.bashrc && \
    echo "alias cls='clear'" >> ~/.bashrc


# Set execute permissions for the scripts
RUN chmod +x /workspaces/Xfce4-Remote-Desktop-Codespaces/setup.sh /workspaces/Xfce4-Remote-Desktop-Codespaces/setup2.sh /workspaces/Xfce4-Remote-Desktop-Codespaces/start.sh /workspaces/Xfce4-Remote-Desktop-Codespaces/start_vnc.sh

# Expose ports for noVNC
EXPOSE 6080 6081

# Default command to run when the container starts
CMD ["bash", "-c", "echo 'kept for educational purposes!' && exec bash"]
