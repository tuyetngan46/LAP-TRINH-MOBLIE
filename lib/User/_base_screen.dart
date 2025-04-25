import 'package:flutter/material.dart';
import '_top_menu_section.dart';

abstract class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: _buildBody(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Support',
        child: const Icon(Icons.support_agent),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const TopMenuSection(),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.indigo.withAlpha(80),
              ),
            ),
            child: ConstrainedBox(
              constraints: const BoxConstraints(minHeight: 300),
              child: buildMainContent(context), // Nội dung chính
            ),
          ),
          const SizedBox(height: 10),
          const Center(child: Text('@Copyright')),
        ],
      ),
    );
  }

  // Phương thức trừu tượng để tạo nội dung chính
  Widget buildMainContent(BuildContext context);
}