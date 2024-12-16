import 'package:coffee_ui/model/nearby_model.dart';
import 'package:flutter/material.dart';

class SpecialProductCard extends StatelessWidget {
  const SpecialProductCard({
    super.key,
    required this.product,
    required this.press,
  });

  final NearByProduct product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8, right: 12),
      child: InkWell(
        onTap: press,
        child: Material(
          elevation: 4,
          borderRadius: BorderRadius.circular(20),
          child: Column(
            children: [
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
                    image: AssetImage(product.image),
                  ),
                ),
              ),
              SizedBox(
                width: 180,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                        product.name,
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
                        "\$${product.price}",
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
