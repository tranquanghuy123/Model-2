import 'package:flutter/material.dart';
import 'package:model2/PageOne.dart';
import 'package:model2/PageThree.dart';
import 'package:model2/PageTwo.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Introduce extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _IntroduceState();
  }
}
class _IntroduceState extends State<Introduce>{

  PageController _controller = PageController();
  bool isShowKembaliButton = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => isShowKembaliButton = _controller.page! > 0);

  }
  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [

          //Page view
          PageView(
            //controller
            controller: _controller,

            children: [
              PageOne(),
              PageTwo(),
              PageThree(),
            ],
          ),

          //dot indicator
          Container(
            alignment: Alignment(0, 0.95),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                Visibility(
                  visible: isShowKembaliButton,
                  child:  GestureDetector(
                  onTap: (){
                    _controller.nextPage(duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  child: Text('Kembali', style:
                  TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 14, color: Colors.lightBlueAccent,
                      fontFamily: 'Public Sans'
                  ),),
                ),),
                
                SmoothPageIndicator(
                  controller: _controller, count: 3,
                ),

                GestureDetector(
                  onTap: (){


                    _controller.nextPage(duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                    setState(() {
                      isShowKembaliButton = true;
                    });
                  },
                  child: Text('Selanjutnya', style:
                  TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 14,color: Colors.lightBlueAccent,
                      fontFamily: 'Public Sans'
                  ),),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

}