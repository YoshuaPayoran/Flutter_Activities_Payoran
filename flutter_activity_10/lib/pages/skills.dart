import 'package:flutter/material.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget skillItem(String skill, IconData icon) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: Row(
          children: [
            Icon(icon, size: 16, color: Colors.blueAccent),
            const SizedBox(width: 6),
            Text(
              skill,
              style: const TextStyle(color: Colors.white70, fontSize: 15),
            ),
          ],
        ),
      );
    }

    return SingleChildScrollView(
      key: const ValueKey('about'),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            color: Colors.grey.shade900,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'EXPERTISE',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.blueGrey,
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Front-end
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text(
                      'Front-end',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        skillItem('HTML', Icons.language),
                        skillItem('CSS', Icons.brush),
                        skillItem('JavaScript', Icons.code),
                      ],
                    ),
                  ),
                  const Divider(color: Colors.white12),

                  // Currently Learning
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text(
                      'Currently Learning',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        skillItem('React JS', Icons.refresh),
                        skillItem('Tailwind CSS', Icons.palette),
                        skillItem('Git', Icons.merge_type),
                      ],
                    ),
                  ),
                  const Divider(color: Colors.white12),

                  // Other Languages
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text(
                      'Other Languages',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        skillItem('C', Icons.code),
                        skillItem('C#', Icons.code),
                        skillItem('Java', Icons.coffee),
                        skillItem('C++', Icons.code),
                        skillItem('Python', Icons.code),
                      ],
                    ),
                  ),
                  const Divider(color: Colors.white12),

                  // IDE
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text(
                      'IDE',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        skillItem('VS Code', Icons.computer),
                        skillItem('Android Studio', Icons.android),
                        skillItem('Arduino', Icons.memory),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
