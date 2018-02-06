var Product = require('../models/product');
var mongoose =require('mongoose');
var products = [new Product({
      imagePath : "https://upload.wikimedia.org/wikipedia/en/5/5e/Gothiccover.png",
      title: 'Gothic Video game',
    description:'Awesome Game!',
    price : 10
}),new Product({
    imagePath : "https://upload.wikimedia.org/wikipedia/en/5/5e/Gothiccover.png",
    title: 'Gothic Video game,but also have some problems',
    description:'Awesome Game!',
    price : 20
})
];
for(var i=0;i<products.length;i++){
      products[i].save();
}
mongoose.disconnect();