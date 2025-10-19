const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => res.json({ msg: 'Hello from my-app!' }));

if (require.main === module) {
  app.listen(port, () => console.log(`Listening ${port}`));
}

module.exports = app;

