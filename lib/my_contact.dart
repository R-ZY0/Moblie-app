import 'package:flutter/material.dart';
// Ensure the package is added to your pubspec.yaml file before importing it.
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyContacts extends StatelessWidget {
  const MyContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 38, 59, 1),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              CircleAvatar(
                backgroundImage: AssetImage('assets/f1.jpg'),
                radius: 100,
              ),
              SizedBox(
                height: 50,
              ),
              Text('Mohamed Ramzy',
                  style: TextStyle(
                    color: const Color.fromRGBO(224, 225, 221, 1),
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('+01015286683',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.grey,
                      )),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(65, 90, 119, 1),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.phone,
                        size: 30,
                        color: const Color.fromRGBO(224, 225, 221, 1),
                      ),
                      onPressed: () {
                        launchUrl(Uri.parse('tel:+01015286683'));
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  List<CircleAvatar> aFvatars = [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Color.fromRGBO(27, 38, 59, 1),
                      child: GestureDetector(
                        onTap: () {
                          launchUrl(
                              Uri.parse(
                                  'https://www.facebook.com/profile.php?id=100078818844136'),
                              mode: LaunchMode.externalApplication);
                        },
                        child: Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.blue,
                          size: 50,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Color.fromRGBO(27, 38, 59, 1),
                      child: GestureDetector(
                        onTap: () {
                          launchUrl(Uri.parse('https://wa.me/+201015286683'),
                              mode: LaunchMode.externalApplication);
                        },
                        child: Icon(
                          FontAwesomeIcons.whatsapp,
                          color: Colors.green,
                          size: 50,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Color.fromRGBO(27, 38, 59, 1),
                      child: GestureDetector(
                        onTap: () {
                          launchUrl(
                              Uri.parse(
                                  'https://www.linkedin.com/in/mohammed-ramzi'),
                              mode: LaunchMode.externalApplication);
                        },
                        child: Icon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.blue,
                          size: 50,
                        ),
                      ),
                    ),
                    CircleAvatar(
                        radius: 40,
                        backgroundColor: Color.fromRGBO(27, 38, 59, 1),
                        child: GestureDetector(
                          onTap: () {
                            launchUrl(
                                Uri.parse(
                                    'https://www.instagram.com/ramzy.mohamed.1238/'),
                                mode: LaunchMode.externalApplication);
                          },
                          child: Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.pink,
                            size: 50,
                          ),
                        )),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Color.fromRGBO(27, 38, 59, 1),
                      child: GestureDetector(
                        onTap: () {
                          launchUrl(Uri.parse('https://github.com/R-ZY0'),
                              mode: LaunchMode.externalApplication);
                        },
                        child: Icon(
                          FontAwesomeIcons.github,
                          color: Colors.black,
                          size: 50,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Color.fromRGBO(27, 38, 59, 1),
                      child: GestureDetector(
                        onTap: () {
                          launchUrl(
                              Uri.parse(
                                  'https://www.snapchat.com/add/your-snapchat-username'),
                              mode: LaunchMode.externalApplication);
                        },
                        child: Icon(
                          FontAwesomeIcons.snapchatGhost,
                          color: Colors.yellow,
                          size: 50,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Color.fromRGBO(27, 38, 59, 1),
                      child: GestureDetector(
                        onTap: () {
                          launchUrl(
                              Uri.parse(
                                  'https://www.tiktok.com/@your-tiktok-username'),
                              mode: LaunchMode.externalApplication);
                        },
                        child: Icon(
                          FontAwesomeIcons.tiktok,
                          color: Colors.redAccent,
                          size: 50,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Color.fromRGBO(27, 38, 59, 1),
                      child: GestureDetector(
                        onTap: () {
                          launchUrl(
                              Uri.parse(
                                  'https://twitter.com/your-twitter-username'),
                              mode: LaunchMode.externalApplication);
                        },
                        child: Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.blue,
                          size: 50,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Color.fromRGBO(27, 38, 59, 1),
                      child: GestureDetector(
                        onTap: () {
                          launchUrl(
                              Uri.parse(
                                  'https://telegram.me/your-telegram-username'),
                              mode: LaunchMode.externalApplication);
                        },
                        child: Icon(
                          FontAwesomeIcons.telegram,
                          color: Colors.blue,
                          size: 50,
                        ),
                      ),
                    ),
                  ];
                  return aFvatars[index % aFvatars.length];
                },
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(8.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
