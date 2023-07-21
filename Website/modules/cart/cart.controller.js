const express = require("express");
//const Cart = require("./cart.model");
const cart = require("./cart.service");
const router = express.Router();
const Cart = require("./cart.model");

router.get("/", async (req, res) => {
  console.log("cart.controller GET /", req.cookies);
  //   const B =  await cart.findDishByCart(req.cookies.cartToken);
  const myCart = await cart.showCart(req.cookies.cartToken);
  console.log("cart.controller GET / cart:", myCart);

  //   const total = B.pop();
  //   const Bill = B[0];
  //   res.render("cart.html", { Bill, total });
  res.render("cart.html", { myCart });
});

// // router.get("/all", async (req, res) => {
// //   console.log("cart.controller GET /all", req.cookies);
// //   const Cart = await cart.showCart(req.cookies.cartToken);
// //   const cartQuantity= cart.getCartQuantity(Cart);
// //   res.json(cartQuantity);
// // });

router.post("/add", async (req, res) => {
  console.log("cart.controller POST /");
  console.log("request body:", req.body);
  console.log("request cookie:", req.cookies);

  const { quantity } = req.body;
  const { title } = req.body;
  const { cartToken } = req.cookies;
  const { img } = req.body;
  const result = await cart.addToCart(cartToken, title, quantity,img);

  res.json({ result });
});

// router.patch("/", async (req, res) => {
//   console.log("cart.controller patch", req.cookies);
//   const token = req.cookies.cartToken;
//   const id = req.body.productId;
//   const result = await cart.update(token, id);
//   res.json({ result });
// });
// // router.post("/cart/printBill", (req, res) => {
// //   console.log("cart.controller POST: ", req.body);
// // });
router.patch("/editcart", async (req, res) => {
  console.log("cart.controller PATCH editcart /", req.body);
  const { title, quantity } = req.body;
  // console.log('qu----:',qu);

  await Cart.findOneAndUpdate(
    { title: title, isBought: false, quantity: { $gt: 0 } },
    { quantity: quantity }
  );

  res.redirect("/cart");
});

router.get("/total", async (req, res) => {
  const myCart = await cart.showCart(req.cookies.cartToken);
  let total = 0;
  for (let myC of myCart) {
    total +=myC.quantity;
  }
  console.log("cart.controller GET/ total:", total);
  res.json(total*20000)
});

// router.get("/checkout", async (req, res) => {
//   console.log("cart.controller GET /checkout", req.cookies);
//   const B = await cart.findDishByCart(req.cookies.cartToken);
//   const total = B.pop();
//   const Bill = B[0];
//   res.render("checkout.html", { Bill, total });
// });
module.exports = router;