const express = require("express");
const checkout = require("./checkout.service");
const cart = require("../cart/cart.service");
const router = express.Router();

router.get("/", async (req,res)=>{
    console.log("checkout.controller GET /checkout/");
    res.render("checkout.html")
})
router.post("/", async (req, res) => {
  const myCart = await cart.showCart(req.cookies.cartToken);
  console.log("checkout.controller POST /checkout/ myCart", myCart);

  await checkout.addBill(req,myCart);
//    await checkout.setIsBoughtNull(req);
  // res.render("menu.html", { dish });
  res.redirect("/shop");
});
// router.get("/orders", async (req, res) => {
//   console.log("checkout.controller GET /orders/",req.cookies.cartToken);
//    const Checkout=await checkout.printBill(req.cookies.cartToken) 
//    console.log("form bill",Checkout)  ;
//   res.render("orders.html",{Checkout});
// });
module.exports = router;