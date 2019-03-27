var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  //get data from db and send through the route to the index.bhs view and then render
  connect.query('SELECT pokemon_name, pokemon_img FROM tbl_pokemon', (error, result)=>{
    if(error){
      throw error;
      console.log(error);
    }else{
      console.log(result);
        res.render('index', { pokemons: result });
    }
  })
});

/* GET pokemon page. */
router.get('/:pokemon', function(req, res, next) {
  //get data from db and send through the route to the index.bhs view and then render
  connect.query(`SELECT * FROM tbl_pokemon WHERE pokemon_name="${req.params.pokemon}"`, (error, result)=>{
    if(error){
      throw error;
      console.log(error);
    }else{
      console.log(result);
        res.render('pokemon', { pokemonData: result[0] });
    }
  })
});

module.exports = router;
