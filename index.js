const express = require('express');
const bodyParser = require('body-parser');
const plantsRouter = require('./routes/plants')
const gardenRouter = require('./routes/gardens')
const { logger } = require('./middleware')

const app = express();
const port = process.env.PORT || 8080;

app.use(bodyParser.json());
app.use(logger);
app.use('/plants', plantsRouter);
app.use('/gardens', gardenRouter)


app.get('/', (req, res) => {
    res.send('Welcome to my UPDATED Garden App!')
  })
  
  app.listen(port, () => {
   console.log(`Web server is listening on port ${port}!`);
  });
  