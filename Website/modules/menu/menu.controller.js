const express = require("express");
const menu = require("./menu.service");
const router = express.Router();
const Dish = require("./menu.model");



// router.get("/", async (req, res) => {
//   console.log("menu.controller GET /menu");
//   const dish = await menu.getMenuAsync();
//   res.render("menu.html", { dish });
// });

// router.get("/:id", async (req, res) => {
//   console.log("menu.controller GET /menu/:id req.params.id:", req.params.id);
//   const dish = await menu.getDishByIdAsync(req.params.id);
//   res.render("quick_view.html", { dish });
// });

// router.get("/category", async (req, res) => {
//   console.log("menu.controller GET /category req.query", req.query);
//   const dish = await menu.getCategory(req.query);
//   res.render("category.html", { dish });
// });

// // router.get("/:nav", (req, res) => {
// //   console.log("menu.controller router.get /:nav", req.params);
// //   res.render(`${req.params.nav}.html`);
// // });

// router.get("/items/search", async (req, res) => {
//   console.log("menu.controller router.get /search", req.query);
//   const dish = await menu.getSearchDishes(req);
//   res.render("menu.html", { dish });
// });

module.exports = router;
