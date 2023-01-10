import 'package:flutter/material.dart';

import '../widgets/info_profile.dart';
import '../widgets/sorotan_profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
        ),
        child: ListView(
          padding: const EdgeInsets.only(top: 10),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      "Instagram",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 24.0,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_box_outlined,
                        size: 24.0,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border_outlined,
                        size: 24.0,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.messenger_outline_outlined,
                        size: 24.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: 95,
                  height: 95,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 95,
                        height: 95,
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
                        width: 87,
                        height: 87,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: Colors.grey[300],
                            image: const DecorationImage(
                              image: NetworkImage(
                                  'https://media.istockphoto.com/id/1432558220/photo/80s-style-3d-render.jpg?b=1&s=170667a&w=0&k=20&c=8iCpdT2ZMd18uwKpTQLfSj2Td-NolmtICPydXK4MV1M='),
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
                const InfoProfile(
                  total: "115",
                  textName: 'Post',
                ),
                const InfoProfile(
                  total: "2.1k",
                  textName: 'followers',
                ),
                const InfoProfile(
                  total: "700",
                  textName: 'Following',
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "L Wahyu Hardininggrat",
                  style: TextStyle(
                    fontSize: 10.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Hoby",
                  style: TextStyle(fontSize: 10.0, color: Colors.black),
                ),
              ],
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text(
                "Edit Profile",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 40,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SorotanProfile(
                        images:
                            'https://picsum.photos/id/${index + 200}/500/500',
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text("story ${index + 1}"),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.grid_on,
                    size: 24.0,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_add_alt_rounded,
                    size: 24.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 3.0,
                crossAxisSpacing: 3.0,
                childAspectRatio: 1.0,
              ),
              itemCount: 115,
              itemBuilder: (context, index) => Image.network(
                "https://picsum.photos/id/${index + 50}/500/500",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
