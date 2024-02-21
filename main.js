const express = require('express')

const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.send('Hello World!')
})

app.get('/info', (req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Render build information')
})

app.listen(port, () => {
  console.log(`Server running on port ${port}`)
})