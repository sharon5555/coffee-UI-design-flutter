class NearByProduct {
  late final String description, image, name;
  late final double price;

  NearByProduct({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
  });
}

List nearproductinfo = [
  NearByProduct(
    image: 'assets/espresso.jpeg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Espresso Coffee',
    price: 200.0,
  ),
  
  NearByProduct(
    image: 'assets/caffe mocha.jpg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Caffe Mocha',
    price: 150.0,
  ),

NearByProduct(
    image: 'assets/banner.jpg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Black Coffee',
    price: 100.0,
  ),

NearByProduct(
    image: 'assets/hotcoffee.jpeg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Hot Coffee',
    price: 250.0,
  ),

  NearByProduct(
    image: 'assets/blackcoffee.jpeg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Black Coffee',
    price: 50.0,
  ),
  NearByProduct(
    image: 'assets/americano.jpeg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Americano Coffee',
    price: 150.0,
  ),

NearByProduct(
    image: 'assets/icecoffee.jpg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Ice Coffee',
    price: 70.0,
  ),
  
  NearByProduct(
    image: 'assets/coffee.jpg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Coffee',
    price: 170.0,
  ),
  NearByProduct(
    image: 'assets/cortado.jpeg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Cortado Coffee',
    price: 350.0,
  ),
  

];
