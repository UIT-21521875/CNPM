// mongoose model setup cho dishes (products)
const mongoose = require("mongoose");
// setup biến schema để đỡ gỡ dài
const Schema = mongoose.Schema;

const GamesSchema = new Schema({
  title: String,
  image: String,
  company: String,
  price: {
    type: Number,
    default: 20000,
},
  createdAt: {
    type: Date,
    default: Date.now,
  },
});
// const Game=mongoose.model("Game", GamesSchema)
// const  game=  new Game({title: 'God Of War'});
// async function work(){  
// await game.save();}
// work();


// file js kết nối với file index.js thì phải có module.exports return ra cái gì đó. 'Dishes' có một chữ + viết hoa chữ cái đầu là rule của mongoose, sẽ tạo một collection(table) với tên dishes
module.exports = mongoose.model("Game", GamesSchema);
 