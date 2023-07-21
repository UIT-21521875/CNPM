// mongoose model setup cho dishes (products)

// import mongoose để viết bằng mongoose, gần giống js
const mongoose = require("mongoose");
// setup biến schema để đỡ gỡ dài
const Schema = mongoose.Schema;
const CartsSchema = new Schema({
  cartToken: String,
  title: String,
  quantity: Number,
  img: String,
  isBought :{
    type: Boolean,
    default: false,
  },
  createdAt: {
    type: Date,
    default: Date.now,
  },
});

module.exports = mongoose.model("Cart", CartsSchema);