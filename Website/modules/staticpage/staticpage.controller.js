const express = require("express");
const router = express.Router();

router.get("/", (req, res) => {
  res.render("index.html");
});

router.get("/shop", (req, res) => {
  res.render("shop.html");
});

router.get("/:gamename", (req, res) => {
    console.log("stactic controller GET req.params: ", req.params)
    const {gamename}=req.params;
    res.render(`${gamename}.html`);
  });
module.exports = router;
