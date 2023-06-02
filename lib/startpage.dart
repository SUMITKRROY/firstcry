import 'dart:async';

import 'package:firstcry/HomePage.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  PageController _pageController = PageController();
  int _currentPage = 0;
  Timer? _timer;
  Map<String, dynamic> product={

    "first_cry": {
      "banner": [
        {
          "img_url": "https://cdn.fcglcdn.com/brainbees/banners/mobile/mktng_d_mod_1june231685540255840.webp"
        },
        {
          "img_url": "https://cdn.fcglcdn.com/brainbees/banners/mobile/babyhug-summer_cc_mobilet1685084529690.webp"
        },
        {
          "img_url": "https://cdn.fcglcdn.com/brainbees/banners/mobile/hp_mktg_p01_buy3_super_summer_default1685522747834.webp"
        },
        {
          "img_url": "https://cdn.fcglcdn.com/brainbees/banners/mobile/baby_hug_hp_mkt_po5_all_2_babyaz501685518330531.webp"
        },
        {
          "img_url": "https://cdn.fcglcdn.com/brainbees/banners/mobile/parentinghp3_31may1685440249712.webp"
        },
        {
          "img_url": "https://cdn.fcglcdn.com/brainbees/banners/mobile/mobile_hp_merch_p10_books_atiba_default_1stjune1685534984382.webp"
        }
      ],
      "PREMIUM_BOUTIQUES":[
        {
          "img_url": "https://cdn.fcglcdn.com/brainbees/images/boutique/670x670/29975.webp",
          "title": "Slay All Day | 4-14Y",
          "subtitle": "Frocks, Dresses & More",
          "day": "NEW TODAY"
        },
        {
          "img_url": "https://cdn.fcglcdn.com/brainbees/images/boutique/670x670/29976.webp",
          "title": "What's Trending In Kids Fashion | Up To 24M",
          "subtitle": "Onesies, Rompers, Tops, Sets & more",
          "day":"NEW TODAY"
        },
        {
          "img_url": "https://cdn.fcglcdn.com/brainbees/images/boutique/670x670/29981.webp",
          "title": "Happy Feeding",
          "subtitle": "",
          "day":"NEW TODAY"
        },

        {
          "img_url": "https://cdn.fcglcdn.com/brainbees/images/boutique/670x670/29977.webp",
          "title": "Fashion at Play | 3-14Y",
          "subtitle": "Tops, Tees, Bottoms & more",
          "day":"NEW TODAY"
        }

      ]
    }

  };

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _startTimer();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < product['first_cry']['banner'].length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        body:  SingleChildScrollView(
          child: Column(
            children: [
              Container(
                //  color: Colors.red,
                // padding: const EdgeInsets.all(8),
                height: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      height: 100,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: contents.length,
                          itemBuilder: (context, i) {
                            return  Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0),
                              child: InkWell(
                                onTap: (){},
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:  [
                                    CircleAvatar(
                                      radius: 35,
                                      backgroundColor: Colors.red.shade50,
                                      child: Image.network(contents[i].image, height: 60,
                                        width:  40,),
                                    ),
                                    SizedBox(width: 50,
                                        child: Center(
                                            child: Text(contents[i].title,
                                              style: const TextStyle(height: 1.5,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black),
                                              overflow: TextOverflow.ellipsis,)))
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                    ),
                  ],
                ),
              ),
              Image.network('https://cdn.fcglcdn.com/brainbees/banners/test/clubfreeship_202211720637.jpg'),
              SizedBox(height: 10,),

              Container(
                height: 350, // Adjust the height as per your requirements
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: product['first_cry']['banner'].length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        SizedBox(child: Image.network(product['first_cry']['banner'][index]['img_url'])),
                      ],
                    );
                  },
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                ),
              ),
              Image.network('https://cdn.fcglcdn.com/brainbees/banners/newuser_march23-Appstrip.gif'),
             SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Align(alignment:Alignment.topLeft,child: Text('Shop By Category')),
              ),
              SizedBox(
height: 400,
                child: GridView.count(

                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2, // Number of columns in each row
                  children: [
                    buildGridItem( "https://cdn.fcglcdn.com/brainbees/resimg/wd_360/images/cattemplate/SBC_Default_summer_1.webp"),
                    buildGridItem( "https://cdn.fcglcdn.com/brainbees/resimg/wd_360/images/cattemplate/SBC_Default_summer_2.webp"),
                    buildGridItem( "https://cdn.fcglcdn.com/brainbees/resimg/wd_360/images/cattemplate/SBC_Default_summer_3.webp"),
                    buildGridItem( "https://cdn.fcglcdn.com/brainbees/resimg/wd_360/images/cattemplate/SBC_Default_summer_4.webp"),
                  ],
                ),
              ),

              // const SizedBox(
              //   height: 10,
              // ),

            ],
          ),
        ),

      ),
    );
  }
  Widget buildGridItem( String imageUrl) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.network(
            imageUrl,

            height: height*0.18,
            fit: BoxFit.cover,
          ),

        ],
      ),
    );
  }
}
class Onboarding {
  String image;
  String title;


  Onboarding(
      {required this.image,
        required this.title,
       });
}

List<Onboarding> contents = [
  Onboarding(
      title: "Add child",
      image: "https://cdn.fcglcdn.com/brainbees/images/m/plus-blue.png",
     ),
  Onboarding(
      title: "all",
      image: "https://cdn.fcglcdn.com/brainbees/images/m/pall_new.png",
     ),
  Onboarding(
      title: "boys",
      image: "https://cdn.fcglcdn.com/brainbees/images/m/pboydefault_new.png",
     ),  Onboarding(
      title: "girls",
      image: "https://cdn.fcglcdn.com/brainbees/images/m/pgirldefault_new.png",
     ),  Onboarding(
      title: "Expecting",
      image: "https://cdn.fcglcdn.com/brainbees/images/m/expectingdefault_new.png",
     ),
];