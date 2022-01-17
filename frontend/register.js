import express from 'express';
import { connection } from '../index';

let router = express.Router();

router.post('/register', (req, res) => {
    const { username, password } = req.body;
    let sql = `Insert into frontendUser(username,password) Values('${username}','${password}')`
    connection.query(sql, (err, data) => {
        if (!err)
            res.send("注册成功");
    })
})

export default router