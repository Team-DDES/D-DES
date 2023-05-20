const express = require('express');
// import express from "express"
const bodyParser = require('body-parser')
// import bodyParser from"body-parser"

const app = express();
const port = 3000;

const userRouter = require('./routes/user');
const taskRouter = require('./routes/task');
const marketRouter = require('./routes/market')

// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))
 
// parse application/json
app.use(bodyParser.json())

app.use('/flower/user', userRouter);
app.use('/flower/task', taskRouter);
app.use('/flower/market',marketRouter)

// connection.connect();
// connection.query('SELECT * from user', (error, rows, fields) => {
//     if (error) throw error;
//     console.log('User info is: ', rows);
//   });
  
//   connection.end();
app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})