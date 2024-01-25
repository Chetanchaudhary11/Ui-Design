import 'package:flutter/material.dart';
import 'package:tea_diary/Screens/Bill%20HIstory.dart';
import 'package:tea_diary/Screens/Manage%20item.dart';
import 'package:tea_diary/Screens/SellerList.dart';
import 'package:tea_diary/Screens/generate%20bill.dart';

class Dashboard_Screen extends StatefulWidget {
  const Dashboard_Screen({super.key});

  @override
  State<Dashboard_Screen> createState() => _Dashboard_ScreenState();
}

class _Dashboard_ScreenState extends State<Dashboard_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Tea Diary",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.brown,
        ),
        drawer: Drawer( // Drawer Box .....................
          child: ListView(
            padding: EdgeInsets.zero,
            children:<Widget>[
              DrawerHeader(
                decoration: BoxDecoration(), 
                child: Text(
                'Tea Diary',
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 24,
                ),
              ),
              ),// Close DrawerHeader...............
            ListTile(
              title: Text('Seller'),
              onTap: () {
                Navigator.pop(context); // Close the drawer............
              },
              ),
            ListTile(
              title: Text('Item menu'),
              onTap: () {
                Navigator.pop(context); // Close the drawer..........
              },
            ),
            ListTile(
              title: Text('Billing'),
              onTap: () {
                Navigator.pop(context); // Close the drawer.............
              },
            ),
            ListTile(
              title: Text('Seller Item List'),
              onTap: () {
                Navigator.pop(context); // Close the drawer..........
              },
            ),
            Divider(  // divider ............
             color: Colors.black,
             height: 10,
            ),
            SizedBox(
              height: 20,
            ),
          Container(
            child:Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Icon(Icons.share,size: 30,),
                    ],
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text("Share",style: TextStyle(color: Colors.black,fontSize: 20),),
                  ),
                )
              ],
            ),
          )
            ],
          ),
          
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(  //v-1
                child: Row(
                  children: [
                    Container(
                      color: Colors.brown,
                      height: 250,
                      width: MediaQuery.of(context).size.width / 2 - 15,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("0",style: TextStyle(color: Colors.white,fontSize: 40),),
                          Text("Tea/Coffee in\n     August",style: TextStyle(color: Colors.white,fontSize: 25),)
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      color: Colors.brown,
                      height: 250,
                      width: MediaQuery.of(context).size.width / 2 - 15,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("₹ 0",style: TextStyle(color: Colors.white,fontSize: 40),),
                          Text("Amount of\n   August",style: TextStyle(color: Colors.white,fontSize: 25),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Container(  //v-2
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Seller_List()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:Color.fromARGB(255, 223, 104, 104)
                          ),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        height: 100,
                        width: MediaQuery.of(context).size.width/3-20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.group,size: 40,color: Colors.brown,),
                            Text("Seller")
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Manage_Menu()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 223, 104, 104)
                          ),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        height: 100,
                        width: MediaQuery.of(context).size.width/3-20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.restaurant_menu_sharp,size: 40,color: Colors.brown,),
                            Text("item")
                          ],
                        ),
                      ),
                    ),
                    InkWell(  //on tap event
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>Seller_List()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 223, 104, 104)
                          ),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        height: 100,
                        width: MediaQuery.of(context).size.width/3-20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.person,size: 40,color: Colors.brown,),
                            Text("Sellerwise item")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Container(  //v-3
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => Bill_History()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 223, 104, 104)
                          ),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        height: 100,
                        width: MediaQuery.of(context).size.width/3-20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.book,size: 40,color: Colors.brown,),
                            Text("New Order")
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Generate_bill()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 223, 104, 104)
                          ),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        height: 100,
                        width: MediaQuery.of(context).size.width/3-20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.app_registration,size: 40,color: Colors.brown,),
                            Text("Generate Bill")
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Bill_History()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 223, 104, 104)
                          ),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        height: 100,
                        width: MediaQuery.of(context).size.width/3-20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.history,size: 40,color: Colors.brown,),
                            Text("Bill History")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.share),
          backgroundColor: Colors.brown,
        ),
      );
  }
}


