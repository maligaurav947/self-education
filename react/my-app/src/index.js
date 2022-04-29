import React from 'react';
import ReactDOM from 'react-dom';
import './style.css';
import {useState} from 'react'; // added for number 6 : hooks

// 0
// default react id in ../public/index.html
// this is the default root id.
const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
	<h1>Hello, React, I hate you.</h1>
);

// 1
// jsx
// add id "jsx" to the ../public/index.html.
// I do this every lesson of react and do the job on that portion ("div") of public/index.html.
ReactDOM.render(
	<p>Fuck you again.</p>,
	document.getElementById("jsx")
)

const name = "amir";
const element = <p>my name is {name}</p>;
ReactDOM.render(
	element,
	document.getElementById("jsx")
)
// as you can see the second render overwrites the old one.


// 2
// vdom
// virtual dom
let counter = 0;

function show() {
	counter++;
	const element = <p>{counter}</p>;
	ReactDOM.render(
		element,
		document.getElementById('vdom')
	)
}
setInterval(show, 1000)
// this is the best part of react as a hooker.


// 3
// comp
// components
// there are two: functional and class components. this section is just about functional components
function Section() {
	return <p>"this is a functional components."</p>;
}

const el = <Section />;
ReactDOM.render(
	el, document.getElementById("comp")
)
// the Section(): the first character must be capitalized.


// 4
// prop
// we can add arguments to functional components:
function Hello(props) {
	return <p>hey; where have you been {props.name}</p>;
}

let elm = <Hello name="amir" />;
ReactDOM.render(
	elm, document.getElementById("prop")
)


// 3,4
// class components
function Item(props) {
	return <div className="item">
	<b>Name:</b> {props.name} <br />
	<b>Price:</b> {props.price} <br />
	</div>
}

ReactDOM.render(<Item name="khiar" price="6M ush" />, document.getElementById("ccom"));
// react render written in one line.


// 5
// state
// use state for class components.
class Bello extends React.Component {
	state = {
		name: "john"
	}
	render() {
		return <h2>Bello {this.state.name};</h2>; 
	}
}
ReactDOM.render(<Bello />, document.getElementById("stat"))

class Counter extends React.Component {
	state = {
		counter: 0
	}
	increment = () => {
		this.setState({counter: this.state.counter+1});
	}
	render() {
		return <div>
		<p>{this.state.counter}</p>
		<button onClick={this.increment}>Increment</button>
		</div>
	}
}
ReactDOM.render(<Counter />, document.getElementById("state"))
// there were two examples of state. attention to the setState and onClick.


// 6
// hooks
// earlier version of react allowed to use state only with class components. in recent iterations, hooks was introduced, allowing to use state inside of functional components.
// we need to import {useState} first. added at the beginnig of this file.
function Count() {
	const [count, setCount] = useState(0);
	function add() {
		setCount(count+1);
	}
	return <div><p>{count}</p><button onClick={add}>add</button></div>;
}
ReactDOM.render(<Count />, document.getElementById('hooks'))
