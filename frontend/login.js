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

export default router