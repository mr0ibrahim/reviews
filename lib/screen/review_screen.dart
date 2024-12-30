import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:review/model/review_modal.dart';
import 'package:review/constant.dart';
import 'package:review/widget/widget_review.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class Reviews extends StatefulWidget {
  const Reviews({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ReviewsState createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  bool isMore = false;
 double start1 = 0;
double start2 = 0;
double start3 = 0;
double start4 = 0;
double start5 = 0;

void rrr() {


  for (ReviewModal i in reviewList) {
    if (i.rating > 0 && i.rating <=1) {
      start1++;
    } else if (i.rating >1 && i.rating <=2) {
      start2++;
    } else if (i.rating > 2 && i.rating <=3) {
      start3++;
    } else if (i.rating > 3 && i.rating <=4) {
      start4++;
    } else if (i.rating > 4 && i.rating <=5) {
      start5++;
    } 
  }

  setState(() {});
}


List<double> get ratings {
  double totalReviews = reviewList.length.toDouble(); // حساب المجموع الكلي للمراجعات
  if (totalReviews == 0) {
    return [0, 0, 0, 0, 0]; // في حال لا توجد مراجعات
  }
  return [
    start1 / totalReviews,
    start2 / totalReviews,
    start3 / totalReviews,
    start4 / totalReviews,
    start5 / totalReviews,
  ];
}
@override

void initState() {
  super.initState();
  rrr(); // استدعاء الدالة عند فتح التطبيق
}
double calculateAverageRating(List<ReviewModal> reviews) {
  if (reviews.isEmpty) {
    return 0.0; // في حال كانت القائمة فارغة
  }
  double total = reviews.fold(
      0.0, (sum, review) => sum + review.rating); // جمع التقييمات
  return total / reviews.length; // حساب المتوسط
}

@override
Widget build(BuildContext context) {
  double averageRating = calculateAverageRating(reviewList);

  return Scaffold(
    backgroundColor: kWhiteColor,
    body: Column(
      children: [
        Container(
          color: kAccentColor,
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 16.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: averageRating.toStringAsFixed(1),
                          style: const TextStyle(fontSize: 48.0),
                        ),
                        const TextSpan(
                          text: "/5",
                          style: TextStyle(
                            fontSize: 24.0,
                            color: kLightColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SmoothStarRating(
                    starCount: 5,
                    rating: averageRating,
                    size: 28.0,
                    color: Colors.orange,
                    borderColor: Colors.orange,
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    "${reviewList.length} Reviews",
                    style: const TextStyle(
                      fontSize: 20.0,
                      color: kLightColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 200.0,
                child: ListView.builder(
                  shrinkWrap: true,
                  reverse: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Text(
                          "${index+1}",
                          style: const TextStyle(fontSize: 18.0),
                        ),
                        const SizedBox(width: 4.0),
                        const Icon(Icons.star, color: Colors.orange),
                        const SizedBox(width: 8.0),
                        LinearPercentIndicator(
                          lineHeight: 6.0,
                          width: MediaQuery.of(context).size.width / 2.8,
                          animation: true,
                          animationDuration: 2500,
                          percent: ratings[index],
                          progressColor: Colors.orange,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.only(bottom: 8.0, top: 8.0),
            itemCount: reviewList.length,
            itemBuilder: (context, index) {
              return ReviewUI(
                image: reviewList[index].image,
                name: reviewList[index].name,
                date: reviewList[index].date,
                comment: reviewList[index].comment,
                rating: reviewList[index].rating,
                onPressed: () => print("More Action $index"),
                onTap: () => setState(() {
                  isMore = !isMore;
                }),
                isLess: isMore,
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                thickness: 2.0,
                color: kAccentColor,
              );
            },
          ),
        ),
      ],
    ),
  );
}

}
