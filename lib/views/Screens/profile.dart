import 'package:flutter/material.dart';

// Companies profile imag
const String profileImage =
    "https://cdn.pixabay.com/photo/2015/03/04/22/35/head-659651_960_720.png";

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Color.fromARGB(255, 21, 49, 92),
    body: SafeArea(
      child: Column(
        children: [
          // Back button aligned to the left
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
                  crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    buildContact(),
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

  Widget buildHeader() => Row(
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
            'Co-Working Space',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ],
  );

  Widget buildAbout() => Column(
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
        'SafeHub is a modern co-working space that provides a collaborative and secure environment for individuals and startups to work in. We aim to foster creativity and innovation.',
        style: TextStyle(fontSize: 16, height: 1.4),
      ),
    ],
  );

  Widget buildSkills() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _customChip('Skills', skills),
    ],
  );

  Widget buildExperience() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _customText('Experience'),
      ...experiences.map(buildExperienceItem).toList(),
    ],
  );

  Widget buildExperienceItem(String experience) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        experience,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 4),
      Text(
        'Duration: 2021 - Present',
        style: TextStyle(color: Colors.grey.shade600),
      ),
      const SizedBox(height: 16),
    ],
  );

  Widget buildEducation() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Education',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 16),
      ...educations.map(buildEducationItem).toList(),
    ],
  );

  Widget buildEducationItem(String education) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        education,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 4),
      Text(
        'Duration: 2021 - Present',
        style: TextStyle(color: Colors.grey.shade600),
      ),
      const SizedBox(height: 16),
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

  Widget buildContact() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _customText('Contact'),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _customIconButton(Icons.phone),
          _customIconButton(Icons.email),
          _customIconButton(Icons.location_on),
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
        children: items
            .map(
              (item) => Chip(
            label: Text(
              item,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            backgroundColor: Colors.blue[100],
            shadowColor: Colors.blue[100],
            elevation: 4,
            side: const BorderSide(
              color: Colors.transparent,
            ),
          ),
        )
            .toList(),
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

  Widget _customIconButton(IconData icon) => IconButton(
    onPressed: () {},
    icon: Icon(
      icon,
      color: Colors.blue[900],
    ),
  );

  final skills = ['Flutter', 'Dart', 'UI/UX Design', 'Problem Solving'];

  final languages = ['English', 'Spanish', 'French'];

  final interests = ['Technology', 'Innovation', 'Networking'];

  final experiences = [
    'Senior Developer - Tech Company A',
    'Lead UI/UX Designer - Design Studio B',
  ];

  final educations = [
    'Master of Computer Science - University C - 2021',
    'Bachelor of Design - University D - 2018-2021',
  ];
}
