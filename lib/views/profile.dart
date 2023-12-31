import 'package:flutter/material.dart';

// companies profile image
const String profileImage =
    "https://cdn.pixabay.com/photo/2015/03/04/22/35/head-659651_960_720.png";

// companies profile page
class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color.fromARGB(255, 21, 49, 92),
        body: SafeArea(
          child: Column(
            children: [
              // back button and aliggn it to the left
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 24),
              buildHeader(),
              const SizedBox(height: 24),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(24),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(32),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        buildAbout(),
                        const SizedBox(height: 24),
                        buildSkills(),
                        const SizedBox(height: 24),
                        buildExperience(),
                        const SizedBox(height: 24),
                        buildEducation(),
                        const SizedBox(height: 24),
                        buildLanguages(),
                        const SizedBox(height: 24),
                        buildInterests(),
                        const SizedBox(height: 24),
                        buildContact(context),
                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  Widget buildHeader() => const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(profileImage),
          ),
          SizedBox(width: 24),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SafeHub',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'SafeHub',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      );

  Widget buildAbout() => const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'SafeHub is a coworking space that provides a safe and secure environment for people to work in.',
            style: TextStyle(fontSize: 16, height: 1.4),
          ),
        ],
      );

  Widget buildSkills() => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _customChip('Skills', skills),
        ],
      );

  Widget buildExperience() => Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _customText('Experience'),
          buildExperienceItem(
            company: 'SafeHub',
            position: 'Co-Founder',
            duration: '2021 - Present',
          ),
          const SizedBox(height: 16),
          buildExperienceItem(
            company: 'SafeHub',
            position: 'Co-Founder',
            duration: '2021 - Present',
          ),
        ],
      );

  Widget buildExperienceItem({
    required String company,
    required String position,
    required String duration,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$company - $position',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            duration,
            style: TextStyle(color: Colors.grey.shade600),
          ),
        ],
      );

  Widget buildEducation() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Education',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          buildEducationItem(
            university: 'SafeHub',
            major: 'Co-Founder',
            duration: '2021 - Present',
          ),
          const SizedBox(height: 16),
          buildEducationItem(
            university: 'SafeHub',
            major: 'Co-Founder',
            duration: '2021 - Present',
          ),
        ],
      );

  Widget buildEducationItem({
    required String university,
    required String major,
    required String duration,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$university - $major',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            duration,
            style: TextStyle(color: Colors.grey.shade600),
          ),
        ],
      );

  Widget buildLanguages() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _customChip('Languages', languages),
        ],
      );

  Widget buildInterests() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _customChip('Interests', interests),
        ],
      );

  Widget buildContact(BuildContext context) => Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _customText('Contact'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.phone),
                color: Colors.blue[900],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.email),
                color: Colors.blue[900],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.location_on),
                color: Colors.blue[900],
              ),
            ],
          ),
        ],
      );

  Widget _customChip(String title, List<String> items) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _customText(title),
          Wrap(
            spacing: 20,
            children: List.generate(
              items.length,
              (index) => Chip(
                label: Text(
                  items[index],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16),
                ),
                backgroundColor: Colors.blue[100],
                shadowColor: Colors.blue[100],
                elevation: 4,
                side: const BorderSide(
                  color: Colors.transparent,
                ),
                // remove border
              ),
            ),
          ),
        ],
      );

  Widget _customText(String text) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade900,
            ),
          ),
          const SizedBox(height: 16),
        ],
      );

  final skills = [
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub'
  ];

  final languages = [
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub'
  ];

  final interests = [
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub'
  ];

  final companies = [
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub'
  ];

  final universities = [
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub'
  ];

  final experiences = [
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub'
  ];

  final educations = [
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub'
  ];

  final contacts = [
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub'
  ];

  final socials = [
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub'
  ];

  final projects = [
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub',
    'SafeHub'
  ];
}
