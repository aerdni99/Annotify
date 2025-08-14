// metro.config.js
const { getDefaultConfig } = require('expo/metro-config');

const config = getDefaultConfig(__dirname);

module.exports = {
  ...config,
  transformer: {
    ...config.transformer,
    // Add custom transformer configurations here if needed
  },
  resolver: {
    ...config.resolver,
    // Add custom resolver configurations here if needed
  },
  server: {
    ...config.server,
    // You can add custom server configurations here if needed
  },
};
