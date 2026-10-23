const express = require('express');
const path = require('path');

const app = express();
const host = process.env.HOST || '127.0.0.1';
const port = Number(process.env.PORT) || 3000;

app.get('/', (request, response) => {
  response.sendFile(path.join(__dirname, 'index.html'));
});

app.listen(port, host, () => {
  console.log(`Static site running at http://${host}:${port}`);
});
