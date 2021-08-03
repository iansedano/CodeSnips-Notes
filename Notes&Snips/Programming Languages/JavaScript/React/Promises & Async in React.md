[https://www.pluralsight.com/guides/executing-promises-in-a-react-component](https://www.pluralsight.com/guides/executing-promises-in-a-react-component)

```jsx
import React from "react";

class UserComponent extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: "",
      password: ""
    };
  }

  componentDidMount() {
    const fetchUserEmail = async () => {
      const response = await fetch("/emails");
      const { email } = await response.json();
      this.setState({
        email
      });
    };
    fetchUserEmail();
  }

  render() {
    return (
      <div>
        <h1>A user</h1>
        <p>{this.state.email}</p>
      </div>
    );
  }
}
```


```jsx
import React from "react";

class UserComponent extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: "",
      password: ""
    };
  }

  handleButtonClick = () => {
    const fetchUserEmail = async () => {
      const response = await fetch("/emails");
      const { email } = await response.json();
      this.setState({
        email
      });
    };
    fetchUserEmail();
  };

  render() {
    return (
      <div>
        <h1>A user</h1>
        <p>{this.state.email}</p>
        <button onClick={this.handleButtonClick}>Fetch Email</button>
      </div>
    );
  }
}
```


[trying-to-implement-a-simple-promise-in-reactjs](https://stackoverflow.com/questions/40029867/trying-to-implement-a-simple-promise-in-reactjs)


> `render` method should only depend on `props` and/or `state` to render the desired output. Any change to `prop` or `state` would `re-render` your component. [Panther](https://stackoverflow.com/users/1009750/panther)