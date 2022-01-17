import express from 'express';
import { connection } from '../index';

let router = express.Router();

router.get('/getWareList', (req, res) => {
    let sql = "select * from frontendUser";
    connection.query(sql, (err, data) => {
        const resData = JSON.parse(JSON.stringify(data));
        let res1 = resData.some(item => {
            return item.way === req.query.way && item.type === req.query.type
        })
        res.send(res1);
    })
})

router.get('/downloadData', (req, res) => {
    let sql = "select * from frontendUser";
    connection.query(sql, (err, data) => {
        const resData = JSON.parse(JSON.stringify(data));
        let res1 = resData.some(item => {
            return item.way === req.query.way && item.type === req.query.type
        })
        res.send(res1);
    })
})
export default router