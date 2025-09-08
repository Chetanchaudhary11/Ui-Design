import 'package:flutter/material.dart';

class Burgers extends StatefulWidget {
  const Burgers({super.key});

  @override
  State<Burgers> createState() => _BurgersState();
}

class _BurgersState extends State<Burgers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Burgers",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Image.asset(
                    "assets/images/Burger.jpg",
                    width: 106,
                    height: 49,
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    'BBQ Chicken Burger',
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                  subtitle: Row(
                    children: [
                      Image.asset(
                        "assets/images/k.jpg",
                        width: 20.64,
                        height: 21,
                      ),
                      SizedBox(width: 5),
                      Text('KFC'),
                    ],
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  leading: Image.asset(
                    'assets/images/Burger.jpg',
                    height: 49,
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    'BBQ Chicken Burger',
                    style: TextStyle(fontSize: 17),
                  ),
                  subtitle: Row(
                    children: [
                      Image.asset(
                        "assets/images/k.jpg",
                        width: 20,
                        height: 20,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 5),
                      Text('KFC'),
                    ],
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/m.jpg"),
                    radius: 25,
                  ),
                  title: Text('McDonald\'s', style: TextStyle(fontSize: 17)),
                  subtitle: Text('18915 Queens Road, Brampton, ON',
                      style: TextStyle(fontSize: 13)),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/m.jpg"),
                    radius: 25,
                  ),
                  title: Text('McDonald\'s', style: TextStyle(fontSize: 17)),
                  subtitle: Text('18915 Queens Road, Brampton, ON',
                      style: TextStyle(fontSize: 13)),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/m.jpg"),
                    radius: 25,
                  ),
                  title: Text('McDonald\'s', style: TextStyle(fontSize: 17)),
                  subtitle: Text('18915 Queens Road, Brampton, ON',
                      style: TextStyle(fontSize: 13)),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/m.jpg"),
                    radius: 25,
                  ),
                  title: Text('McDonald\'s', style: TextStyle(fontSize: 17)),
                  subtitle: Text('18915 Queens Road, Brampton, ON',
                      style: TextStyle(fontSize: 13)),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/m.jpg"),
                    radius: 25,
                  ),
                  title: Text('McDonald\'s', style: TextStyle(fontSize: 17)),
                  subtitle: Text('18915 Queens Road, Brampton, ON',
                      style: TextStyle(fontSize: 13)),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/m.jpg"),
                    radius: 25,
                  ),
                  title: Text('McDonald\'s', style: TextStyle(fontSize: 17)),
                  subtitle: Text('18915 Queens Road, Brampton, ON',
                      style: TextStyle(fontSize: 13)),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
                Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
