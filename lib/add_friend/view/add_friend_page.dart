import 'package:flutter/material.dart';
import 'package:fusion_ui/fusion_ui.dart';

class AddFriendPage extends StatelessWidget {
  const AddFriendPage({super.key});

  static MaterialPageRoute<void> route() => MaterialPageRoute<void>(
        builder: (_) => const AddFriendPage(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 248, 249, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
          child: FuseFlatButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text('Add friend'),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: ListView(
          children: [
            const Text(
              'Add friend to split',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 32),
            const Text(
              'Contact details',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            FuseTextField(
              placeholder: 'Name',
              onChanged: (value) {},
              textEditingController: TextEditingController(),
            ),
            const SizedBox(height: 16),
            FuseTextField(
              placeholder: 'Email or phone',
              onChanged: (value) {},
              textEditingController: TextEditingController(),
            ),
            const SizedBox(height: 32),
            const Text(
              'Card information',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            FuseTextField(
              placeholder: 'Card number',
              onChanged: (value) {},
              textEditingController: TextEditingController(),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Flexible(
                  child: FuseTextField(
                    placeholder: 'Expiry date',
                    onChanged: (value) {},
                    textEditingController: TextEditingController(),
                  ),
                ),
                const SizedBox(width: 16),
                Flexible(
                  child: FuseTextField(
                    placeholder: 'CVV',
                    onChanged: (value) {},
                    textEditingController: TextEditingController(),
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
