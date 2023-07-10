
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _loginScreenState();
  }
}

class _loginScreenState extends State<loginScreen>{

 bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 86, 30, 30),
        height: heightScreen,
        width: widthScreen,
        child: SingleChildScrollView(
          child: Column(
            children: [

              Image.asset('assets/pictures/sau.png', height: 330, width: 352),

              SizedBox(height: 44),

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

              SizedBox(height: 16),


              ///pasword
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

              SizedBox(height: 5),

              ///Lupa password?
              Container(
                height: 18,
                width: widthScreen,
                //color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Lupa password?', style: TextStyle(
                      color: Colors.black, fontSize: 14
                    ),)
                  ],
                )
              ),

              SizedBox(height: 24),

              ///Masuk (login - dang nhap)
              TextButton(onPressed: (){},
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                      foregroundColor: Colors.white,
                      minimumSize: Size(354, 52),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))

                  ),
                  child: Text('Masuk', style: TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 15, fontFamily: 'Product Sans'
                  ),)
              ),

              SizedBox(height: 38),

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

              SizedBox(height: 32),

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

              SizedBox(height: 33),


              ///chua co tai khoan- dang ki ngay (Belum punya akun? Mendaftar sekranag)
              Container(
                height: 20,
                width: 355,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Belum punya akun? ', style: TextStyle(
                        color: Colors.black, fontSize: 15
                    ),),

                    Text('Mendaftar', style: TextStyle(
                        color: Colors.blueAccent, fontSize: 15
                    ),),
                    Text('sekranag', style: TextStyle(
                        color: Colors.black, fontSize: 15
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