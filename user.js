const express = require('express')
const app = express()
const mysql = require('mysql');

const multer  = require('multer')

let id_user
const storage = multer.diskStorage({
  destination: function(req, file, callback) {
    callback(null, './uploads/');
  },
  filename: function(req, file, callback) {
    const {params:{id}}=req
    const selectQuery = `INSERT INTO img ( url,id_user) VALUES (?,?);`
    mySqlClient.query(
     selectQuery,
    [`/uploads/${id+'_'+file.originalname}`,id],  
    )
    callback(null,id+'_'+file.originalname);
  }
})

const upload = multer({ storage: storage });

const mySqlClient = mysql.createConnection({

  host: "localhost",

  user: "root",

  password: "",

  database: "projetspéweb"
});



//GetAllUser
app.get("/users", (req, res) => {
  const selectQuery = "select * from user"
  mySqlClient.query(
     selectQuery,
  function (error, results, fields) {
    res.json([results])
  })

})
//GetOneUser
app.get('/users/:id', (req, res) => {	
  const { id } = req.params
  const selectQuery = "select * from user where id= ?" 
  mySqlClient.query(
    selectQuery,
  [id],
  function (error, results, fields) {
    res.json([results])
  }
);
})  
//Ajouter un user
app.post('/users',({query},res)=>{
  const {nom,prenom,datenaissance,latitude,longitude}=query
  const selectQuery = `INSERT INTO user ( nom,prenom,datenaissance,latitude,longitude) VALUES (?,?,?,?,?);`
  mySqlClient.query(
    selectQuery,
  [nom,prenom,datenaissance,latitude,longitude],
  function (error, results, fields) {
    res.json(results)
  })
})
//Alter user
app.put('/users/:id',({query},res)=>{
  const {id,nom,prenom,datenaissance,latitude,longitude}=query
  const selectQuery = `UPDATE user SET nom =?, prenom=?, datenaissance =?,latitude=?,longitude=? WHERE id =? ;`
  mySqlClient.query(
     selectQuery,
  [nom,prenom,datenaissance,latitude,longitude,id],
  function (error, results, fields) {
    res.json(results)
  })
})
app.delete('/users/:id',(req, res)=>{
  const {params:{id}}=req
  const selectQuery = `DELETE FROM user WHERE id =?;`
  mySqlClient.query(
   selectQuery,
  [id],
  function (error, results, fields) {
    res.json(results)
  })
})

app.post('/upload/:id', upload.array('image',':id'), (req, res)=>{
  
  res.end('Transfert effectué');
})

  
app.listen(process.argv[2])
console.log(`Le serveur est lancé sur le port ${process.argv[2]}`)