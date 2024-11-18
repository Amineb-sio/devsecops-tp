const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Bienvenue sur le serveur Amine !');
});

app.listen(port, () => {
  console.log(`Application en cours d'exécution sur http://localhost:${port}`);
});
