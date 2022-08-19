import 'package:flutter/material.dart';
import 'package:fusion/add_friend/add_friend.dart';
import 'package:fusion/home/home.dart';
import 'package:fusion_ui/fusion_ui.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 248, 249, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: const Text(
          'Hey Hashim!',
          style: TextStyle(
            color: Colors.black,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: ListView(
          children: [
            const SizedBox(height: 8),
            const Text(
              'Current split',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 12,
                ),
                child: Column(
                  children: [
                    const Text(
                      'No one in split yet.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Invite friends you want to split your next '
                      'Fuse Card payment with.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    FuseFlatButton(
                      child: const Text(
                        'Add friends to split',
                      ),
                      onPressed: () => Navigator.push(
                        context,
                        AddFriendPage.route(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            GridView(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              children: [
                const SplitCard(
                  name: 'You',
                  percentage: '50',
                  card: 'Chase ••••1234',
                ),
                const SplitCard(
                  name: 'Daniel',
                  percentage: '50',
                  card: 'Chase ••••1234',
                ),
                AddSplitCard(
                  onPressed: () => Navigator.push(
                    context,
                    AddFriendPage.route(),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
