import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var text =
      "lsdjfk s jfeifjes ofjsdkfj soeifj sflksdf sjsdlkfjseo fijsiefjsl dkfjslkej fseoif js lf jsdk fjsei fjsl dfks j eflise jflsd jfks jef isef";
  var facebookurl = 'https://flutter.io';
  var linkedInUrl = "https://www.linkedin.com/in/harrem-m-jalal-a0a329135/";
  var githubUrl = "https://github.com/Harrem/";
  var instagramUrl = "https://www.instagram.com/harrem_ip.h.c/";
  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey),
                child: const FlutterLogo(
                  size: 50,
                ),
              ),
            ),
            const Divider(color: Colors.transparent),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Harrem",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                text,
                style: const TextStyle(color: Colors.grey),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 0.8,
              child: GestureDetector(
                onTap: () => _launchURL(facebookurl),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 219, 219, 219)),
                  child: const ListTile(
                      leading: Icon(Icons.facebook),
                      title: Text("Facebook"),
                      trailing: Icon(Icons.open_in_new)),
                ),
              ),
            ),
            const Divider(
              color: Colors.transparent,
            ),
            GestureDetector(
              onTap: () => _launchURL(githubUrl),
              child: FractionallySizedBox(
                widthFactor: 0.8,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 219, 219, 219)),
                  child: const ListTile(
                      leading: Icon(Icons.facebook),
                      title: Text("Github"),
                      trailing: Icon(Icons.open_in_new)),
                ),
              ),
            ),
            const Divider(
              color: Colors.transparent,
            ),
            GestureDetector(
              onTap: () => _launchURL(linkedInUrl),
              child: FractionallySizedBox(
                widthFactor: 0.8,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 219, 219, 219)),
                  child: const ListTile(
                      leading: Icon(Icons.facebook),
                      title: Text("LinkedIn"),
                      trailing: Icon(Icons.open_in_new)),
                ),
              ),
            ),
            const Divider(
              color: Colors.transparent,
            ),
            GestureDetector(
              onTap: () => _launchURL(instagramUrl),
              child: FractionallySizedBox(
                widthFactor: 0.8,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 219, 219, 219)),
                  child: const ListTile(
                      leading: Icon(Icons.facebook),
                      title: Text("Instagram"),
                      trailing: Icon(Icons.open_in_new)),
                ),
              ),
            ),
            const Divider(
              color: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
