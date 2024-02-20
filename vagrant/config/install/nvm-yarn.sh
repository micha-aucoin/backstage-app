#!/bin/bash
# NVM (Node Version Manager) and Node.js installation script

# Set NVM and Node.js version
NVM_VERSION="0.39.7"  # Replace with your desired NVM version
NODE_VERSION="14.17.3"  # Replace with your desired Node.js version

# Check if NVM is installed and install it if not
if ! command -v nvm &> /dev/null; then
    echo "Installing NVM version $NVM_VERSION..."
    curl -o- "https://raw.githubusercontent.com/nvm-sh/nvm/v${NVM_VERSION}/install.sh" | bash
    export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
#     echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"' >> ~/.bashrc
#     echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.bashrc
# else
    echo "NVM is already installed."
fi

# Install Node.js using NVM
if command -v node &> /dev/null; then
    echo "Node.js version $(node --version) installed successfully."
else
    echo "Installing Node.js --lts via NVM..."
    nvm install 18
fi

# Check if Yarn is already installed
if command -v yarn &> /dev/null; then
    echo "Yarn is already installed."
else
    # Install Yarn using npm
    echo "Installing Yarn..."
    npm install --global yarn

    # Verify Yarn installation
    if command -v yarn &> /dev/null; then
        echo "Yarn installed successfully. Version: $(yarn --version)"
    else
        echo "Yarn installation failed."
    fi
fi
