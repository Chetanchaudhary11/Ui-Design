import 'package:flutter/material.dart';

class Bill_History extends StatefulWidget {
  const Bill_History({super.key});

  @override
  State<Bill_History> createState() => _Bill_HistoryState();
}

class _Bill_HistoryState extends State<Bill_History> {
  List<BillItem> billHistory = [
    BillItem(name: 'Tea', amount: 20.0),
    BillItem(name: 'Coffe', amount: 30.0),
    BillItem(name: 'Lassi', amount: 120.0),
    BillItem(name: 'Sweet', amount: 200.0),
    BillItem(name: 'Chees', amount: 80.0),
    BillItem(name: 'Ghee', amount: 350.0),
    BillItem(name: 'Suip', amount: 125.0),
    BillItem(name: 'Sargavo', amount: 200.0),
    BillItem(name: 'Lemon tea', amount: 150.0),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Bill History'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: billHistory.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(billHistory[index].name,style: TextStyle(color: Color.fromARGB(255, 244, 123, 114),fontSize: 25),),
              subtitle: Text('\₹${billHistory[index].amount.toStringAsFixed(2)}',
                style: TextStyle(color: Color.fromARGB(255, 2, 52, 8,),fontSize: 20),),
            );
          },
        ),
      ),
    );
  }
}

class BillItem {
  final String name;
  final double amount;

  BillItem({required this.name, required this.amount});
} 