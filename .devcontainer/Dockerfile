FROM nvidia/cuda:12.4.1-devel-ubuntu20.04 AS cuda
SHELL ["/bin/bash", "-c"]
# get nvcc version
RUN nvcc --version

# install curl and git
RUN apt-get update && apt-get install -y curl sudo git && apt-get clean && rm -rf /var/lib/apt/lists/*

# create vscode user
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd -s /bin/bash --uid $USER_UID --gid $USER_GID -m $USERNAME
# allow vscode user to run elevated commands without password prompt
RUN mkdir -p /etc/sudoers.d && echo "$USERNAME ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/01-$USERNAME

# install gcc
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends gcc

USER $USERNAME

# install rust and cargo
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y && source $HOME/.cargo/env && export PATH="$HOME/.cargo/bin:$PATH"

# install hvm
RUN $HOME/.cargo/bin/cargo install hvm && $HOME/.cargo/bin/hvm --version

# install bend
RUN $HOME/.cargo/bin/cargo install bend-lang && $HOME/.cargo/bin/bend --version

# set PATH
ENV PATH="/usr/local/cuda/bin:$HOME/.cargo/bin:$PATH"