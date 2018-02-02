import React, { Component } from 'react';
import './App.css';
import DreamsContainer from './components/DreamsContainer'

class App extends Component {
  render() {
    return (
      <div className="App">
        <header className="App-header">
          <h1 className="App-title">Your Dream Journal</h1>
        </header>
        <p className="App-intro">
        This is where you can record your dreams.
        </p>
        <DreamsContainer />
      </div>
    );
  }
}

export default App;
