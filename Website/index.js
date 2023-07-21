express = require('express');
app = express();
const path = require("path");
const ejs = require("ejs");
const mongodb = require("./modules/mongodb/mongodb.service");
const cart = require("./modules/cart/cart.controller");
const staticpage = require("./modules/staticpage/staticpage.controller")
const checkout=require("./modules/checkout/checkout.controller")

const { engine } = require("express-handlebars");
const methodOverride = require("method-override");
const cookieParser = require("cookie-parser");
mongodb.connect();

app.engine("html", require("ejs").renderFile);

app.use(express.urlencoded({ extended: false }));
app.use(express.json());
app.use(cookieParser());
app.use(methodOverride("_method"));

app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));
app.use(express.static(path.join(__dirname, "public")));

// app.use("/", staticpage);
app.use("/checkout",checkout)
app.use("/cart",cart);
app.use("/", staticpage);
app.listen(3000, (req, res) => {
    console.log("App is listening on port 3000");
  });