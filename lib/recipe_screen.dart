import 'package:flutter/material.dart';

class Recipe extends StatelessWidget {
  const Recipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe App', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 219, 37, 70),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [InfoSide(), SizedBox(width: 8), ImageSide()],
        ),
      ),
    );
  }
}

class ImageSide extends StatelessWidget {
  const ImageSide({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Image(
        image: AssetImage('assets/mixed-berries.jpg'),
      ),
    );
  }
}

class InfoSide extends StatelessWidget {
  const InfoSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const StyledContainer(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Strawberry Pavlova',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            const StyledContainer(
              child: Text(
                'Pavlova is a meringue-based dessert named after the Russian ballerine Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 5),
            const StyledContainer(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, size: 17),
                      Icon(Icons.star, size: 17),
                      Icon(Icons.star, size: 17),
                      Icon(Icons.star, size: 17),
                      Icon(Icons.star, size: 17),
                    ],
                  ),
                  Text('170 Reviews'),
                ],
              ),
            ),
            const SizedBox(height: 5),
            StyledContainer(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.kitchen_outlined,
                        color: Colors.green[400],
                      ),
                      const Text('PREP:'),
                      const Text('25 min')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.timer_outlined,
                        color: Colors.green[400],
                      ),
                      const Text('COOK:'),
                      const Text('1 hr')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.restaurant,
                        color: Colors.green[400],
                      ),
                      const Text('FEEDS:'),
                      const Text('4-6')
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StyledContainer extends StatelessWidget {
  final Widget child;
  const StyledContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        color: const Color.fromARGB(132, 141, 217, 255),
      ),
      child: child,
    );
  }
}
