#!/bin/bash

# Check if Cargo is installed
if ! command -v cargo &>/dev/null; then
    echo "Cargo is not installed. Installing Rust..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    source $HOME/.cargo/env
fi

# Print Cargo version
cargo_version=$(cargo --version)
echo "Cargo version: $cargo_version"

# Set default Rust toolchain
rustup default stable

# Clone the exa repository
if [ ! -d "exa" ]; then
    echo "Cloning exa repository..."
    git clone https://github.com/ogham/exa.git
fi

# Change into the exa directory
cd exa

# Build exa using Cargo
echo "Building exa..."
cargo build --release
if [ $? -ne 0 ]; then
    echo "Error: Failed to build exa."
    exit 1
fi

# Make the binary executable
chmod +x target/release/exa

# Move the binary to a directory in your PATH
if [ ! -w "/usr/local/bin" ]; then
    echo "You don't have write permissions to /usr/local/bin."
    echo "You may need to run this script with sudo."
    exit 1
fi

sudo mv target/release/exa /usr/local/bin/

echo "exa has been successfully built and installed."

