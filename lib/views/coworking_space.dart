import 'package:flutter/material.dart';
import 'package:safe_hub_ui/views/profile.dart';
import 'package:get/get.dart';
class Coworking extends StatefulWidget {
  @override
  _CoworkingState createState() => _CoworkingState();
}

class _CoworkingState extends State<Coworking> {

  final List<Map<String, dynamic>> _listItem = [
    {"image": 'assets/two.jpg'},
    {"image": 'assets/three.jpg'},
    {"image": 'assets/four.jpg'},
    {"image": 'assets/five.jpg'},
    {"image": 'assets/one.jpg'},
    {"image": 'assets/two.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Safe_Hub_Working_Space"),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/safehub.jpg'),
                        fit: BoxFit.cover
                    )
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.orangeAccent.withOpacity(.4),
                            Colors.orangeAccent.withOpacity(.2),
                          ]
                      )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text("Learn and connect with companies,Start-ups, entreprnuers here in our Hub", style: TextStyle(color: Colors.white, fontSize: 35,),),
                      SizedBox(height: 30,),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                      ),
                      SizedBox(height: 30,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: _listItem.map((item) => Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(item["image"]),
                                fit: BoxFit.cover
                            )
                        ),
                        child: Transform.translate(
                          offset: Offset(55, -58),
                          child: Container(
                            width: 30,
                            // height: 30,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(),
                            child: Center(
                              child: MaterialButton(
                                onPressed: () {
                                  Get.to(()=>Profile());
                                },
                                color: Colors.orangeAccent[50],
                                height: 35,
                                minWidth: 40,
                                padding: EdgeInsets.all(0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)
                                ),
                              ),
                            ),
                          ),
                          // child: InkWell(
                          //   onLongPress: () {},
                          //   child: Container(
                          //     margin: EdgeInsets.symmetric(horizontal:70, vertical: 71),
                          //     decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(8),
                          //       color: Colors.white
                          //     ),
                          //     child: Icon(Icons.bookmark_border, size: 22,),
                          //   ),
                          // ),
                        ),
                      ),
                    )).toList(),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}