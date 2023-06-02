import 'dart:async';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';

class utils{


  PageController _pageController = PageController();
  int _currentPage = 0;
  Timer? _timer;
  static Map<String, dynamic> product={

    "first_cry": {
      "banner": [
        {
          "img_url": "https://cdn.fcglcdn.com/brainbees/banners/mktng_hp_jumbo_30may1685443022037.webp"
        },
        {
          "img_url": "https://cdn.fcglcdn.com/brainbees/banners/merchan_…ni_dkstp_diaperingess_31.5.20231685424454249.webp"
        },
        {
          "img_url": "https://cdn.fcglcdn.com/brainbees/banners/mktng_hp_mes_31may231685362621206.webp"
        },
        {
          "img_url": "https://cdn.fcglcdn.com/brainbees/banners/baby_hug_cpid_hp_new_may_1685518261072.webp"
        },
        {
          "img_url": "https://cdn.fcglcdn.com/brainbees/banners/slurrpfarm_hp_mkt_po3_all_slur401684394000830.webp"
        },
        {
          "img_url": "https://cdn.fcglcdn.com/brainbees/banners/merchan_…ni_dkstp_diaperingess_31.5.20231685424454249.webp"
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
}