import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key, required this.asset, required this.tag, required this.fullDesc}) : super(key: key);
  final String asset;
  final String tag;
  final String fullDesc;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  double screenWidth = 0;
  double screenHeight = 0;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.orange[200] ?? Colors.orange,Colors.white ],
    ),
    ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: widget.tag,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
              child: SizedBox(
                height: screenHeight /2.9,
                width: screenWidth,
                child: Image.asset(
                  "assets/${widget.asset}",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth / 20,
              vertical: 20,
            ),
            child: Text(
              widget.tag,
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.black87,
                fontSize: 30,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth / 20,
            ),
            child: Text(
              widget.fullDesc,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black87,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth / 20,
              vertical: 20,
            ),
              child: Center(
              child: ElevatedButton(
              onPressed: () {
                },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.brown,
                    onPrimary: Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Text(
                      "REGISTER",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                      ),
                ),
                ),
              ),
          ),
        ],
      ),
      ),
    );
  }
}