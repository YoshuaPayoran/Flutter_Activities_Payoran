import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    const String bio =
        "I’m a 4th-year Computer Engineering student with hands-on experience building web projects and solving technical problems. Currently studying at Cebu Technological University.";

    return SingleChildScrollView(
      key: const ValueKey('about'),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ✅ Picture + Name + Email Row
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Picture
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blueGrey, width: 4),
                ),
                child: const CircleAvatar(
                  radius: 52,
                  backgroundImage: AssetImage('assets/images/Profile.JPG'),
                  backgroundColor: Colors.transparent,
                ),
              ),
              const SizedBox(width: 20),
              // Name & Email
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Joshua P. Payoran',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Computer Engineering Student',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.email, color: Colors.white, size: 16),
                        SizedBox(width: 7),
                        Text(
                          'payoranyoshua@gmail.com',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          // ✅ Bio below the row
          const Divider(color: Colors.white38, thickness: 1),
          SizedBox(height: 10,),
          const Text(
            bio,
            style: TextStyle(fontSize: 14, height: 1.4, color: Colors.white70),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 20,),

          Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            color: Colors.grey.shade900,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'EDUCATION',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.blueGrey,
                    ),
                  ),
                  const SizedBox(height: 10),

                  // First School
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text(
                      'Antonio A. Maceda Integrated School',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Sampaloc, Manila, Philippines',
                          style: TextStyle(color: Colors.white70),
                        ),
                        Text(
                          '2007 - 2012 | Pre-elementary - Grade 5',
                          style: TextStyle(color: Colors.white38, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  const Divider(color: Colors.white12),

                  // Second School
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text(
                      'Maribago Elementary & High School',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Datag, Maribago, Lapu-Lapu City, Cebu, Philippines',
                          style: TextStyle(color: Colors.white70),
                        ),
                        Text(
                          '2013 - 2020 | Grade 5 - High School',
                          style: TextStyle(color: Colors.white38, fontSize: 12),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '• Achiever (Elementary)\n• With Honors\n• Damath Champion (School & District)',
                          style: TextStyle(color: Colors.white54, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  const Divider(color: Colors.white12),

                  // Third School
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text(
                      'Rizwoodz Colleges',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Buyong, Maribago, Lapu-Lapu City, Cebu, Philippines',
                          style: TextStyle(color: Colors.white70),
                        ),
                        Text(
                          '2020 - 2022 | Senior High School | With Honors',
                          style: TextStyle(color: Colors.white38, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  const Divider(color: Colors.white12),

                  // Fourth School
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text(
                      'Cebu Technological University - Main Campus',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'M.J. Cuenco Ave, Cor R. Palma Street, Cebu City, Cebu, Philippines',
                          style: TextStyle(color: Colors.white70),
                        ),
                        Text(
                          '2022 - Present | Bachelor of Science in Computer Engineering',
                          style: TextStyle(color: Colors.white38, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
