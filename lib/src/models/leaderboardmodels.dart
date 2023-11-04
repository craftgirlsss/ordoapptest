class Leaderboards {
  Leaderboards({
    required this.result,
  });
  late final List<Result> result;

  Leaderboards.fromJson(Map<String, dynamic> json) {
    result = List.from(json['result']).map((e) => Result.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['result'] = result.map((e) => e.toJson()).toList();
    return data;
  }
}

class Result {
  Result(
      {required this.name,
      required this.avatarFileName,
      required this.deals,
      required this.date,
      required this.price});
  late final String name;
  late final String avatarFileName;
  late final String date;
  late final int price;
  late final int deals;
  Result.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    deals = json['deals'];
    avatarFileName = json['avatar_file_name'];
    date = json['date'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['avatar_file_name'] = avatarFileName;
    data['deals'] = deals;
    data['date'] = date;
    data['price'] = price;
    return data;
  }
}

class ContainerColor {
  ContainerColor({
    required this.r,
    required this.g,
    required this.b,
    required this.o,
  });
  late final int r;
  late final int g;
  late final int b;
  late final double o;

  ContainerColor.fromJson(Map<String, dynamic> json) {
    r = json['r'];
    g = json['g'];
    b = json['b'];
    o = json['o'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['r'] = r;
    data['g'] = g;
    data['b'] = b;
    data['o'] = o;
    return data;
  }
}
