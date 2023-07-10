import 'package:flutter/material.dart';

class beresScreen extends StatelessWidget{
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
              child: Image.asset('assets/pictures/nam.png', height: 330,
                width: 352,),
            ),

            SizedBox(height: 37),

            Container(
              height: 58,
              width: 292,
              //color: Colors.green,

              child: Column(
                children: [
                  Text('Selamat!', style:
                  TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 20,
                      fontFamily: 'Product Sans'
                  ),),
                  Text('Anda sudah berhasil mendaftar', style:
                  TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 20,
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
                  Text('Silahkan periksa email anda untuk melakukan', style:
                  TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 14,
                      fontFamily: 'Roboto'
                  ),),
                  Text('verifikasi sebelum melakukan Login.', style:
                  TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 14,
                      fontFamily: 'Roboto'
                  ),),
                ],
              ),
            ),

            SizedBox(height: 80),


            ///Lanjutkan (tiep tuc)
            TextButton(onPressed: (){},
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    minimumSize: Size(354, 52),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    )),
                child: const Text('Lanjutkan', style: TextStyle(
                    fontWeight: FontWeight.w700, fontSize: 15, fontFamily: 'Product Sans'
                ),)
            ),
          ],
        ),
      ),
    );
  }

}