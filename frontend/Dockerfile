# Base Image
FROM node:16

# Install Dependencies
RUN apt-get update && apt-get install -y \
    openjdk-11-jdk \
    curl \
    wget \
    git \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Set environment variables for Android SDK
ENV ANDROID_SDK_ROOT=/usr/local/android-sdk/cmdline-tools/tools/cmdline-tools
ENV PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/tools/cmdline-tools/bin:$ANDROID_SDK_ROOT/platform-tools:$ANDROID_SDK_ROOT/tools/bin

# Download and install the Android SDK command line tools
RUN mkdir -p $ANDROID_SDK_ROOT/cmdline-tools \
    && cd $ANDROID_SDK_ROOT/cmdline-tools \
    && wget https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip \
    && unzip commandlinetools-linux-9477386_latest.zip -d tools \
    && rm commandlinetools-linux-9477386_latest.zip

# Accept licenses and install essential SDK packages
RUN yes | sdkmanager --licenses --sdk_root="$ANDROID_SDK_ROOT" \
    && sdkmanager --update --sdk_root="$ANDROID_SDK_ROOT" \
    && sdkmanager --sdk_root="$ANDROID_SDK_ROOT" "platform-tools" "platforms;android-30" "build-tools;30.0.3"

# Set Working Directory In Container
WORKDIR /app

# Copy Project Files
COPY . .

# Install Project Dependencies
RUN npm install

# Install SDK Packages
RUN npm install -g react-native-cli

# Expose Port For Metro Bundler
EXPOSE 8081

# Command To Start Metro Bundler
CMD ["npx", "react-native", "start"]
