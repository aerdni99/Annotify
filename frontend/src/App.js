import React from 'react';
import { View, Text, Image, StyleSheet } from 'react-native';

const App = () => {
  return (
    <View style={styles.container}>
      <Image
        source={require('../assets/splash-logo.png')} // Add a logo image here later
        style={styles.logo}
      />
      <Text style={styles.text}>Welcome to Annotify</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#ffffff', // Splash background color
  },
  logo: {
    width: 200,
    height: 200, // Adjust logo size
  },
  text: {
    fontSize: 20,
    marginTop: 20,
  },
});

export default App;
