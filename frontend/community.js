import express from 'express';
import { connection } from '../index';

let router = express.Router();

router.post('/getCommunityData', (req, res) => {
    let sql = "select * from communityList";
    let result = [];
    connection.query(sql, (err, data) => {
        const resData = JSON.parse(JSON.stringify(data));
        if (req.query.type === '全部内容') {
            result = resData
        } else {
            result = resData.filter(item => {
                return item.type === req.query.type
            })
        }
        res.send({ data: result });
    })
})

router.post('/addCommunityData', (req, res) => {
    const { name, title, content, type } = req.body
    let sql = `Insert into communityList(name,title,content,type) Values('${name}','${title}','${content}','${type}')`
    connection.query(sql, (err, data) => {
        if (!err) {
            res.send({ code: 200, message: '发布成功' });
        } else {
            res.send({ code: 403, message: '发布失败！' });
        }
    })
})


export default router