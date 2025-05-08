FROM ubuntu:22.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Update and install basic packages
RUN apt-get update && apt-get install -y \
    curl \
    vim \
    git \
    wget

WORKDIR /root

COPY ./httrack-3.49.2.tar.gz /root/httrack-3.49.2.tar.gz

RUN tar -xzf httrack-3.49.2.tar.gz

WORKDIR /root/httrack-3.49.2

# Install GCC
RUN apt-get update && apt-get install -y \
    gcc \
    g++ \
    make

# Install zlib development library
RUN apt-get update && apt-get install -y \
    zlib1g-dev

# Install file command
RUN apt-get update && apt-get install -y \
    file

# Install OpenSSL development libraries
RUN apt-get update && apt-get install -y \
    libssl-dev

# Set library path for HTTrack
ENV LD_LIBRARY_PATH="/usr/local/lib"
ENV LD_LIBRARY_PATH="/usr/local/lib:$LD_LIBRARY_PATH"

# Fix line endings and run configure
RUN ./configure

RUN make

RUN make install

# Create output directory
RUN mkdir -p /root/httrack-3.49.2/output

# Set default command
CMD ["bash"]
