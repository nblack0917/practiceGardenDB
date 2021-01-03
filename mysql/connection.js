const mysql = require('mysql');

const connection = mysql.createConnection({
    host     : '35.202.100.86',
    user     : 'root',
    password : 'Cleo2021!',
    database : 'admin'
});

connection.connect();