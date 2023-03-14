import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    myPro(lang,name,stars,url){
      return Container(
        height: 220,
        child: Card(
          elevation: 1,
          color: Colors.deepPurpleAccent,
          child: Container(
            margin: EdgeInsets.only(left: 20,right: 20,top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,style: TextStyle(color: Colors.white,fontSize: 18),),
                SizedBox(height: 15,),
                Text(lang,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Icon(Icons.star,
                      color: Colors.white,
                      size: 18,),
                    SizedBox(width: 4,),
                    Text(stars,style: TextStyle(fontSize: 18,color:Colors.white),),
                    Expanded(child: Container()),
                    IconButton(onPressed: ()async{
                      String urlString=url;
                      Uri uri=Uri.parse(urlString);
                        await launchUrl(uri);
                    }, icon: Icon(FontAwesomeIcons.github,color: Colors.white,size: 30,))
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Projects'),
        elevation: 0,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myPro('Flutter,Firebase','Order saver', '9','https://github.com/mohitroy234/Coffee-Order'),
              myPro('Flutter','Book Rent', '8','https://github.com/mohitroy234/Book-rent-app'),
              myPro('Flutter','Trading app', '8','https://github.com/mohitroy234/Trading-app'),
              myPro('Java','Sticky note application', '9','https://github.com/mohitroy234/Sticky-Note-App'),
            ],
          ),
        ),
      ),
    );
  }
}
