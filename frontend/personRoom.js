import express from 'express';
import { connection } from '../index';
import xlsx from 'node-xlsx';
import fs from 'fs';
import path from 'path';
let router = express.Router();

router.get('/getPersonData', (req, res) => {
    let sql1 = "select * from needdata";
    let sql2 = "select * from datalist"
    let needData;
    let giveData;
    let p1 = new Promise((resolve, reject) => {
        connection.query(sql1, (err, data) => {
            const resData = JSON.parse(JSON.stringify(data));
            needData = resData.filter(item => {
                return item.userId == req.query.userId
            })
            if (!err) {
                resolve(needData)
            }
        })
    })

    let p2 = new Promise((resolve, reject) => {
        connection.query(sql2, (err, data) => {
            const resData = JSON.parse(JSON.stringify(data));
            giveData = resData.filter(item => {
                return item.userId == req.query.userId
            })
            if (!err) {
                resolve(giveData)
            }
        })
    })

    Promise.all([p1, p2]).then((resData) => {
        let result = {};
        result['need'] = resData[0];
        result['give'] = resData[1];
        res.send({ code: 200, data: result });
    }).catch(err => {
        res.send({ code: 403, message: '获得发布需求或者供给失败' });
    })
})

router.get('/downloadPersonData', (req, res) => {
    fs.readdir("./frontend/dataExcel", function (err, files) {
        files.forEach(file => {
            if (parseInt(file.substring(0, file.length - 5)) == parseInt(req.query.id)) {
                let sheetList = xlsx.parse(path.join(__dirname + "\\dataExcel", file));
                let buffer = xlsx.build([{ name: "mySheetName", data: sheetList[0].data }])
                res.send({ data: buffer });
            }
        })
    })
})
export default router