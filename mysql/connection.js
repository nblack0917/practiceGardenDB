const mysql = require('mysql');

const pool = mysql.createPool({
    connectionLimit : 10,
    host            : '35.202.100.86',
    user            : 'root',
    password        : 'Cleo2021',
    database        : 'admin'
});

// pool.connect(function(err) {
//     if (err) {
//         console.error('error connecting: ' + err.stack);
//         return;
//     }

//     console.log('connected as id ' + connection.threadId);
// });

module.exports = pool;