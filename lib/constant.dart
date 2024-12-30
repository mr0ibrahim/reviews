import 'package:flutter/material.dart';
import 'package:review/model/review_modal.dart';



const kPrimaryColor = Color(0xFFFF8084);
const kAccentColor = Color(0xFFF1F1F1);
const kWhiteColor = Color(0xFFFFFFFF);
const kLightColor = Color(0xFF808080);
const kDarkColor = Color(0xFF303030);
const kTransparent = Colors.transparent;

const kDefaultPadding = 24.0;
const kLessPadding = 10.0;
const kFixPadding = 16.0;
const kLess = 4.0;

const kShape = 30.0;

const kRadius = 0.0;
const kAppBarHeight = 56.0;

const kHeadTextStyle = TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
);

const kSubTextStyle = TextStyle(
  fontSize: 18.0,
  color: kLightColor,
);

const kTitleTextStyle = TextStyle(
  fontSize: 20.0,
  color: kPrimaryColor,
);

const kDarkTextStyle = TextStyle(
  fontSize: 20.0,
  color: kDarkColor,
);

const kDivider = Divider(
  color: kAccentColor,
  thickness: kLessPadding,
);

const kSmallDivider = Divider(
  color: kAccentColor,
  thickness: 5.0,
);





final reviewList = [
  ReviewModal(
    image: "assets/images/mensFashion.jpg",
    name: "John Travolta",
    rating: 3.5,
    date: "01 Jan 2024",
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/images/mensFashion.jpg",
    name: "John Travolta",
    rating: 1.0,
    date: "01 Jan 2024",
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/images/mensFashion.jpg",
    name: "Scarlett Johansson",
    rating: 2.5,
    date: "21 Feb 2024",
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/images/mensFashion.jpg",
    name: "Jennifer Lawrence",
    rating: 4.5,
    date: "17 Mar 2024",
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/images/mensFashion.jpg",
    name: "Michael Jordan",
    rating: 1.5,
    date: "12 Apr 2024",
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  ),
  ReviewModal(
    image: "assets/images/mensFashion.jpg",
    name: "Nicole Kidman",
    rating: 2.0,
    date: "28 May 2024",
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/images/mensFashion.jpg",
    name: "James Franco",
    rating: 4.0,
    date: "14 Nov 2024",
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/images/mensFashion.jpg",
    name: "Margot Robbie",
    rating: 1.0,
    date: "14 Nov 2024",
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
   ReviewModal(
    image: "assets/images/mensFashion.jpg",
    name: "Margot Robbie",
    rating: 1.0,
    date: "14 Nov 2024",
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
   ReviewModal(
    image: "assets/images/mensFashion.jpg",
    name: "Margot Robbie",
    rating: 1.0,
    date: "14 Nov 2024",
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/images/mensFashion.jpg",
    name: "Nicolas Cage",
    rating: 3.0,
    date: "14 Nov 2024",
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/images/mensFashion.jpg",
    name: "Emma Stone",
    rating: 5.0,
    date: "14 Nov 2024",
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/images/mensFashion.jpg",
    name: "Johnny Depp",
    rating: 3.5,
    date: "14 Nov 2024",
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/images/mensFashion.jpg",
    name: "Natalie Portman",
    rating: 3.5,
    date: "14 Nov 2024",
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/images/mensFashion.jpg",
    name: "Anne Hathaway",
    rating: 3.5,
    date: "14 Nov 2024",
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/images/mensFashion.jpg",
    name: "Charlize Theron",
    rating: 3.5,
    date: "14 Nov 2024",
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
];


