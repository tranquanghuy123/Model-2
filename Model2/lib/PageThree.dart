import 'package:flutter/material.dart';

class PageThree extends StatelessWidget{
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
              child: Image.asset('assets/pictures/ba.png', height: 330,
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
                  Text('Beli kendaraan sesuai minatmu dan', style:
                  TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 14,
                      fontFamily: 'Roboto'
                  ),),
                  Text('dengan harga negosiasi terbaik', style:
                  TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 14,
                      fontFamily: 'Roboto'
                  ),),
                ],
              ),
            ),
            SizedBox(height: 0),

            TextButton(onPressed: (){},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  foregroundColor: Colors.white,
                  minimumSize: Size(354, 52),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))

                ),
                child: Text('Mask', style: TextStyle(
                  fontWeight: FontWeight.w700, fontSize: 15, fontFamily: 'Product Sans'
                ),)
            ),

            SizedBox(height: 10,),

            TextButton(onPressed: (){},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.blue,
                  minimumSize: Size(354, 52),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  side: BorderSide(width: 2, color: Colors.blue)

                )),
                child: Text('Mendaftar', style: TextStyle(
                    fontWeight: FontWeight.w700, fontSize: 15, fontFamily: 'Product Sans'
                ),)
            )

          ],
        ),
      ),
    );
  }

}