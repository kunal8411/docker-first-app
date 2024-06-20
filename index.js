const express = require('express');


const app =express();

app.get("/", (req,res)=>{
    res.send("Ho there")
})


app.listen(8080, (req,res)=>{
    console.log("Server running on port : 8080")
})