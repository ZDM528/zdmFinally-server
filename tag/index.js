
import express from 'express';
import { connection } from '../index';

let router = express.Router();

router.get('/getTag', (req, res) => {
    let sql = "select * from tag";
    connection.query(sql, (err, data) => {
        const resData = JSON.parse(JSON.stringify(data));
        res.send(resData);
    })
})

router.delete("/deleteTag", (req, res) => {
    let sql = `delete from tag where id=${req.query.id} `;
    connection.query(sql, (err, data) => {
        if (!err)
            res.send("删除成功");
    })
})

router.post("/addTag", (req, res) => {
    let sql = `Insert into tag(name,description,divide,photo) Values('${title}','${attr}','${divide}','${photo}')`
    connection.query(sql, (err, data) => {
        if (!err)
            res.send("删除成功");
    })
})

router.get("/checkTag", (req, res) => {
    let sql = 'select * from tag';
    connection.query(sql, (err, data) => {
        const resData = JSON.parse(JSON.stringify(data));
        let res1 = resData.some(item => {
            return item.name === req.query.name
        })
        res.send(res1);
    })
})

export default router