class ReviewModal {
  String image;
  String name;
  double rating;
  String date;
  String comment;

  ReviewModal({required this.image, required this.name, required this.rating, required this.date, required this.comment});

 factory ReviewModal.fromJson(Map<String, dynamic> json) {
    
   return ReviewModal(  image :json['image'],
    name :json['name'],
    rating : json['rating'],
    date : json['date'],
    comment : json['comment']);
  
  }

 Map<String, Object> toJson() {
  final Map<String, Object> data = {}; // تهيئة الخريطة هنا
  data['image'] = image;
  data['name'] = name;
  data['rating'] = rating;
  data['date'] = date;
  data['comment'] = comment;
  return data;
}

}