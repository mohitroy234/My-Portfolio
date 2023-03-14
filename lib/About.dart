import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('My Portfolio'),
        elevation: 0,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 100.0,right: 15.0,left: 15.0,bottom: 30.0),
                child: ClipOval(
                  child: Image.asset('assets/photo.jpg',fit: BoxFit.cover,height: 400,width: 500,),),
              ),
              SizedBox(height: 10,),
              Text('Hello I am',style: TextStyle(fontSize: 30,color: Colors.white),),
              SizedBox(height: 10,),
              Text('Mohit Roy',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
              SizedBox(height: 10,),
              Text('Flutter Developer',style: TextStyle(fontSize: 20,color: Colors.white),),
              SizedBox(height: 20,),
              SizedBox(width:120,child: TextButton(onPressed: (){}, child: Text('Hire me'),style: TextButton.styleFrom(backgroundColor: Colors.white),)),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: () async {

                    String urlString='https://www.linkedin.com/in/mohit-roy-7b0085225/';
                    Uri uri=Uri.parse(urlString);
                      await launchUrl(uri);
                      },
                      icon: Icon(FontAwesomeIcons.linkedin,color: Colors.white,size: 40,)),
                      SizedBox(width: 10,),
                      IconButton(onPressed: () async {
                        String urlString='https://github.com/mohitroy234';
                        Uri uri=Uri.parse(urlString);
                      await launchUrl(uri);
                      },
                        icon: Icon(FontAwesomeIcons.github,color: Colors.white,size: 40,)),
                      SizedBox(width: 10,),
                      IconButton(onPressed: () async {
                        String urlString='https://www.hackerrank.com/mohitroyranchi41';
                        Uri uri=Uri.parse(urlString);
                          await launchUrl(uri);
                        },
                          icon: Icon(FontAwesomeIcons.hackerrank,color: Colors.white,size: 40,)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
