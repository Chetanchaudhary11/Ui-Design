import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_dilivery_app/Order/Order%20screen.dart';
import 'package:food_dilivery_app/widgets/images.dart';

class MoreOption extends StatefulWidget {
  const MoreOption({super.key});

  @override
  State<MoreOption> createState() => _MoreOptionState();
}

class _MoreOptionState extends State<MoreOption> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showBottomSheet();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Orderscreen());
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * 0.40,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 40),
            SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    leading: SvgPicture.asset(AssetImageClass.person,height: 24,width: 24,),
                    title: Text(
                      "Order with Friends",
                      style: TextStyle(
                        color: Color(0XFF292D32),
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: SvgPicture.asset(AssetImageClass.heart,height: 24,width: 24),
                    title: Text(
                      "Add to Favourites",
                      style: TextStyle(
                        color: Color(0XFF292D32),
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading:SvgPicture.asset(AssetImageClass.share,height: 24,width: 24),
                    title: Text(
                      "Share to...",
                      style: TextStyle(
                        color: Color(0XFF292D32),
                        fontSize: 17,
                      ),
                    ),
                    
                  ),
                  Divider(),
                  ListTile(
                    leading: SvgPicture.asset(AssetImageClass.report,height: 24,width: 24),
                    title: Text(
                      "Report Store",
                      style: TextStyle(
                        color: Color(0XFF292D32),
                        fontSize: 17,
                      ),
                    ),
                   
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
