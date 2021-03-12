import 'package:flutter/material.dart';

class FailurePage extends StatelessWidget {
  final String title;
  final String image;

  const FailurePage({
    required this.title,
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  key: Key(image),
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  width: 300,
                  height: 300,
                ),
                const SizedBox(height: 30),
                Text(
                  '$title!',
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 120,
              child: TextButton(
                key: const Key('try_again'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {
                  print('Oi');
                },
                child: const Text(
                  'Try again',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
