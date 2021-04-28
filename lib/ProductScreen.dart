import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  final bgcolor = Color(0xfffdf1bc);
  final dark = Color(0xffa56c1e);
  final bottomcolor = Color(0xff309e37);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        backgroundColor: bgcolor,
        shadowColor: Colors.transparent,
        leading: Icon(
          Icons.arrow_back,
          color: dark,
          size: 30,
        ),
        title: Text(
          'Fruits',
          style: TextStyle(color: dark, fontSize: 25),
        ),
        toolbarHeight: 70,
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_basket,
              color: dark,
              size: 30,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Image.asset('assets/mango.png'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Alphonso \nMangoes',
                style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.w700, color: dark),
              ),
              Text(
                'Rs 150 / kilo',
                style: TextStyle(fontSize: 25, color: dark),
              )
            ],
          )
        ],
      ),
      bottomSheet: Container(
        color: bgcolor,
        child: Container(
          height: 290,
          decoration: BoxDecoration(
              color: bottomcolor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                width: 100,
                height: 240,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: bottomcolor,
                      child: Icon(Icons.add),
                    ),
                    Text(
                      '5',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text('kilo'),
                    CircleAvatar(
                      backgroundColor: bottomcolor,
                      radius: 30,
                      child: Icon(Icons.remove),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                width: 100,
                height: 240,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: bottomcolor,
                      child: Icon(Icons.sports_motorsports),
                    ),
                    Text(
                      '18',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text('min'),
                    CircleAvatar(
                      backgroundColor: bottomcolor,
                      radius: 30,
                      child: Icon(Icons.more_horiz),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                width: 100,
                height: 240,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '500',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      'rs/kilo',
                    ),
                    CircleAvatar(
                      backgroundColor: bottomcolor,
                      radius: 30,
                      child: Text('Buy'),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
