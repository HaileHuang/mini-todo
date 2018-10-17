const Koa = require('koa');
const json = require('koa-json')
const router = require('./routes').router;
const app = new Koa();

app.use(json())

app.use(router.routes());

app.listen(process.env.PORT || 3000);