import express from 'express';
import { connection } from '../index';
import fs from 'fs';
import multiparty from 'multiparty';
import path from 'path'


let router = express.Router();

router.post('/supplyProjectData', (req, res) => {
    let sql = `Insert into supplyData(name,phone,title,detail,type.userId) Values('${name}','${phone}','${title}','${detail}','${type}','${userId}')`
    connection.query(sql, (err, data) => {
        if (!err) {
            res.send({ code: 200, message: '发布成功' });
        }
    })
})

router.post('/addProjectData', (req, res) => {
    let form = new multiparty.Form()
    form.uploadDir = path.resolve(__dirname, '..')
    form.parse(req, function (err, fields, files) {
        if (err) throw err
        console.log(files.file[0].path);
        const fileName = files.file[0].originalFilename
        const newPath = form.uploadDir + '\\frontend' + '\\uploadExcel' + '\\' + fileName
        fs.renameSync(files.file[0].path, newPath)
        res.send({
            code: 200,
            name: fileName,
            message: '发布供给成功'
        })
    })
})


export default router