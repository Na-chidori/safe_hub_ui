import 'package:flutter/material.dart';
import 'package:safe_hub_ui/views/course_screen.dart';
class HomeScreen extends StatelessWidget {
  List catNames =[
    'Category',
    'Classes',
    'Opportunity_Listing',
    'Books',
    'Podcasts',
  ];
  List<Color> catColors=[
    Color(0xFFFFF3E0),
    Color(0xFFFFE0B2),
    Color(0xFFFFCC80),
    Color(0xFFFFB74D),
    Color(0xFFFFA726),
  ];
  List<Icon> catIcons=[
    Icon(Icons.category, color: Colors.white,size: 30,),
    Icon(Icons.video_library, color: Colors.white,size: 30,),
    Icon(Icons.assignment, color: Colors.white,size: 30,),
    Icon(Icons.store, color: Colors.white,size: 30,),
    Icon(Icons.play_circle_fill, color: Colors.white,size: 30,),

  ];
  List imgList=[
    'Project Management',
    'Grant Writing',
    'Public Speaking',
    'Peaceful Negotiation'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15,left: 15,right: 15,bottom: 10),
            decoration: BoxDecoration(
              color: Colors.orange[200],
              borderRadius: BorderRadius.only(
                bottomLeft : Radius.circular(20),
                bottomRight: Radius.circular(20),
              )
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size:30,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding:EdgeInsets.only(left: 3, bottom:15),
                  child:Text(
                    "Looking for Something Interesting?",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin:EdgeInsets.only(top: 5, bottom: 20),
                  width:MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border:InputBorder.none,
                      hintText: "Search here...",
                      hintStyle: TextStyle(
                        color:Colors.black.withOpacity(0.5),
                      ),
                      prefixIcon:Icon(
                        Icons.search,
                        size:25,
                      )
                    )
                  )
                ),
              ],
            ),
          ),
          Padding(
            padding:EdgeInsets.only(top: 20, left:15,right:15),
            child: Column(children:[
              GridView.builder(
                shrinkWrap:true,
                physics:NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:3,
                  childAspectRatio:1.1,
                ),
                itemBuilder: (context,index) {
                  return Column(
                    children:[
                      Container(
                        height:60,
                        width:60,
                        decoration:BoxDecoration(
                          color:catColors[index],
                          shape:BoxShape.circle,
                        ),
                        child:Center(
                          child: catIcons[index],
                        ),
                      ),
                      SizedBox(height:10),
                      Text(
                        catNames[index],
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight:FontWeight.w500,
                          color: Colors.black.withOpacity(0.7),
                        )
                      )
                    ],
                  );
                }
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children : [
                Text(
                  "Courses",
                  style:TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                    Text(
                      "See All",
                      style:TextStyle(
                        fontSize:10,
                        fontWeight: FontWeight.w500,
                        color:Color(0xFFFFB74D),
                      ),
                    ),
              ],),
              SizedBox(height: 10),
              GridView.builder(
                itemCount: imgList.length,
                shrinkWrap:true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:2,
                  childAspectRatio: (MediaQuery.of(context).size.height-50-25)/(4*240),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index){
                  return InkWell(
                    onTap:(){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context)=>CourseScreen(imgList[index]),));
                    },
                    child:Container(
                      padding:
                        EdgeInsets.symmetric(vertical:20,horizontal:10),
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:Color(0xFFF5F3FF),
                      ),
                      child:Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child:Image.asset("images/${imgList[index]}.png",width:100,height: 100,),
                          ),
                          SizedBox(height:10),
                          Text(
                            imgList[index],
                            style:TextStyle(
                              fontSize:22,
                              fontWeight: FontWeight.w600,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "3 Hour Videos",
                            style:TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.5),
                            )
                          )
                        ],
                      ),
                    )
                  );
                },
              ),
            ])
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        iconSize: 32,
        selectedItemColor:Color(0xFFFFCC80),
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label:'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.schedule), label:'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label:'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label:'Home'),
        ],
      ),
    );
  }
}
