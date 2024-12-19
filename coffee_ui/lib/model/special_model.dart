class SpecialProduct {
  late final String description, image, name;
  late final double price;

  SpecialProduct({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
  });
}

List specialproduct = [
  SpecialProduct(
    image: 'assets/americano.png',
    description: 'lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Americano Coffee',
    price: 150,
  ),
  SpecialProduct(
    image: 'assets/ice coffee.jpg',
    description: 'lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Ice Coffee',
    price: 150,
  ),
  SpecialProduct(
    image: 'assets/Black Coffee.png',
    description: 'lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Black Coffee',
    price: 50,
  ),
  SpecialProduct(
    image: 'assets/Cold Coffee.png',
    description: 'lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Cold Coffee',
    price: 250,
  ),
  SpecialProduct(
    image: 'assets/caffe mocha.jpg',
    description: 'lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Caffe Mocha',
    price: 150,
  ),
  SpecialProduct(
    image: 'assets/banner.jpg',
    description: 'lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Creamy Coffee',
    price: 100,
  ),
  SpecialProduct(
    image: 'assets/coffee.jpg',
    description: 'lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Coffee',
    price: 170,
  ),
  SpecialProduct(
    image: 'assets/cortado.png',
    description: 'lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Cortado Coffee',
    price: 350,
  ),
  SpecialProduct(
    image: 'assets/Espresso.png',
    description: 'lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Espresso Coffee',
    price: 200,
  ),
];