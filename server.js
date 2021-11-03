'use strict';

const express = require('express');

// constants
const PORT=8080;
const HOST="0.0.0.0";

// app 
const app = express();
app.get('/', (req, res) => {
    res.send("Hello World, I am Mien learning Nodejs and Express");
});

app.listen(PORT, HOST);
console.log(`Running on httpl://${HOST}:${PORT}`);
// console.log("Running on port " + port + " host " + HOST);