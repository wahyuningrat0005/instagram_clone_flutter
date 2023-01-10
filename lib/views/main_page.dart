import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/bottam_widget.dart';


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomWidget(),
    );
  }
}