import express  from "express";
import cors from "cors"

const app =express()
app.use(cors())

app.get('/', (req,res) => {
  res.send("Hello Docker! 🐳")
})

app.listen(3000, () => {
console.log("Listening on http:localhost:3000")
})