import React from 'react';
import logo from './logo.svg';
import './App.css';

function App() {
  return (
      <iframe src={ 'http://localhost:3001' } style={ {
          position: 'fixed',
          inset: 0,
          width: '100%',
          height: '100%',
          margin: 0,
          padding: 0,
          overflow: 'hidden',
      } }/>
  );
}

export default App;
