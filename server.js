const express = require('express');
const router  = express.Router();
const path = require('path');
const app = express();
const bodyParser = require('body-parser');
const db = require('./queries');

const port = process.env.PORT || 8080;
app.use(express.json())
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.get("/", function(req, res){
    db.pool.query('SELECT * FROM news ORDER BY id ASC', (error, results) => {
        if (error) {
          throw error
        }
        res.render('index', {"newsData":results.rows, "test":"Hallows"})
      });
});

app.get("/delnews/:id", function(req, res){
    const id = parseInt(req.params.id)
  
    db.pool.query('DELETE FROM news WHERE id = $1', [id], (error, results) => {
      if (error) {
        throw error
      }
      res.redirect("/");
    })
});

app.get("/editnews/:id", function(req, res){
    const id = parseInt(req.params.id)
  
    db.pool.query('SELECT * FROM news WHERE id = $1', [id], (error, results) => {
      if (error) {
        throw error
      }
      res.render('update', {"id":results.rows[0].id,"title":results.rows[0].title, "description":results.rows[0].description, "link":results.rows[0].link})
    })

});

app.get("/pageupdate", function(req, res){
    res.sendFile(path.join(__dirname, "/update.html"))
})

app.get("/pagecreate", function(req, res){
    res.sendFile(path.join(__dirname, "/create.html"))
})


app.get('/news', db.getNews)
app.get('/news/:id', db.getNewsById)
app.post('/news', db.createNews)
app.put('/news/:id', db.updateNews)
app.delete('/news/:id', db.deleteNews)

app.listen(port);
console.log("Server started at http://localhost:"+port);