import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  myAchive(num,type){
    return Row(
      children: [
        Text(num,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        Container(margin:EdgeInsets.only(top:10,left: 5),child: Text(type)),
      ],
    );
  }
  mySpec(icon,tech){
    return Container(
      width: 105,
      height: 115,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Colors.deepPurpleAccent.shade100,
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(child: Image.asset(icon),backgroundColor: Colors.deepPurpleAccent.shade100,radius: 20,),
              SizedBox(height: 5.0,),
              Text(tech,style: TextStyle(
                  fontSize: 16
              ),)
            ],
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
          color: Colors.white,icon: Icon(Icons.menu),
          itemBuilder: (context)=>[
            PopupMenuItem(child: TextButton(
              child: Text('About Me',style: TextStyle(color: Colors.black),),
              onPressed: (){
               Navigator.pushNamed(context, 'about');
              },
            )),
            PopupMenuItem(child: TextButton(
              child: Text('Projects',style: TextStyle(color: Colors.black),),
              onPressed: (){
                Navigator.pushNamed(context, 'projects');
              },
            ))
          ],
        ),
        title: Text('My Portfolio'),
        elevation: 0,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(//enabling snapping.This is true by default
          snap: true,
          snappings: [0.38,0.7,1.0],//set custom snapping points
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(margin:EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
                // child: ShaderMask(
                //   shaderCallback: (rect){
                //     return LinearGradient(begin:Alignment.center,end:Alignment.bottomCenter,colors: [Colors.grey,Colors.transparent]).createShader(Rect.fromLTRB(0,0, rect.width, rect.height));
                //   },
                //     blendMode: BlendMode.dstIn,
                    child: Image.asset('assets/photo.jpg'),height: 400,),
              Text('Mohit Roy',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
              SizedBox(height: 10,),
              Text('Flutter Developer',style: TextStyle(fontSize: 20,color: Colors.white),),
              SizedBox(height: 5,),
              Text('University: Sarla Birla University',style: TextStyle(fontSize: 20,color: Colors.white),),
              SizedBox(height: 5,),
              Text('Gmail: mohitroyranchi444@gmail.com',style: TextStyle(fontSize: 20,color: Colors.white),),
            ],
          ),
        ),
        builder: (context, state) {
          return Container(
            margin: EdgeInsets.only(left: 20.0,right: 20.0,top: 30),
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    myAchive('4','Projects'),
                    myAchive('4','stars java'),
                    myAchive('2','CodingComp')

                  ],
                ),
                SizedBox(height: 30,),
                Text('Specialised In',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20),),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    mySpec('assets/android.png', 'Android'),
                    mySpec('assets/flutter.webp', 'Flutter'),
                    mySpec('assets/firebase.webp', 'Firebase'),
                  ],
                ),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    mySpec('assets/java.png', 'Java'),
                    mySpec('assets/dart1.png', 'Dart'),
                    mySpec('assets/api.png', 'Rest API'),
                  ],
                ),
              ],
            )
          );
        }),
    );
  }
}
