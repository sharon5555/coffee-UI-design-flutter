
import 'package:coffee_ui/model/nearby_model.dart';
import 'package:coffee_ui/model/special_model.dart';
import 'package:coffee_ui/widgets/banner.dart';
import 'package:coffee_ui/widgets/custom_appbar.dart';
import 'package:coffee_ui/widgets/nearbyproduct_card.dart';
import 'package:coffee_ui/widgets/special_product_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
Widget build(BuildContext context) {
  return Scaffold(
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Custom AppBar
              const CustomAppBar(),

              const SizedBox(height: 20),

              // App Banner
              const AppBanner(),

              const SizedBox(height: 20),

              // Heading of Nearby Product
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Nearby",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.orange,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "See More",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.lime,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Indoor & Outdoor Coffee
              Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                            child: Text(
                              "Indoor",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: const Center(
                          child: Text(
                            "Outdoor",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Nearby Product
              SizedBox(
                height: 210,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: nearproductinfo.length,
                  itemBuilder: (context, index) => NearByProductCard(
                    product: nearproductinfo[index],
                    press: () {},
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              // Special Products......
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Special for you",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.orange,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "See More",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.lime,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 210,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: specialProducts.length,
                  itemBuilder: (context, index) => SpecialProductCard(
                    specialProducts: specialProducts[index],
                    press: () {},
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    ),
    bottomNavigationBar: Container(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      height: 50.0,
      decoration: const BoxDecoration(color: Color(0xFF1A1819)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.home, color: Colors.orange),
          const Icon(Icons.shopping_bag, color: Color(0xFF4E4F53)),
          const Icon(Icons.favorite, color: Color(0xFF4E4F53)),
          Stack(
            children: [
              const Icon(Icons.notification_add_outlined, color: Color(0xFF4E4F53)),
              Positioned(
                top: 2.0,
                left: 15.0,
                child: Container(
                  height: 7.0,
                  width: 7.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.5),
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
}