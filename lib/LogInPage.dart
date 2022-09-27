import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        color: Color.fromARGB(255, 0, 128, 133),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 100),
              child: Text(
                'MEDINOW',
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 32.0,
                    color: Colors.white),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                'meditate With Us!',
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 16.0,
                    color: Colors.white),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 80, left: 30, right: 30),
                    child: new TextButton(
                        onPressed: null,
                        child: Text(
                          'Sign in with Apple',
                          style: TextStyle(color: Colors.black),
                        )),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 10, left: 30, right: 30),
                    child: new TextButton(
                        onPressed: null,
                        child: Text(
                          'Continue whit email or phone',
                          style: TextStyle(color: Colors.black),
                        )),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                'Continue with google!',
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 16.0,
                    color: Colors.white),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 300,
                width: 300,
                child: Image.asset('source/images/pic1.png'),
              ),
            )
          ],
        ),
      ),
    );
  }

//тут жёский вопрос а как сделать так чтобы paddingTop можно было передовать из
  Widget _buildButton(String label, double paddingTop) => Container(
        margin: const EdgeInsets.only(top: 10),
        child: new TextButton(onPressed: null, child: Text(label)),
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.circular(10.0),
        ),
      );
}
