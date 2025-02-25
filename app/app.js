const express = require('express');
const os = require('os');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
    const platform = os.arch();
    console.log(`Running on ${platform} architecture`);
    res.send(`Hello from Sploosh.AI! (Running on ${platform} architecture)`);
});

app.listen(port, () => {
    console.log(`Server architecture: ${os.arch()}`);
    console.log(`Server platform: ${os.platform()}`);
    console.log(`App listening at http://localhost:${port}`);
});
