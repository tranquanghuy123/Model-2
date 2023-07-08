import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 86),

            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset('assets/pictures/hai.png', height: 330,
                width: 352),
            ),

            SizedBox(height: 37),

            Container(
              height: 60,
              width: 266,
              //color: Colors.green,
              child: Column(
                children: [
                  Text('Mudah dalam bertransaksi,', style:
                  TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 21,
                      fontFamily: 'Product Sans'
                  ),),
                  Text('degan Jumot', style:
                  TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 21,
                      fontFamily: 'Product Sans'
                  ),),
                ],
              ),
            ),

            SizedBox(height: 19),

            Container(
              height: 63,
              width: 305,
              //color: Colors.green,
              child: Column(
                children: [
                  Text('Jual beli bisa dilakukan secara cod agar dapat', style:
                  TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 14,
                      fontFamily: 'Roboto'
                  ),),
                  Text('mengecek barang yang akan kita beli', style:
                  TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 14,
                      fontFamily: 'Roboto'
                  ),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}