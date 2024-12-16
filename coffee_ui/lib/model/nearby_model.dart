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
    image: 'assets/americano.png',
    description: 'lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Americano Coffee',
    price: 150,
  ),
  NearByProduct(
    image: 'assets/ice coffee.jpg',
    description: 'lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Ice Coffee',
    price: 150,
  ),
  NearByProduct(
    image: 'assets/Black Coffee.png',
    description: 'lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Black Coffee',
    price: 50,
  ),
  NearByProduct(
    image: 'assets/Cold Coffee.png',
    description: 'lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Cold Coffee',
    price: 250,
  ),
  NearByProduct(
    image: 'assets/caffe mocha.jpg',
    description: 'lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Caffe Mocha',
    price: 150,
  ),
  NearByProduct(
    image: 'assets/banner.jpg',
    description: 'lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Creamy Coffee',
    price: 100,
  ),
  NearByProduct(
    image: 'assets/coffee.jpg',
    description: 'lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Coffee',
    price: 170,
  ),
  NearByProduct(
    image: 'assets/cortado.png',
    description: 'lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Cortado Coffee',
    price: 350,
  ),
  NearByProduct(
    image: 'assets/Espresso.png',
    description: 'lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Espresso Coffee',
    price: 200,
  ),
];