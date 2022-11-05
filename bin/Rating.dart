class Rating {
  num? rate;
  int? count;

  Rating({this.rate, this.count});

  Rating.fromMap(Map<String, dynamic> map) {
    rate = map['rate'];
    count = map['count'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rate'] = rate;
    data['count'] = count;
    return data;
  }
}