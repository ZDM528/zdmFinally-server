import express from "express";
import { createConnection } from "mysql";
import user from './user';
import upload from './upload';

const app = express();
const cors = require('cors');
const port = 8888;
const connection = createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'zdmBlog'
})
connection.connect();

//解析post数据
app.use(express.urlencoded({ extended: false }));
app.use(express.json());
app.use(cors());
app.listen(port, function () {
    console.log("服务器已经启动");
})

app.use(user);
app.use(upload);
app.use(function (req, res) {
    res.send('404 not found');
})

export {
    connection
}