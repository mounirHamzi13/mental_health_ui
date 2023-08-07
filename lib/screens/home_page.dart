import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_healthcare_ui/widgets/custom_icon.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.8;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      backgroundColor: Colors.blue.shade800,
      
      bottomNavigationBar :
       Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        color: Colors.white,
        // margin: EdgeInsets.all(5),
        height: 100,
        width: MediaQuery.of(context).size.width *0.8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              // mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 17),
                  child: Icon(
                    
                    Icons.home_filled,
                    color: Colors.blue.shade800,
                    size: 35,
                  ),
                ),
                // Spacer() ,
                Image.asset("assets/images/shape_flutter.png")
              ],
            ),
            Icon(Icons.app_registration_rounded, color: Colors.grey,size: 35,),
            Icon(CupertinoIcons.mail_solid, color: Colors.grey,size: 35,),
            Icon(Icons.person, color: Colors.grey,size: 35,),
          ],
        ),
      ),
      
      
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Hi,Mou!",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                            letterSpacing: 1.4),
                      ),
                      Text(
                        "23 jan ,2021",
                        style: TextStyle(
                            color: Colors.grey.shade300, letterSpacing: 1.3),
                      ),
                    ],
                  ),
                  CustomIcon(icon: Icons.notifications_sharp),
                  // Icon(Icons.notifications_sharp, color: Colors.white, size: 30,)
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: width,
              child: TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(20),
                  prefixIcon: const Icon(
                    CupertinoIcons.search,
                    color: Colors.white,
                    size: 35,
                  ),
                  hintText: "Search",
                  fillColor: const Color.fromRGBO(251, 250, 250, 0.2),
                  hintStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: width,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How do you feel ?',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: width,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CustomIcon(
                          image: Image.network(
                            'https://emojiisland.com/cdn/shop/products/Emoji_Icon_-_Sad_Emoji_large.png?v=1571606093',
                            width: 30,
                          ),
                        ),
                        const Text(
                          "Badly",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        CustomIcon(
                          image: Image.network(
                            'https://cdn.shopify.com/s/files/1/1061/1924/files/Smiling_Emoji_Icon_-_Blushed_70x70.png?13752525173949329807',
                            width: 30,
                          ),
                        ),
                        const Text(
                          "Fine",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        CustomIcon(
                          image: Image.network(
                            'https://cdn.shopify.com/s/files/1/1061/1924/products/Happy_Emoji_Icon_5c9b7b25-b215-4457-922d-fef519a08b06.png?v=1485573457',
                            width: 30,
                          ),
                        ),
                        const Text(
                          "Well",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        CustomIcon(
                          image: Image.network(
                            'https://cdn.shopify.com/s/files/1/1061/1924/products/Emoji_Icon_-_Smiling_70x70.png?v=1485573428',
                            width: 30,
                          ),
                        ),
                        const Text(
                          "Exellent",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ]),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding:
                    EdgeInsets.only(left: width / 8, right: width / 8, top: 25, ),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 241, 240, 240),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: ListView(
                  children: [
                    SizedBox(
                      width: width,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Excercises',
                            style: TextStyle(
                                color: Color.fromRGBO(48, 62, 101, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Icon(
                            Icons.more_horiz,
                            color: Color.fromRGBO(48, 62, 101, 1),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 30,) ,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin : EdgeInsets.symmetric(vertical : 10) ,
                          
                          height:
                              90, // Adjust the height as per your requirement
                          decoration: BoxDecoration(
                            color: Colors.white , // Set your desired background color
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: ListTile(
                            visualDensity: VisualDensity.comfortable,
                            horizontalTitleGap :15 ,
                            contentPadding: const EdgeInsets.all(10),
                            leading: CustomIcon(
                              padding: 0,
                              icon: CupertinoIcons.heart_fill,
                              color: Colors.white,
                              backgroundColor:
                                  const Color.fromRGBO(247, 133, 86, 1),
                            ),
                            title: const Padding(
                              padding:  EdgeInsets.only(bottom: 6),
                              child:  Text(
                                "Speaking skills",
                                style: TextStyle(
                                  color: Color.fromRGBO(48, 62, 101, 1),
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            subtitle: const Text(
                              '16 Exercises',
                              style: TextStyle(letterSpacing: 1.2),
                            ),
                            trailing: const Icon(Icons.more_horiz),
                          ),
                        ),
                      
                        Container(
                          margin : 
                           EdgeInsets.symmetric(vertical : 10) ,
                          
                          height:
                              90, // Adjust the height as per your requirement
                          decoration: BoxDecoration(
                            color: Colors.white , // Set your desired background color
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: ListTile(
                            visualDensity: VisualDensity.comfortable,
                            horizontalTitleGap :15 ,
                            contentPadding: const EdgeInsets.all(10),
                            leading: CustomIcon(
                              padding: 0,
                              icon: CupertinoIcons.heart_fill,
                              color: Colors.white,
                              backgroundColor:
                                  const Color.fromRGBO(247, 133, 86, 1),
                            ),
                            title: const Padding(
                              padding:  EdgeInsets.only(bottom: 6),
                              child:  Text(
                                "Speaking skills",
                                style: TextStyle(
                                  color: Color.fromRGBO(48, 62, 101, 1),
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            subtitle: const Text(
                              '16 Exercises',
                              style: TextStyle(letterSpacing: 1.2),
                            ),
                            trailing: const Icon(Icons.more_horiz),
                          ),
                        ),
                      
                        Container(
                          margin : EdgeInsets.symmetric(vertical : 10) ,
                          
                          height:
                              90, // Adjust the height as per your requirement
                          decoration: BoxDecoration(
                            color: Colors.white , // Set your desired background color
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: ListTile(
                            visualDensity: VisualDensity.comfortable,
                            horizontalTitleGap :15 ,
                            contentPadding: const EdgeInsets.all(10),
                            leading: CustomIcon(
                              padding: 0,
                              icon: CupertinoIcons.heart_fill,
                              color: Colors.white,
                              backgroundColor:
                                  const Color.fromRGBO(247, 133, 86, 1),
                            ),
                            title: const Padding(
                              padding:  EdgeInsets.only(bottom: 6),
                              child:  Text(
                                "Speaking skills",
                                style: TextStyle(
                                  color: Color.fromRGBO(48, 62, 101, 1),
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            subtitle: const Text(
                              '16 Exercises',
                              style: TextStyle(letterSpacing: 1.2),
                            ),
                            trailing: const Icon(Icons.more_horiz),
                          ),
                        ),
                      
                        Container(
                          margin : EdgeInsets.symmetric(vertical : 10) ,
                          
                          height:
                              90, // Adjust the height as per your requirement
                          decoration: BoxDecoration(
                            color: Colors.white , // Set your desired background color
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: ListTile(
                            visualDensity: VisualDensity.comfortable,
                            horizontalTitleGap :15 ,
                            contentPadding: const EdgeInsets.all(10),
                            leading: CustomIcon(
                              padding: 0,
                              icon: CupertinoIcons.heart_fill,
                              color: Colors.white,
                              backgroundColor:
                                  const Color.fromRGBO(247, 133, 86, 1),
                            ),
                            title: const Padding(
                              padding:  EdgeInsets.only(bottom: 6),
                              child:  Text(
                                "Speaking skills",
                                style: TextStyle(
                                  color: Color.fromRGBO(48, 62, 101, 1),
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            subtitle: const Text(
                              '16 Exercises',
                              style: TextStyle(letterSpacing: 1.2),
                            ),
                            trailing: const Icon(Icons.more_horiz),
                          ),
                        ),
                      
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
