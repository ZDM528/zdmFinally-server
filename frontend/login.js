import express from 'express';
import { connection } from '../index';

let router = express.Router();

router.post('/login', (req, res) => {
    let sql = "select * from frontendUser";
    connection.query(sql, (err, data) => {
        const resData = JSON.parse(JSON.stringify(data));
        const { username, password } = req.body;
        let dataItem;
        let result = resData.some(item => {
            if (item.username == username && item.password == password) {
                dataItem = item;
                return true;
            } else {
                return false;
            }
        })
        if (result) {
            res.send({ code: 200, messgae: '登录成功', data: dataItem });
        } else {
            res.send({ code: 403, messgae: '用户名或者密码不对' });
        }
    })
})

router.post('/getScore', (req, res) => {
    const { id } = req.body
    let sql = `select * from frontendUser where id=${id}`;
    connection.query(sql, (err, data) => {
        const resData = JSON.parse(JSON.stringify(data));
        if (!err) {
            res.send({ code: 200, messgae: '获取用户积分成功', data: resData[0].score });
        } else {
            res.send({ code: 403, messgae: '获取用户积分失败' });
        }
    })
})

export default router