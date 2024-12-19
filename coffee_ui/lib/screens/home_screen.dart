// ignore_for_file: non_constant_identifier_names

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
                const SizedBox(
                  height: 20
                ),
                
                SizedBox(
                  height: 210,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: specialproduct.length,
                      itemBuilder: (context, index) => SpecialProductCard(
                        product: specialproduct[index],
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
    );
  }
}

