const express = require('express');
const bodyParser = require('body-parser');
const plantsRouter = require('./routes/plants')
const { logger } = require('./middleware')

const app = express();
const port = process.env.PORT || 8080;

app.use(bodyParser.json());
app.use(logger)
app.use('/plants', plantsRouter)


app.get('/', (req, res) => {
    res.send('Welcome to my Garden App!')
  })
  
  app.listen(port, () => {
   console.log(`Web server is listening on port ${port}!`);
  });
  