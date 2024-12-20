class SpecialProduct {
  final String name;
  final String image;
  final String description;
  final double price;

  const SpecialProduct({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
  });
}

List<SpecialProduct> specialProducts = [
  const SpecialProduct(
    image: 'assets/americano.jpeg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Americano Coffee',
    price: 150.0,
  ),
  const SpecialProduct(
    image: 'assets/icecoffee.jpg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Ice Coffee',
    price: 70.0,
  ),
  const SpecialProduct(
    image: 'assets/blackcoffee.jpeg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Black Coffee',
    price: 50.0,
  ),
  const SpecialProduct(
    image: 'assets/hotcoffee.jpeg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Hot Coffee',
    price: 250.0,
  ),
  const SpecialProduct(
    image: 'assets/caffe mocha.jpg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Caffe Mocha',
    price: 150.0,
  ),
  const SpecialProduct(
    image: 'assets/banner.jpg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Black Coffee',
    price: 100.0,
  ),
  const SpecialProduct(
    image: 'assets/coffee.jpg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Coffee',
    price: 170.0,
  ),
  const SpecialProduct(
    image: 'assets/cortado.jpeg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Cortado Coffee',
    price: 350.0,
  ),
  const SpecialProduct(
    image: 'assets/espresso.jpeg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
    name: 'Espresso Coffee',
    price: 200.0,
  ),
];
