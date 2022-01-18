import express from 'express';
import { connection } from '../index';
import xlsx from 'node-xlsx';
import fs from 'fs';

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
    fs.readdir("./dataExcel", function (err, files) {
        files.forEach(file => {
            console.log(file);
        })

    })
})
export default router