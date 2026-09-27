import 'package:flutter/material.dart';
import 'package:untitled1/UI/Widgets/input_controls_demo.dart';
import 'package:untitled1/UI/Widgets/core_widgets_demo.dart';
import 'package:untitled1/UI/Widgets/layout_basics_demo.dart';
import 'package:untitled1/UI/Widgets/app_structure_demo.dart';
import 'package:untitled1/UI/Widgets/debug_&_fix_common_ui.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lab 4 - Flutter UI Fundamentals'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            // Exercise 1
            _exerciseButton(
              context,
              'Exercise 1 - Core Widgets Demo',
              const CoreWidgetDemo(),
            ),

            const SizedBox(height: 12),

            // Exercise 2
            _exerciseButton(
              context,
              'Exercise 2 - Input Controls Demo',
              const InputControlsDemo(),
            ),

            const SizedBox(height: 12),

            // Exercise 3
            _exerciseButton(
              context,
              'Exercise 3 - Layout Demo',
               LayoutBasicsDemo(),
            ),

            const SizedBox(height: 12),

            // Exercise 4
            _exerciseButton(
              context,
              'Exercise 4 - App Structure & Theme',
              DarkModeWitget(),
            ),

            const SizedBox(height: 12),

            // Exercise 5
            _exerciseButton(
              context,
              'Exercise 5 - Common UI Fixes',
              DebugFixCommonUI(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _exerciseButton(
      BuildContext context,
      String title,
      Widget? page,
      ) {
    return Card(
      child: ListTile(
        title: Text(title),

        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 18,
        ),

        onTap: () {
          if (page != null) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => page,
              ),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Exercise này chưa làm.'),
              ),
            );
          }
        },
      ),
    );
  }
}