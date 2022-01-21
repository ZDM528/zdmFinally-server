import express from 'express';
import { connection } from '../index';

let router = express.Router();

router.get('/getPersonData', (req, res) => {
    let sql1 = "select * from needdata";
    let sql2 = "select * from datalist"
    let needData;
    let giveData;
    connection.query(sql1, (err, data) => {
        const resData = JSON.parse(JSON.stringify(data));
        needData = resData.filter(item => {
            item.userId = req.query.userId
        })
    })
    connection.query(sql2, (err, data) => {
        const resData = JSON.parse(JSON.stringify(data));
        giveData = resData.filter(item => {
            item.userId = req.query.userId
        })
    })
    let result ={};
    result['need'] = needData;
    result['give'] = giveData;
    res.send({ code: 200, data: result });
})

router.get('/downloadPersonData', (req, res) => {
    let sql = "select * from datalist"
    let dataExcelId = 1;
    connection.query(sql, (err, data) => {
        const resData = JSON.parse(JSON.stringify(data));
        resData.some(item => {
            if (item.userId && item.userId == req.query.userId) {
                dataExcelId = item.id
                return true;
            }
        })
    })
    fs.readdir("./frontend/dataExcel", function (err, files) {
        files.forEach(file => {
            if (parseInt(file.substring(0, file.length - 5)) == parseInt(dataExcelId)) {
                let sheetList = xlsx.parse(path.join(__dirname + "\\dataExcel", file));
                let buffer = xlsx.build([{ name: "mySheetName", data: sheetList[0].data }])
                res.send({ data: buffer });
            }
        })
    })
})
export default router