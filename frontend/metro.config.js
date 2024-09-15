// metro.config.js
module.exports = {
    transformer: {
      getTransformOptions: async () => ({
        transform: {
          experimentalImportSupport: false,
          inlineRequires: false,
        },
      }),
    },
    resolver: {
      assetExts: ['png', 'jpg', 'svg'], // Add any file types you're using
    },
  };
  