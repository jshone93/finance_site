// backend/server.js
const express = require("express");
const app = express();
const port = 5001;

app.get("/", (req, res) => {
    res.send("Hello from backend!");
});

app.listen(port, () => {
    console.log(`Server running on http://localhost:${port}`);
});
