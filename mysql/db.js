const mysql = require('mysql')

const pool = mysql.createpool({
  host: '127.0.0.1',
  user: 'root',
  password: '',
  database: 'koademo'
})

let query = function (sql, values) {
  return new Promise((resolve, reject) => {
    pool.getConnection(function (err, connection) {
      if (err) {
        reject(err)
      } else {
        connection.query(sql, values, (err, rows) => {
          if (err) {
            reject(err)
          } else {
            resolve(rows)
          }
          connection.release() // 结束会话
        })
      }
    })
  })
}

module.exports = {query}
