FROM ubuntu:latest

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Update and install basic packages
RUN apt-get update && apt-get install -y \
    curl \
    vim \
    git \
    && apt-get clean

# Install GCC
RUN apt-get update && apt-get install -y \
    gcc \
    g++ \
    make \
    && apt-get clean

# Install zlib development library
RUN apt-get update && apt-get install -y \
    zlib1g-dev \
    && apt-get clean

# Install file command
RUN apt-get update && apt-get install -y \
    file \
    && apt-get clean

# Install OpenSSL development libraries
RUN apt-get update && apt-get install -y \
    libssl-dev \
    && apt-get clean

# Set library path for HTTrack
ENV LD_LIBRARY_PATH="/usr/local/lib"
ENV LD_LIBRARY_PATH="/usr/local/lib:$LD_LIBRARY_PATH"

COPY /httrack-3.49.2 /httrack-3.49.2

WORKDIR /httrack-3.49.2

RUN ./configure

RUN make

RUN make install

# Set default command
CMD ["bash"]
