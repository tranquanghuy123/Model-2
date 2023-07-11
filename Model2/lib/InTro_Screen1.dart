import 'package:flutter/material.dart';

class introScreen1 extends StatelessWidget {
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
              child: Image.asset(
                'assets/pictures/mot.png',
                height: 330,
                width: 352,
              ),
            ),
            SizedBox(height: 37),
            const SizedBox(
              height: 60,
              width: 266,
              //color: Colors.green,
              child: Column(
                children: [
                  Text(
                    'Mudah dalam bertransaksi,',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 21,
                        fontFamily: 'Product Sans'),
                  ),
                  Text(
                    'degan Jumot',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 21,
                        fontFamily: 'Product Sans'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 19),
            const SizedBox(
              height: 63,
              width: 305,
              //color: Colors.green,
              child: Column(
                children: [
                  Text(
                    'Bisnis jual beli menjangkau ke seluruh wilayah',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: 'Roboto'),
                  ),
                  Text(
                    'di Indonesia',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: 'Roboto'),
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
