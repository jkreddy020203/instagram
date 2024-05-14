import 'package:flutter/material.dart';
import 'package:instagram/profile/profile_info.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Row(
          children: [
            Icon(Icons.lock_person_outlined),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text('Mahesh Babu'),
            ),
            Icon(Icons.keyboard_arrow_down_sharp)
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.alternate_email_sharp),
          ),
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Colors.black,
                context: context,
                builder: (ctx) {
                  return const Column(
                    children: [
                      Text(
                        'Create',
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          fontSize: 15,
                          fontFamily: AutofillHints.name,
                        ),
                      ),
                      Listless(
                        iconess: Icon(
                          Icons.grid_on,
                          color: Colors.white,
                        ),
                        text: 'Reels',
                      ),
                      Listless(
                        iconess: Icon(
                          Icons.grid_on,
                          color: Colors.white,
                        ),
                        text: 'Post',
                      ),
                      Listless(
                        iconess: Icon(
                          Icons.grid_on,
                          color: Colors.white,
                        ),
                        text: 'Story',
                      ),
                      Listless(
                        iconess: Icon(
                          Icons.grid_on,
                          color: Colors.white,
                        ),
                        text: 'Live',
                      ),
                      Listless(
                        iconess: Icon(
                          Icons.grid_on,
                          color: Colors.white,
                        ),
                        text: 'Story highlight',
                      ),
                    ],
                  );
                },
              );
            },
            icon: const Icon(Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                backgroundColor: Colors.black,
                builder: (ctx) {
                  return const SingleChildScrollView(
                    child: Column(
                      children: [
                        Listless(
                          iconess: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          text: 'Settings and privacy',
                        ),
                        Listless(
                          iconess: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          text: 'Settings and privacy',
                        ),
                        Listless(
                          iconess: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          text: 'Settings and privacy',
                        ),
                        Listless(
                          iconess: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          text: 'Settings and privacy',
                        ),
                        Listless(
                          iconess: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          text: 'Settings and privacy',
                        ),
                        Listless(
                          iconess: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          text: 'Settings and privacy',
                        ),
                        Listless(
                          iconess: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          text: 'Settings and privacy',
                        ),
                        Listless(
                          iconess: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          text: 'Settings and privacy',
                        ),
                        Listless(
                          iconess: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          text: 'Settings and privacy',
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            icon: const Icon(Icons.more_vert_sharp),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      foregroundImage: AssetImage('images/mb.jpeg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 50),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_circle,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                const FollowerInfo(number: '0', followerCount: 'posts'),
                const FollowerInfo(number: '1M', followerCount: 'followers'),
                const FollowerInfo(number: '2M', followerCount: 'following'),
              ],
            ),
            const Divider(height: 5),
            const BioInfo(name: 'Mahesh Babu'),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.alternate_email_sharp, color: Colors.white),
                ],
              ),
            ),
            const BioInfo(name: 'Star hero'),
            const BioInfo(name: 'Message lu istha unta....'),
            const Divider(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    side: const BorderSide(color: Colors.grey),
                  ),
                  child: const Text(
                    'Edit profile',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    side: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  child: const Text(
                    'Share profile',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.person_add_outlined),
                  color: Colors.white,
                )
              ],
            ),
            const Divider(height: 10),
            const BioInfo(name: 'Add Story highlights'),
            const Divider(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.grid_on_sharp,
                  color: Colors.white,
                ),
                Icon(
                  Icons.person_pin_outlined,
                  color: Colors.white,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
