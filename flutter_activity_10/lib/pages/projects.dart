import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = [
      {
        'title': 'SellShoes (E-commerce Website)',
        'description':
            'An e-commerce website for selling branded shoes with product pages, cart system, and checkout flow.',
        'tools': 'HTML, CSS, JavaScript, VScode',
        'image': 'assets/images/Sellshoes.jpg',
      },
      {
        'title': 'Tic Tac Toe Game',
        'description':
            'A console-based Tic Tac Toe game featuring Player vs Player and Player vs Computer modes with selectable difficulty levels and race-to-win gameplay.',
        'tools': 'C#, Miscrosoft Visual Studio',
        'image': 'assets/images/tictactoe.png',
      },
      {
        'title': 'Study Timer Mobile',
        'description':
            'A productivity mobile app that allows users to set timers for focused study sessions with break intervals and session tracking.',
        'tools': 'Java, Firebase, Android Studio',
        'image': 'assets/images/StudyTimer.png',
      },
      {
        'title': 'Library Management System (WPF C#)',
        'description':
            'A WPF-based library system designed for student book borrowing and monitoring, featuring admin-controlled enrollment, real-time tracking, and automatic penalty computation for late returns.',
        'tools': 'C#, WPF, XAML, XAMPP (MySQL), Microsoft Visual Studio',
        'image': 'assets/images/LibraryManagement.jpg',
      },
      {
        'title': 'Hangman Game',
        'description':
          'A C-based console Hangman game developed using Embarcadero, featuring word guessing mechanics, life tracking, and user input validation.',
        'tools': 'C, Embarcadero',
        'image': 'assets/images/Hangman.png',
      },
      {
        'title': 'Courier Management System',
        'description':
            'A Java-based system with MySQL integration for managing parcel deliveries, including sender and receiver details, tracking, delivery status updates, and courier transaction monitoring.',
        'tools': 'Java, MySQL, Netbeans',
        'image': 'assets/images/NotFound.jpg',
      },
    ];

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'PROJECTS',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
          const SizedBox(height: 20),

          ...projects.map((project) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8),
              color: Colors.grey.shade900,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        project['image'] as String,
                        fit: BoxFit.contain,
                        width: 140,
                        height: 230,
                      ),
                    ),

                    const SizedBox(width: 16),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            project['title'] as String,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            project['description'] as String,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Tools: ${project['tools']}',
                            style: const TextStyle(
                              color: Colors.white38,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
