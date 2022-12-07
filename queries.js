const Pool = require('pg').Pool

const pool = new Pool({
    user:'postgres',
    host:'localhost',
    database: 'detik',
    password: "",
    port: 5432,
})

const getNews = (request, response) => {
    pool.query('SELECT * FROM news ORDER BY id ASC', (error, results) => {
      if (error) {
        throw error
      }
      response.status(200).json(results.rows)
    })
  }

const getNewsById = (request, response) => {
    const id = parseInt(request.params.id)

    pool.query('SELECT * FROM news WHERE id = $1', [id], (error, results) => {
      if (error) {
        throw error
      }
      response.status(200).json(results.rows)
    })
}

const createNews = (request, response) => {
    const { title, description, link} = request.body

    pool.query('INSERT INTO news (title, description, link, pubdate) VALUES ($1, $2, $3, $4)',
        [title, description, link, new Date().toISOString()], (error, results) => {
      if (error) {
        throw error
      }
      response.status(201)
      response.setHeader('Content-Type', 'application/json');
      response.send(JSON.stringify({ "success": true, "message":"successfully add news"}));

    })
  }

  const updateNews = (request, response) => {
    const id = parseInt(request.params.id)
    const { title, description, link} = request.body

    pool.query(
      'UPDATE news SET title = $1, description = $2, link=$3, pubdate=$4  WHERE id = $5',
      [title, description, link, new Date().toISOString(), id],
      (error, results) => {
        if (error) {
          throw error
        }
        response.status(200)
        response.setHeader('Content-Type', 'application/json');
        response.send(JSON.stringify({ "success": true, "message":"successfully update news"}));

      }
    )
  }

const deleteNews = (request, response) => {
    const id = parseInt(request.params.id)

    pool.query('DELETE FROM news WHERE id = $1', [id], (error, results) => {
      if (error) {
        throw error
      }
      response.status(200);
      response.setHeader('Content-Type', 'application/json');
      response.send(JSON.stringify({ "success": true, "message":"successfully delete news"}));
    })
}

module.exports = {
    pool,
    getNews,
    getNewsById,
    createNews,
    updateNews,
    deleteNews,
}
