const Router = require('koa-router');
const router = new Router();
const doitems = require('./controllers/doItems');

router.get('/doItems', doitems.index)


module.exports.router = router