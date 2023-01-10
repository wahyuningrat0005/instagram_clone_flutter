import 'package:flutter/material.dart';

class SorotanProfile extends StatelessWidget {
  const SorotanProfile({
    Key? key, required this.images

  }) : super(key: key);

  final String images;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 12),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.red,
                          Colors.amber,
                        ]),
                    borderRadius: BorderRadius.circular(60)),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.grey[300],
                    image: DecorationImage(
                      image: NetworkImage(
                         images),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    )),
              )
            ],
          ),
        ),
        
      ],
    );
  }
}
