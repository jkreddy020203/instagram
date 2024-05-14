import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram/messages.dart';

List<String> profileImage = [
  'images/mb.jpeg',
  'images/mb.jpeg',
  'images/mb.jpeg',
  'images/mb.jpeg',
  'images/mb.jpeg',
  'images/mb.jpeg',
  'images/mb.jpeg',
  'images/mb.jpeg',
  'images/mb.jpeg',
  'images/mb.jpeg',
];
List<String> posts = [
  'images/athidhi.jpg',
  'images/athidhi.jpg',
  'images/athidhi.jpg',
  'images/athidhi.jpg',
  'images/athidhi.jpg',
  'images/athidhi.jpg',
  'images/athidhi.jpg',
  'images/athidhi.jpg',
  'images/athidhi.jpg',
  'images/athidhi.jpg',
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Instagram',
          style: TextStyle(
            color: Colors.white,
            fontFamily: AutofillHints.name,
            fontSize: 23,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              Get.to(const Messages());
            },
            icon: const Icon(Icons.send),
            color: Colors.white,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  profileImage.length,
                  (index) => Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              const AssetImage('images/insta_story_avatar.jpg'),
                          child: CircleAvatar(
                            radius: 32,
                            backgroundImage: AssetImage(
                              profileImage[index],
                            ),
                          ),
                        ),
                        const Text(
                          'mahesh',
                          style: TextStyle(
                            fontFamily: AutofillHints.name,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Divider(),
            Column(
              children: List.generate(
                posts.length,
                (index) => Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: CircleAvatar(
                            radius: 12,
                            backgroundImage: AssetImage(profileImage[index]),
                          ),
                        ),
                        const Text(
                          'Mahesh Babu',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: AutofillHints.name,
                            fontSize: 15,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onDoubleTap: () {
                        setState(() {
                          isLiked = true;
                        });
                      },
                      child: Stack(
                        children: [
                          Image.asset(
                            posts[index],
                          ),
                          if (isLiked)
                            const Positioned(
                              left: 0,
                              right: 0,
                              top: 0,
                              bottom: 0,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 50,
                              ),
                            ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isLiked = !isLiked;
                            });
                          },
                          icon: Icon(
                            isLiked
                                ? Icons.favorite
                                : Icons.favorite_border_outlined,
                            color: isLiked ? Colors.red : Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.comment,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              backgroundColor: Colors.black,
                              builder: (ctx) {
                                return Scaffold(
                                  appBar: AppBar(
                                    backgroundColor: Colors.black,
                                    leading: const Icon(Icons.search),
                                    title: const Text('Search'),
                                    actions: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.person_add_alt),
                                      ),
                                    ],
                                  ),
                                  body: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 20),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Column(
                                              children: [
                                                FloatingActionButton(
                                                  onPressed: () {},
                                                  child: Image.asset(
                                                    'images/mb.jpeg',
                                                  ),
                                                ),
                                                const Text('mahesh'),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                FloatingActionButton(
                                                  onPressed: () {},
                                                  child: Image.asset(
                                                    'images/mb.jpeg',
                                                  ),
                                                ),
                                                const Text('mahesh'),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                FloatingActionButton(
                                                  onPressed: () {},
                                                  child: Image.asset(
                                                    'images/mb.jpeg',
                                                  ),
                                                ),
                                                const Text('mahesh'),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 20),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Column(
                                              children: [
                                                FloatingActionButton(
                                                  onPressed: () {},
                                                  child: Image.asset(
                                                    'images/mb.jpeg',
                                                  ),
                                                ),
                                                const Text('mahesh'),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                FloatingActionButton(
                                                  onPressed: () {},
                                                  child: Image.asset(
                                                    'images/mb.jpeg',
                                                  ),
                                                ),
                                                const Text('mahesh'),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                FloatingActionButton(
                                                  onPressed: () {},
                                                  child: Image.asset(
                                                    'images/mb.jpeg',
                                                  ),
                                                ),
                                                const Text('mahesh'),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 20),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Column(
                                              children: [
                                                FloatingActionButton(
                                                  backgroundColor: Colors.black,
                                                  onPressed: () {},
                                                  child: const CircleAvatar(
                                                    radius: 30,
                                                    backgroundImage: AssetImage(
                                                      'images/mb.jpeg',
                                                    ),
                                                  ),
                                                ),
                                                const Text('mahesh'),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                FloatingActionButton(
                                                  backgroundColor: Colors.black,
                                                  onPressed: () {},
                                                  child: Image.asset(
                                                    'images/mb.jpeg',
                                                  ),
                                                ),
                                                const Text('mahesh'),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                FloatingActionButton(
                                                  backgroundColor: Colors.black,
                                                  onPressed: () {},
                                                  child: Image.asset(
                                                    'images/mb.jpeg',
                                                  ),
                                                ),
                                                const Text('mahesh'),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  bottomNavigationBar: BottomNavigationBar(
                                    backgroundColor: Colors.black,
                                    items: const [
                                      BottomNavigationBarItem(
                                        backgroundColor: Colors.black,
                                        icon: Icon(
                                          color: Colors.white,
                                          Icons.add_circle_outline_rounded,
                                        ),
                                        label: 'Add to story',
                                      ),
                                      BottomNavigationBarItem(
                                        backgroundColor: Colors.black,
                                        icon: Icon(
                                          Icons.share,
                                          color: Colors.white,
                                        ),
                                        label: 'Share',
                                      ),
                                      BottomNavigationBarItem(
                                        backgroundColor: Colors.black,
                                        icon: Icon(
                                          Icons.link,
                                          color: Colors.white,
                                        ),
                                        label: 'Link',
                                      ),
                                      BottomNavigationBarItem(
                                        backgroundColor: Colors.black,
                                        icon: Icon(
                                          Icons.facebook_sharp,
                                          color: Colors.white,
                                        ),
                                        label: 'Facebook',
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          icon: const Icon(
                            Icons.send,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.bookmark_border_sharp,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          isLiked
                              ? const Text(
                                  'Liked by ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                )
                              : const Text(''),
                          isLiked
                              ? const Text(
                                  'Mahesh Babu',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )
                              : const Text(''),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
