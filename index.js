// index.js
const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send(`
    <html>
      <body style="font-family:sans-serif; text-align:center; padding:50px; background:#1a1a2e; color:white">
        <h1>🚀 DevDeploy Works!</h1>
        <p>This app was automatically deployed by DevDeploy</p>
        <p>Container started at: ${new Date().toISOString()}</p>
      </body>
    </html>
  `);
});

app.listen(3000, () => console.log('App running on port 3000'));
