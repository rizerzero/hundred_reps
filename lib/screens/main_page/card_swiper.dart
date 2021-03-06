import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:hundred_reps/screens/main_page/custom_card.dart';

class CardSwiper extends StatefulWidget {
  final SwiperController sController;

  CardSwiper({Key key, this.sController}) : super(key: key);

  @override
  _CardSwiperState createState() => _CardSwiperState();
}

class _CardSwiperState extends State<CardSwiper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return CustomCard(index: index);
        },
        itemCount: 9,
        loop: false,
        scale: 0.7, // Using small scale to get breathing room around cards for the Tilt effect
        viewportFraction: 0.7,
        physics: NeverScrollableScrollPhysics(), // Prevents user form scrolling cards
        controller: widget.sController,
      ),
    );
  }
}
