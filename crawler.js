const axios = require('axios');
const Parser = require('rss-parser');
const url = "https://news.detik.com/rss";
const db = require('./queries')

let parser = new Parser();
(async()=>{
    let feed = await parser.parseURL(url);
    db.pool.query("TRUNCATE TABLE news", (error, resut)=>{
        if (error){
            console.log(error.message)
            
        }
    });

    feed.items.forEach(item =>{
        db.pool.query('INSERT INTO news (title, description, link, pubdate) VALUES ($1, $2, $3, $4)', 
            [item.title, item.content, item.link, item.isoDate], (error, results) => {
            if (error) {
                throw error
            }
        });
        console.log(item);
    });
})();

async function fetchData(url){
    console.log("Crawling data");

    let response = await axios(url).catch((err)=>console.log(err));

    if (response.status !==200){
        console.log("Error occured while fetching data");
        return;
    }

    return response;
}

fetchData(url).then((res)=>{
    console.log(res)
})
