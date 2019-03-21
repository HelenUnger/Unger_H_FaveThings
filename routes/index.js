var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  //get data from db and send through the route to the index.bhs view and then render
  connect.query('SELECT name, avatar FROM hero', (error, result)=>{
    if(error){
      throw error;
      console.log(error);
    }else{
      console.log(result);
        res.render('index', { avatars: result });
    }
  })
});

/* GET avatar page. */
router.get('/:hero', function(req, res, next) {
  //get data from db and send through the route to the index.bhs view and then render
  connect.query(`SELECT * FROM hero WHERE name="${req.params.hero}"`, (error, result)=>{
    if(error){
      throw error;
      console.log(error);
    }else{
      console.log(result);
        res.render('bio', { bioData: result[0] });
    }
  })
});

module.exports = router;
