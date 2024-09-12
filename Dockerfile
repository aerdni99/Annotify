# Base Image
FROM node:16

# Install Dependencies
RUN apt-get update && apt-get install -y \
    openjdk-11-jdk \
    curl \
    wget \
    git \
    unzip \
    && rm -f /var/lib/apt/lists/*

# Install Android SDK
RUN mkdir /opt/android-sdk && cd /opt/android-sdk && wget https://dl.google.com/android/repository/commandlinetools-linux-7583922_latest.zip && unzip commandlinetools-linux-7583922_latest.zip

# Set environment variables for Android SDK
ENV ANDROID_SDK_ROOT /opt/android-sdk
ENV PATH ${PATH}:${ANDROID_SDK_ROOT}/cmdline-tools/latest/bin

# Accept Android SDK Licenses
RUN mkdir -p ~/.android && touch ~/.android/repositories.cfg && yes | sdkmanager --licenses

# Install SDK Packages
RUN npm install -g react-native-cli

# Set Working Directory In Container
WORKDIR /app

# Copy Project Files
COPY . .

# Install Project Dependencies
RUN npm install

# Expose Port For Metro Bundler
EXPOSE 8081

# Command To Start Metro Bundler
CMD ["npx", "react-native", "start"]
