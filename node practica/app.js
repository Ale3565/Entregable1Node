const express = require('express');
const app = express();

app.get ('/', (req, res) => {
    res.status(200).send({
        message: 'Hello World!',
        verb: req.method
    });
} );

const routerMath = express.Router();


const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log( `Server is running on port ${PORT}`);
});