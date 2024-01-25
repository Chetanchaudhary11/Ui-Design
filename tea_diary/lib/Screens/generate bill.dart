import 'package:flutter/material.dart';
import 'package:tea_diary/Screens/New%20order.dart';

class Generate_bill extends StatefulWidget {
  const Generate_bill({super.key});

  @override
  State<Generate_bill> createState() => _Generate_BillState();
}
class _Generate_BillState extends State<Generate_bill> {
   
  DateTime selectedDate = DateTime.now();
  String selectedSeller = "Tea Seller";
  double teaAmount = 0.0;
  double coffeeAmount = 0.0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Generate Bill'),
      ),
      body: Container(
         color:Color.fromARGB(255, 237, 209, 166),
         child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [  // date picker 
              Text('Select Date:',style: TextStyle(color: Colors.black),),
              ElevatedButton(
                onPressed: () => _selectDate(context),
                child: Text('Select Date',style: TextStyle(color: Colors.red),),
              ),
              SizedBox(height: 20),
              Text('Select Seller:',style: TextStyle(color: Color.fromARGB(255, 12, 2, 150))),
              DropdownButton<String>(
                value: selectedSeller, //product name ......................................
                items: <String>['Tea Seller', 'Coffee Seller',]
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedSeller = newValue!;
                  });
                },
              ),
              SizedBox(height: 20), //Amount ..................................................
              Text('Tea Amount:',style: TextStyle(color: Colors.black,fontSize: 20)),
              TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    teaAmount = double.parse(value);
                  });
                },
              ),
              SizedBox(height: 20),
              Text('Coffee Amount:',style: TextStyle(color: Colors.black,fontSize: 20),),
              TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) {  //set state method.............................
                  setState(() {
                    coffeeAmount = double.parse(value);
                  });
                },
              ),
              SizedBox(height: 20),
              Container(
                child: ElevatedButton(
                  onPressed: () => _calculateTotal(),
                  child: Text('Calculate Total',style:TextStyle(color: Colors.black) ,),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _saveBilling(),
                child: Text('Save Billing',style:TextStyle(color: Colors.black) ),
              ),
            ],
          ),
        ),
      ),
    );
  }
// futur method  date picker here..............................................
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  void _calculateTotal() {
    double total = teaAmount + coffeeAmount;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Total Amount'),
          content: Text('Total: \Rs.,${total.toStringAsFixed(2)}',style: TextStyle(color: Colors.brown,fontSize: 20),),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(New_Order());
              },
              child: Text('OK',style: TextStyle(color: Colors.black),),
            ),
          ],
        );
      },
    );
  }

  void _saveBilling() {
    //  saving logic here.................................................
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Billing Saved'),
          content: Text('Billing details saved successfully.',style: TextStyle(fontSize: 20),),
          actions: <Widget>[
            TextButton(
              onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => New_Order()));
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
  