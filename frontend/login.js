import express from 'express';
import { connection } from '../index';

let router = express.Router();

router.post('/login', (req, res) => {
    let sql = "select * from frontendUser";
    connection.query(sql, (err, data) => {
        const resData = JSON.parse(JSON.stringify(data));
        const { username, password } = req.body;
        resData.some(item => {
            if (item.username === username && item.password === password) {
                res.send({ code: 200, messgae: '登录成功' });
            } else {
                res.send({ code: 403, messgae: '该用户不存在' });
            }
        })
    })
})

export default router