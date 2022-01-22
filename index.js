import express from "express";
import { createConnection } from "mysql";
import user from './backend/user';
import login from './frontend/login'
import register from './frontend/register'
import wareHouse from './frontend/wareHouse'
import upload from './upload';
import beVip from './frontend/beVip'
import community from './frontend/community'
import projectSupply from './frontend/projectSupply'
import personRoom from './frontend/personRoom'
import userManager from './backend/userManager'

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
app.use(login);
app.use(register);
app.use(beVip)
app.use(wareHouse)
app.use(upload);
app.use(community)
app.use(projectSupply)
app.use(personRoom)
app.use(userManager)

app.use(function (req, res) {
    res.send('404 not found');
})

export {
    connection
}