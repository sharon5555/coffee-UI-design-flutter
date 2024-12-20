import 'package:coffee_ui/model/special_model.dart';
import 'package:flutter/material.dart';

class SpecialProductCard extends StatelessWidget {
  const SpecialProductCard({
    super.key,
    required this.specialProducts,
    required this.press,
  });

  final SpecialProduct specialProducts;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8, right: 12),
      child: InkWell(
        onTap: () {},
        child: Material(
          elevation: 4,
          borderRadius: BorderRadius.circular(20),
          child: Column(
            children: [
              // Product Image
              Container(
                height: 120,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white38,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(specialProducts.image), // Full path to image
                  ),
                ),
              ),
              // Product Details
              SizedBox(
                width: 180,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                        specialProducts.name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "\$${specialProducts.price}",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
