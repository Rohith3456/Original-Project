const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => res.send('Hello from CI/CD demo!'));

if (require.main === module) {
  app.listen(port, () => console.log(`App listening on ${port}`));
}

module.exports = app;

