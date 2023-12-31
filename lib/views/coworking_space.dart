import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_hub_ui/views/profile.dart';

class CoWorkingSpace extends StatefulWidget {
  const CoWorkingSpace({Key? key}) : super(key: key);

  @override
  _CoWorkingSpaceState createState() => _CoWorkingSpaceState();
}

class _CoWorkingSpaceState extends State<CoWorkingSpace> {
  late List<Map<String, String>> filteredCompanies;
  TextEditingController searchController = TextEditingController();

  // Sample data of companies
  dynamic companies = [
    {
      "logo":
      "https://cdn.pixabay.com/photo/2015/03/04/22/35/head-659651_960_720.png",
      "name": "Company 1",
      "location": "Location 1",
      "post": "assets/safehub.jpg"
    },
    {
      "logo":
      "https://cdn.pixabay.com/photo/2015/03/04/22/35/head-659651_960_720.png",
      "name": "Company 2",
      "location": "Location 2",
      "post": "assets/safehub.jpg"
    },
    {
      "logo":
      "https://cdn.pixabay.com/photo/2015/03/04/22/35/head-659651_960_720.png",
      "name": "Company 3",
      "location": "Location 3",
      "post": "assets/safehub.jpg"
    },
    {
      "logo":
      "https://cdn.pixabay.com/photo/2015/03/04/22/35/head-659651_960_720.png",
      "name": "Company 4",
      "location": "Location 4",
      "post": "assets/safehub.jpg"
    },
    {
      "logo":
      "https://cdn.pixabay.com/photo/2015/03/04/22/35/head-659651_960_720.png",
      "name": "Company 5",
      "location": "Location 5",
      "post": "assets/safehub.jpg"
    },
    {
      "logo":
      "https://cdn.pixabay.com/photo/2015/03/04/22/35/head-659651_960_720.png",
      "name": "Company 6",
      "location": "Location 6",
      "post": "assets/safehub.jpg"
    },
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
        appBar: AppBar(
          title: TextField(
            controller: searchController,
            onChanged: filterCompanies,
            decoration: const InputDecoration(
              hintText: 'Search...',
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children:
          filteredCompanies.map((company) => CompanyCard(company)).toList(),
        ));
  }
}

class CompanyCard extends StatelessWidget {
  final Map<String, dynamic> company;

  const CompanyCard(this.company, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(ProfilePage());
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 219, 231, 241),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
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
            const SizedBox(height: 10),
            Image.asset(
              company['post'] ?? '',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite_border),
                    SizedBox(width: 10),
                    Icon(Icons.comment),
                    SizedBox(width: 10),
                    Icon(Icons.share),
                  ],
                ),
                Icon(Icons.bookmark_border),
              ],
            ),
          ],
        ),
      ),
    );
  }
}