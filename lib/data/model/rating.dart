class Rating {
  final double rate;
  final int count;

  const Rating({required this.rate,required this.count});

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
    rate: (json['rate'] as num).toDouble(),
    count: json['count'] as int,
  );

  Map<String, dynamic> toJson() => {'rate': rate, 'count': count};
}
