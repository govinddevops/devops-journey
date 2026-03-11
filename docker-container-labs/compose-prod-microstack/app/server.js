const express = require("express");
const app = express();
const port = process.env.APP_PORT || 3000;

app.get("/", (req, res) => {
  res.send("Production Microstack Running Successfully 🚀");
});

app.get("/health", (req, res) => {
  res.status(200).send("OK");
});

app.listen(port, () => {
  console.log(`App running on port ${port}`);
});

