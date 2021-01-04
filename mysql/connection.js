// const mysql = require('mysql');

// const pool = mysql.createPool({
//     connectionLimit : 10,
//     host            : '35.202.100.86',
//     user            : 'root',
//     password        : 'Cleo2021',
//     database        : 'admin'
// });

// // pool.connect(function(err) {
// //     if (err) {
// //         console.error('error connecting: ' + err.stack);
// //         return;
// //     }

// //     console.log('connected as id ' + connection.threadId);
// // });

// module.exports = pool;

const mysql = require('mysql')

class Connection {
  constructor() {
    if (!this.pool) {
      console.log('creating mysql connection...')

      const config = {
        connectionLimit : 10,
        host            : '34.122.18.53',
        user            : 'root',
        password        : 'Cleo2021',
        database        : 'admin'
      }

      if (process.env.NODE_ENV === 'production' && process.env.CLOUD_INSTANCE) {
        console.log(`connect socket: ${process.env.CLOUD_INSTANCE}`)
        config.socketPath = `/cloudsql/${process.env.CLOUD_INSTANCE}`
      }

      this.pool = mysql.createPool(config)

      return this.pool
    }

    return this.pool
  }
}

const instance = new Connection()

module.exports = instance;