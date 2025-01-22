// metro.config.js
module.exports = {
    transformer: {
      babelTransformerPath: require.resolve('react-native-svg-transformer'),
    },
    server: {
      enhanceMiddleware: (middleware) => {
        // Enable Fast Refresh
        middleware.use(require('react-refresh').middleware());
        return middleware;
      },
    },
  };
  