import React, { Component } from 'react'
import axios from 'axios'

class DreamsContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      ideas: []
    }
  }

  componentDidMount() {
    axios.get('http://localhost:3001/api/v1/dreams.json')
    .then(response => {
      console.log(response)
      this.setState({
        ideas: response.data
      })
    })
    .catch(error => console.log(error))
  }

  render() {
    return(
      <div className="dream-container">
        {this.state.ideas.map((dream) => {
          return (
            <div className="dream" key={dream.id}>
              <h4>Dream on {dream.sleep_date}</h4>
              <p>{dream.content}</p>
            </div>
          )
        })}
      </div>
    )
  }
}

export default DreamsContainer
