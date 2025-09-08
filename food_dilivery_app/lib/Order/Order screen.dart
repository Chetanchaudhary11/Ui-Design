import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_dilivery_app/widgets/order.dart';

class Orderscreen extends StatefulWidget {
  const Orderscreen({super.key});

  @override
  State<Orderscreen> createState() => _OrderscreenState();
}

class _OrderscreenState extends State<Orderscreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFFFFFFF),
        title: Row(
          children: [
            const Text("Back"),
            const Spacer(),
            GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  "assets/images/more-square.svg",
                  height: 24,
                  width: 24,
                )),
            const SizedBox(width: 16.0),
            GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  "assets/images/search-normal.svg",
                  height: 24,
                  width: 24,
                )),
            const SizedBox(width: 16.0),
            GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  "assets/images/shopping-bag.svg",
                  height: 24,
                  width: 24,
                )),
          ],
        ),
      ),
      backgroundColor: const Color(0XFFFFFFFF),
      body: SingleChildScrollView(
        child: OrderContent(
          tabController: _tabController!,
        ), // Use the OrderContent widget
      ),
    );
  }
}
