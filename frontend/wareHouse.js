import express from 'express';
import { connection } from '../index';
import xlsx from 'node-xlsx';
import fs from 'fs';

let router = express.Router();

router.get('/getWareList', (req, res) => {
    let sql = "select * from datalist";
    connection.query(sql, (err, data) => {
        const resData = JSON.parse(JSON.stringify(data));
        let result = [];
        if (req.query.access === '不限' && req.query.dataSort === "不限") {
            result = resData
        } else if (req.query.dataSort === "不限") {
            result = resData.filter(item => {
                return item.access === req.query.access
            })
        } else if (req.query.access === '不限') {
            result = resData.filter(item => {
                return item.dataSort === req.query.dataSort
            })
        } else {
            result = resData.filter(item => {
                return item.dataSort === req.query.dataSort && item.access === req.query.access
            })
        }
        console.log(result);
        res.send({ data: result });
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