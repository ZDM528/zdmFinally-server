import express from 'express';
import { connection } from '../index';
import xlsx from 'node-xlsx';
import fs from 'fs';
import path from 'path';

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
    fs.readdir("./frontend/dataExcel", function (err, files) {
        files.forEach(file => {
            if (req.query.id === parseInt(file.substring(0, 1))) {
                let sheetList = xlsx.parse(path.join(__dirname + "\\dataExcel", file));
                let buffer = xlsx.build([{ name: "mySheetName", data: sheetList[0].data }])
                res.send({ data: buffer });
            }
        })
    })
})
export default router