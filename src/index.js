import express from 'express'
import 'dotenv/config';
import { router } from './routes/referralRoutes.js';
import cors from 'cors'

const app = express()
const port = process.env.PORT



app.use(express.json())
app.use(express.urlencoded({ extended: false }))
app.use(cors())
app.use('/api', router)
app.get('/', (req, res) => {
    res.send('Welcome...')
})
app.listen(port, () => {
    console.log('app listening at port ' + port)
})