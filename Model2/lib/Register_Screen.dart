import 'package:flutter/material.dart';

class registerScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _registerScreenState();
  }
}
class _registerScreenState extends State<registerScreen>{

  /// show the password or not
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        //color: Colors.blue,
        padding: EdgeInsets.fromLTRB(30, 86, 30, 30),
        height: heightScreen,
        width: widthScreen,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/pictures/bon1.png', height: 330, width: 352),

              SizedBox(height: 64),

              ///name (Nama Lengkap)
              const SizedBox(
                height: 52,
                width: 354,
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    fontSize: 16, fontFamily: 'Montserrat',
                  ),
                  decoration: InputDecoration(
                    hintText: 'Nama Lengkap',
                    contentPadding: EdgeInsets.fromLTRB(20, 15, 0, 15),
                      hintStyle: TextStyle(color: Color.fromARGB(255, 217, 217, 217),
                          fontSize: 16, fontFamily:'Montserrat'),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    )
                  ),
                ),
              ),

              SizedBox(height: 24),


              ///email
              const SizedBox(
                height: 52,
                width: 354,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    fontSize: 16, fontFamily: 'Montserrat',
                  ),
                  decoration: InputDecoration(
                      hintText: 'Email',
                      contentPadding: EdgeInsets.fromLTRB(20, 15, 0, 15),
                      hintStyle: TextStyle(color: Color.fromARGB(255, 217, 217, 217),
                      fontSize: 16, fontFamily:'Montserrat' ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      )
                  ),
                ),
              ),

              SizedBox(height: 24),

              ///Nomor HP (số điện thoại)
              const SizedBox(
                height: 52,
                width: 354,
                child: TextField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: 16, fontFamily: 'Montserrat',
                  ),
                  decoration: InputDecoration(
                      hintText: 'Nomor HP',
                      contentPadding: EdgeInsets.fromLTRB(20, 15, 0, 15),
                      hintStyle: TextStyle(color: Color.fromARGB(255, 217, 217, 217),
                          fontSize: 16, fontFamily:'Montserrat' ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      )
                  ),
                ),
              ),


              SizedBox(height: 24),

              //pasword
              SizedBox(
                height: 52,
                width: 354,
                child: TextField(
                  obscureText: _isObscure,
                  keyboardType: TextInputType.text,
                  style: const TextStyle(
                    fontSize: 16, fontFamily: 'Montserrat',
                  ),
                  decoration: InputDecoration(
                    // this button is used to toggle the password visibility
                      suffixIcon: IconButton(
                          icon: Icon(
                              _isObscure ? Icons.visibility : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          }),
                      hintText: 'Password',
                      contentPadding: const EdgeInsets.fromLTRB(20, 15, 0, 15),
                      hintStyle: const TextStyle(color: Color.fromARGB(255, 217, 217, 217),
                          fontSize: 16, fontFamily:'Montserrat' ),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      )
                  ),
                ),
              ),


              SizedBox(height: 24),

              ///confirm pasword (Konfirmasi Password)
              SizedBox(
                height: 52,
                width: 354,
                child: TextField(
                  obscureText: _isObscure,
                  keyboardType: TextInputType.text,
                  style: const TextStyle(
                    fontSize: 16, fontFamily: 'Montserrat',
                  ),
                  decoration: InputDecoration(
                    // this button is used to toggle the password visibility
                      suffixIcon: IconButton(
                          icon: Icon(
                              _isObscure ? Icons.visibility : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          }),
                      hintText: 'Konfirmasi Password',
                      contentPadding: const EdgeInsets.fromLTRB(20, 15, 0, 15),
                      hintStyle: const TextStyle(color: Color.fromARGB(255, 217, 217, 217),
                          fontSize: 16, fontFamily:'Montserrat' ),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      )
                  ),
                ),
              ),

              SizedBox(height: 41),

              ///Mendaftar (đăng kí)
              TextButton(onPressed: (){},
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      minimumSize: Size(354, 52),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                      )),
                  child: const Text('Mendaftar', style: TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 15, fontFamily: 'Product Sans'
                  ),)
              ),

              SizedBox(height: 40),


              ///thanh bar ----Atau daftar menggunakan----
              Container(
                height: 20,
                width: 355,
                child: Row(
                  children: [
                    Container(
                      height: 3,
                      width: 86,
                      color: Color.fromARGB(255, 199, 199, 199),
                    ),

                    SizedBox(width: 8),
                    
                    Text('Atau daftar menggunakan', style: TextStyle(
                        color: Color.fromARGB(255, 199, 199, 199), fontSize: 11.968
                    ),),

                    SizedBox(width: 8),

                    Container(
                      height: 3,
                      width: 86,
                      color: Color.fromARGB(255, 199, 199, 199),
                    ),


                  ],
                ),
              ),

              SizedBox(height: 40),


              ///Google
              TextButton(onPressed: (){},
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.deepOrange,
                      minimumSize: Size(354, 52),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          side: BorderSide(width: 2, color: Colors.deepOrange)

                      )),
                  child: Row(
                    children: [
                      Image(image: AssetImage('assets/icons/google.png')),
                      SizedBox(width: 101),
                      Text('Google', style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 15, fontFamily: 'Product Sans'
                      ),)
                    ],
                  )

              ),

              SizedBox(height: 49),


              ///Ngày mai làm getdetructor để push vào screen login
              Container(
                height: 20,
                width: 355,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Sudah punya akun? silahkan ', style: TextStyle(
                        color: Colors.black, fontSize: 15
                    ),),

                    Text('masuk', style: TextStyle(
                        color: Colors.blueAccent, fontSize: 15
                    ),),

                  ],
                ),
              ),









            ],
          ),
        ),
      ),
    );
  }

}