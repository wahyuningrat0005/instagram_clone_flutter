import 'package:flutter/material.dart';

class InfoProfile extends StatelessWidget {
 const  InfoProfile({
    Key? key,
    required this.total,
    required this.textName,
  }) : super(key: key);

  final String total;
  final String textName;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                total,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
             const SizedBox(
                height: 8,
              ),
              Text(
                textName,
                style:const TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
