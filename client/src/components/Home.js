import React, { Component } from 'react';
import { Header } from 'semantic-ui-react';
import { connect } from 'react-redux';
import axios from 'axios';
import { setHeaders } from '../actions/headers';



class Home extends Component {
  state = { tasks: [], enrollments: [] }

  componentDidMount() {
    const { dispatch } = this.props;
    axios.get(`/api/enrollments`)
      .then( ({ data, headers }) => {
        // custom redux middleware/npm package: setHeaders
        // part of axios maybe?  or Dave's customer npm?
        dispatch(setHeaders(headers))
        console.log(data)
        console.log(headers)
        this.setState({ enrollments: data })
      })
  }

  getStuff = () => {
    const { dispatch } = this.props;
    axios.get(`/api/tasks`)
      .then( ({ data, headers }) => {
        dispatch(setHeaders(headers))
        console.log(data)
        console.log(headers)
        this.setState({ tasks: data })
      })
    debugger
  }
  
  render() {
    debugger
    return (
      <div>
      <Header as='h1' textAlign='center'>Landing Page Component</Header>
      <button onClick={ this.getStuff }>click_me</button>
      </div>
    );
  }
}

export default connect()(Home);
