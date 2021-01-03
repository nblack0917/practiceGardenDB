const express = require('express');
const bodyParser = require('body-parser');
const plantsRouter = require('./routes/plants')
const app = express();

app.use(bodyParser.json());
app.use('/plants', plantsRouter)


const port = 3000;

app.get('/', (req, res) => res.send('Hello World!'))
app.listen(port, () => console.log(`Example app listening on port ${port}!`))
