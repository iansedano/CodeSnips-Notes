var h = React.createElement;

class MyList extends React.Component {
    render() {
        var lis = this.props.data.map(function(text, idx) {
            return h('li', {key:idx}, text) // This is what you need to do if JSX is not included
        })
        return (
            h('ul', null, lis)
        )
    }
}

class HelloWorldBanner extends React.Component {
    render() {
        return(
            h('div', null,
                h('h1', null, 'Hello World'),
                h(MyList, { data: ['Hi', 'I am', 'Shing Lyu']})
            )
        )
    }
}