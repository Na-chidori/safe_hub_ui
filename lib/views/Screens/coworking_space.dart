import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_hub_ui/views/Screens/profile.dart';

class CoWorkingSpace extends StatefulWidget {
  const CoWorkingSpace({Key? key}) : super(key: key);

  @override
  _CoWorkingSpaceState createState() => _CoWorkingSpaceState();
}

class _CoWorkingSpaceState extends State<CoWorkingSpace> {
  late List<Map<String, String>> filteredCompanies;
  TextEditingController searchController = TextEditingController();

  dynamic companies = [
    {"logo": "https://cdn.pixabay.com/photo/2015/03/04/22/35/head-659651_960_720.png", "name": "Company 1", "location": "Type of Company", "post": "assets/safehub.jpg"},
    {"logo": "https://cdn.pixabay.com/photo/2015/03/04/22/35/head-659651_960_720.png", "name": "Company 2", "location": "Type of Company", "post": "assets/safehub.jpg"},
    {"logo": "https://cdn.pixabay.com/photo/2015/03/04/22/35/head-659651_960_720.png", "name": "Company 3", "location": "Type of Company", "post": "assets/safehub.jpg"},
    {"logo": "https://cdn.pixabay.com/photo/2015/03/04/22/35/head-659651_960_720.png", "name": "Company 4", "location": "Type of Company", "post": "assets/safehub.jpg"},
    {"logo": "https://cdn.pixabay.com/photo/2015/03/04/22/35/head-659651_960_720.png", "name": "Company 5", "location": "Type of Company", "post": "assets/safehub.jpg"},
    {"logo": "https://cdn.pixabay.com/photo/2015/03/04/22/35/head-659651_960_720.png", "name": "Company 6", "location": "Type of Company", "post": "assets/safehub.jpg"},
  ];

  @override
  void initState() {
    super.initState();
    filteredCompanies = List.from(companies);
  }

  void filterCompanies(String query) {
    List<Map<String, String>> filteredList = companies
        .where((company) =>
    company['name']!.toLowerCase().contains(query.toLowerCase()) ||
        company['location']!.toLowerCase().contains(query.toLowerCase()))
        .toList();
    setState(() {
      filteredCompanies = filteredList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.orange[200] ?? Colors.orange,Colors.white ],
        ),
      ),
        child:ListView(
        scrollDirection: Axis.vertical,
        children: filteredCompanies.map((company) => CompanyCard(company)).toList(),
      ),
      ),
    );
  }
}

class CompanyCard extends StatelessWidget {
  final Map<String, dynamic> company;

  const CompanyCard(this.company, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(ProfilePage());
      },
      child: Card(
        elevation: 3, // Add elevation for a modern look
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(company['logo'] ?? ''),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        company['name'] ?? '',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        company['location'] ?? '',
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Image.asset(
              company['post'] ?? '',
              fit: BoxFit.cover,
              height: 150, // Adjusted image height
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.favorite_border),
                      const SizedBox(width: 10),
                      Icon(Icons.comment),
                      const SizedBox(width: 10),
                      Icon(Icons.share),
                    ],
                  ),
                  Icon(Icons.bookmark_border),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
