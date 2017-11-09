const Koa = require('koa')
const path = require('path')
const app = new Koa()

const {uploadFile} = require('./upload/upload')

app.use(async (ctx) => {
  if (ctx.url === '/' && ctx.method === 'GET') {
    
  }
})
