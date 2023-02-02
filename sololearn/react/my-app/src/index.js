import React from 'react';
import ReactDOM from 'react-dom';
import './style.css';
import {useState} from 'react'; // added for number 6 : hooks
import App from './App';

// 0
// default react id in ../public/index.html
// this is the default root id.
const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
	<App/>
);

// 1
// jsx
// add id "jsx" to the ../public/index.html.
// I do this every lesson of react and do the job on that portion ("div") of public/index.html.
