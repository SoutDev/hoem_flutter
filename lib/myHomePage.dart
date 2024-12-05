import 'package:flutter/material.dart';

class myHomePage extends StatefulWidget {
  const myHomePage({super.key});

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  int count = 0;

  void Increment() {
    setState(() {
      count++;
    });
  }

  void Decrement() {
    if (count > 0) {
      setState(() {
        count--;
      });
    } else {
      showAlert();
    }
  }

  void showAlert() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("ຄຳເຕືອນ"),
          content: Text("ກົດຮອດເເຕ່ 0"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("ຕົກລົງ"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        title: Text("ຮ້ານ cw2"),
        actions: [
          //ສາມາດໃສ່ໄດ້ຫຼາຍອັນ
          IconButton(
            onPressed: () {
              Increment();
            },
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {
              Decrement();
            },
            icon: Icon(Icons.remove),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "ສະເເດງຕົວເລກທີນັບ",
              style: TextStyle(color: Colors.blue, fontSize: 22),
            ),
            Text(
              '$count',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          Increment();
        },
        child: Icon(
          Icons.add,
          size: 28,
          color: Colors.white,
        ),
      ),
    );
  }
}
