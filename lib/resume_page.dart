import 'package:flutter/material.dart';
import 'package:resumeapp/webview.dart';

class ResumePage extends StatefulWidget {
  const ResumePage({Key? key}) : super(key: key);

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  void _handleURLButtonPress(
    BuildContext context,
    String url,
  ) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => WebViewPage(
                  url,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              const SizedBox(
                height: 350,
                width: double.infinity,
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.blue,
              ),
              Positioned(
                top: 120,
                left: 15,
                right: 15,
                child: Material(
                  elevation: 0,
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Positioned(
                  top: 75,
                  left: 120,
                  child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                            image: AssetImage("assets/kush.jpg"),
                            fit: BoxFit.cover),
                      ))),
              Positioned(
                top: 190,
                left: (MediaQuery.of(context).size.width / 2) - 80.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Kushimo Bashir",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Mobile developer",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildCounters(context, '1K', 'Likes'),
                        const SizedBox(
                          width: 12,
                        ),
                        buildCounters(context, '3K', 'Following'),
                        const SizedBox(
                          width: 12,
                        ),
                        buildCounters(context, '20K', 'Followers'),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          const SizedBox(height: 10),
          const Padding(
             padding:  EdgeInsets.only(left:8.0),
             child:  Text(
              "Experience",
              // textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
           ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: const Text(
            'Travoofy (Remote) — Mobile App Developer\n A Traveling Agent Application', 
             style: TextStyle(
             
             fontWeight: FontWeight.bold, fontSize: 15),
           ),
         ),
          const Padding(
            padding:  EdgeInsets.only(left:8.0, right: 5),
            child:  Text(
             'Building A responsive user interface for the product across all devices.', 
              style: TextStyle(
              
              fontWeight: FontWeight.w400, fontSize: 15),
            ),
          ),
          const Padding(
            padding:  EdgeInsets.only(left:8.0, right:0),
            child:  Text(
             'Integrating InAppWebview plugins to the Application as it is a Lite version wanted by the company.',
              style: TextStyle(
              
              fontWeight: FontWeight.w400, fontSize: 15),
            ),
          ),
          SizedBox(height: 20,),
         const Padding(
            padding:  EdgeInsets.only(left:8.0),
            child:  Text(
              "ABOUT",
              // textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        const  Padding(
            padding:  EdgeInsets.all(8.0),
            child:  Text(
              
              """I am a personality with an excellent and distinctive analytical thinking,competent working individual and exceptionally working with a team towards achieving specific goals. I am cheerful, optimistic and possess a good mind for learning new skills.""",
              // textAlign: ,
              style: TextStyle(
              
              fontWeight: FontWeight.w400, fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
                  buildLogo(
                      'assets/twilogo.jpg', 'https://twitter.com/Kushimo_Bashir'),
                  buildLogo('assets/link logo.jpg',
                      'https://www.linkedin.com/in/kushimo-bashir'),
                  buildLogo('assets/git logo.png', 'https://github.com/sublime247')
                  //  )],
                ]),
        ],
      ),
    );
  }

  Widget buildCounters(
    context,
    String firstLine,
    String secondLine,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          firstLine,
          style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        const SizedBox(height: 8),
        Text(
          secondLine,
          style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        const SizedBox(
          width: 20,
        ),
         

      ],
    );
  }

  Widget buildLogo(String image, String url) {
    return InkWell(
      onTap: () {
        _handleURLButtonPress(
          context,
          url,
        );
      },
      child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          )),
    );
  }
}
