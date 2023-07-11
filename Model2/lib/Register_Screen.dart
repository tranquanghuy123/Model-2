import 'package:flutter/material.dart';
import 'package:model2/Beres_Screen.dart';
import 'package:model2/Login_Screen.dart';
import 'package:fluttertoast/fluttertoast.dart';
class registerScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _registerScreenState();
  }
}

class _registerScreenState extends State<registerScreen> {
  /// show the password or not
  bool _isObscure = true;

  ///Global key
  final _formkey = GlobalKey<FormState>();

  ///Controller
  final _usernameController = TextEditingController();
  final _numberController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.asset('assets/pictures/bon1.png',
                    height: 330, width: 352),

                SizedBox(height: 64),

                ///name (Nama Lengkap)
                SizedBox(
                  height: 52,
                  width: 354,
                  child: TextFormField(
                      controller: _usernameController,
                      keyboardType: TextInputType.text,
                      style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                      ),
                      decoration: const InputDecoration(
                          hintText: 'Nama Lengkap',
                          contentPadding: EdgeInsets.fromLTRB(20, 15, 0, 15),
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 217, 217, 217),
                              fontSize: 16,
                              fontFamily: 'Montserrat'),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.blue),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your username';
                        } else if (value.length < 4) {
                          return 'Username must be at least 4 character';
                        } else {
                          return null;
                        }
                      }),
                ),

                SizedBox(height: 24),

                ///email
                SizedBox(
                  height: 52,
                  width: 354,
                  child: TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                    ),
                    decoration: const InputDecoration(
                        hintText: 'Email',
                        contentPadding: EdgeInsets.fromLTRB(20, 15, 0, 15),
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 217, 217, 217),
                            fontSize: 16,
                            fontFamily: 'Montserrat'),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.blue),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email address';
                      } else if (!value.contains('@') || !value.contains('.')) {
                        return 'Please enter a valid email address';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),

                SizedBox(height: 24),

                ///Nomor HP (số điện thoại)
                SizedBox(
                  height: 52,
                  width: 354,
                  child: TextFormField(
                    controller: _numberController,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                    ),
                    decoration: const InputDecoration(
                        hintText: 'Nomor HP',
                        contentPadding: EdgeInsets.fromLTRB(20, 15, 0, 15),
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 217, 217, 217),
                            fontSize: 16,
                            fontFamily: 'Montserrat'),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.blue),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone number';
                      } else if (value.length < 8) {
                        return 'Please enter a valid phone number';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),

                SizedBox(height: 24),

                ///pasword
                SizedBox(
                  height: 52,
                  width: 354,
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: _isObscure,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                    ),
                    decoration: InputDecoration(
                        // this button is used to toggle the password visibility
                        suffixIcon: IconButton(
                            icon: Icon(_isObscure
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            }),
                        hintText: 'Password',
                        contentPadding:
                            const EdgeInsets.fromLTRB(20, 15, 0, 15),
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 217, 217, 217),
                            fontSize: 16,
                            fontFamily: 'Montserrat'),
                        enabledBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.blue),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      } else if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),

                SizedBox(height: 24),

                ///confirm pasword (Konfirmasi Password)
                SizedBox(
                  height: 52,
                  width: 354,
                  child: TextFormField(
                    obscureText: _isObscure,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                    ),
                    decoration: InputDecoration(
                        // this button is used to toggle the password visibility
                        suffixIcon: IconButton(
                            icon: Icon(_isObscure
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            }),
                        hintText: 'Konfirmasi Password',
                        contentPadding:
                            const EdgeInsets.fromLTRB(20, 15, 0, 15),
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 217, 217, 217),
                            fontSize: 16,
                            fontFamily: 'Montserrat'),
                        enabledBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.blue),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
                      } else if (value != _passwordController.text) {
                        return 'Password mismatch';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),

                SizedBox(height: 41),

                ///Mendaftar (đăng kí)
                TextButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => beresScreen()));
                      }
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        minimumSize: Size(354, 52),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        )),
                    child: const Text(
                      'Mendaftar',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          fontFamily: 'Product Sans'),
                    )),

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
                      const Text(
                        'Atau daftar menggunakan',
                        style: TextStyle(
                            color: Color.fromARGB(255, 199, 199, 199),
                            fontSize: 11.968),
                      ),
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
                TextButton(
                    onPressed: () {
                      Fluttertoast.showToast(
                          msg: 'successful google login!',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.TOP,
                          timeInSecForIosWeb: 2,
                          backgroundColor: Colors.green,
                          textColor: Colors.black,
                          fontSize: 15);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.deepOrange,
                        minimumSize: const Size(354, 52),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            side: BorderSide(
                                width: 2, color: Colors.deepOrange))),
                    child: const Row(
                      children: [
                        Image(image: AssetImage('assets/icons/google.png')),
                        SizedBox(width: 101),
                        Text(
                          'Google',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              fontFamily: 'Product Sans'),
                        )
                      ],
                    )),

                SizedBox(height: 30),

                ///push vào login page

                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => loginScreen()));
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sudah punya akun? silahkan ',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      Text(
                        'masuk',
                        style:
                            TextStyle(color: Colors.blueAccent, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
