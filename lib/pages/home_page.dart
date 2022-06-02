import 'package:flutter/material.dart';
import 'package:party_ui/animation/fade_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bool _isLogIn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/im_party.jpeg'),
          fit: BoxFit.cover,
        )),
        child: Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(.6),
            Colors.black.withOpacity(.4),
            Colors.black.withOpacity(.3),
          ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 100),
                  const FadeAnimation(
                      1.3,
                      Text('Find the best parties near you.',
                          style:
                              TextStyle(color: Colors.yellow, fontSize: 40))),
                  const SizedBox(height: 30),
                  FadeAnimation(
                      1.4,
                      Text('Let us find you a party for your interest',
                          style: TextStyle(
                              color: Colors.green.shade300, fontSize: 25))),
                ],
              ),
              FadeAnimation(
                  1.5,
                  _isLogIn
                      ? Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26),
                            color: Colors.orange,
                          ),
                          child: const Center(
                              child: Text(
                            'Start',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                        )
                      : Row(
                          children: [
                            Expanded(
                                child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(26),
                                color: Colors.red,
                              ),
                              child: const Center(
                                  child: Text(
                                'Google+',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              )),
                            )),
                            const SizedBox(width: 10),
                            Expanded(
                                child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(26),
                                color: Colors.blue,
                              ),
                              child: const Center(
                                  child: Text(
                                'Facebook',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              )),
                            )),
                          ],
                        )),
            ],
          ),
        ),
      ),
    );
  }
}
