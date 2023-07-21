const Checkout = require("./checkout.model");
const Cart = require("../cart/cart.model");

async function addBill(req,myCart) {
  bill = new Checkout({
    token: req.cookies.cartToken,
    cusName: req.body.cusName,
    pNumber: req.body.pNumber,
    // total: req.body.total,
  });
  let productTitle = 0;
  let quantity = 0;

    for (let i = 0; i < myCart.length; i++) {
      productTitle = myCart[i].title;
      quantity = myCart[i].quantity;
      bill.Bill.push({ productTitle, quantity });
      await Cart.findByIdAndUpdate(myCart[i].id, { isBought: true });

    }
  

  console.log("Đây  là bill thanh toán xuât ra------", bill);
  await bill.save();
}



// async function printBill(cookies) {
//   const checkout = await Checkout.find({ token: cookies }).sort({
//     createdAt: -1,
//   });
//   console.log("bill trên trang order:", checkout);
//   return checkout;
// }
module.exports = {
  addBill,
//   setIsBoughtNull,
//   printBill,
};
