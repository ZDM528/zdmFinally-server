
import express from 'express';
import { connection } from '../index';

let router = express.Router();

router.get('/getDataList', (req, res) => {
    const { isCheck } = req.query;
    let sql;
    if (isCheck == "全部内容") {
        sql = `select * from datalist`;
    } else {
        sql = `select * from datalist where isCheck=${isCheck}`;
    }
    connection.query(sql, (err, data) => {
        const resData = JSON.parse(JSON.stringify(data));
        if (!err) {
            res.send({ code: 200, result: resData })
        } else {
            res.send({ code: 403, message: '查询数据失败' })
        }
    })
})

router.post('/deleteData', (req, res) => {
    const { id } = req.body;
    let sql = `delete from datalist where id=${id}`;
    connection.query(sql, (err, data) => {
        if (!err) {
            res.send({ code: 200, message: '删除数据成功' })
        } else {
            res.send({ code: 403, message: '删除数据失败' })
        }
    })
})

router.post('/updateData', (req, res) => {
    const { id, name, access, info, dataSort, score, isCheck, userId } = req.body;
    let sql = `update frontenduser set name='${name}' ,access='${access}',info='${info}',dataSort='${dataSort}',score='${score}',isCheck='${isCheck}' where id=${id}`;
    connection.query(sql, (err, data) => {
        if (!err) {
            res.send({ code: 200, message: '更新数据成功' })
        } else {
            res.send({ code: 403, message: '更新数据失败' })
        }
        if (userId !== -1) {
            let sql1 = `select * from frontenduser where id=${userId} `
            connection.query(sql1, (err, data) => {
                const resData = JSON.parse(JSON.stringify(data));
                let preScore = parseInt(resData.score);
                let newScore = preScore;
                if (isCheck == "待审核") {
                    newScore = Math.max(preScore - 2, 0);
                } else if (isCheck == "已审核") {
                    newScore = preScore + 2;
                }
                let sql2 = `update frontenduser set score='${newScore.toString()}' where id=${userId}`;
                connection.query(sql2, (err, data) => {
                    if (err) { console.log(err) }
                })
            })
        }
    })
})

//下载接口跟前台页面的下载接口一样 /downloadData 传id

export default router