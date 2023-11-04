class RecentModels {
  RecentModels({
    required this.result,
  });
  late final List<Result> result;

  RecentModels.fromJson(Map<String, dynamic> json) {
    result = List.from(json['result']).map((e) => Result.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['result'] = result.map((e) => e.toJson()).toList();
    return data;
  }
}

class Result {
  Result({
    required this.name,
    required this.avatarFileName,
    required this.containerColor,
    required this.date,
    required this.labelNameIcon,
    required this.price,
    required this.labelFileName,
  });
  late final String name;
  late final String avatarFileName;
  late final ContainerColor containerColor;
  late final String date;
  late final String labelNameIcon;
  late final int price;
  late final String labelFileName;

  Result.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    avatarFileName = json['avatar_file_name'];
    containerColor = ContainerColor.fromJson(json['container_color']);
    date = json['date'];
    labelNameIcon = json['label_name_icon'];
    price = json['price'];
    labelFileName = json['label_file_name'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['avatar_file_name'] = avatarFileName;
    data['container_color'] = containerColor.toJson();
    data['date'] = date;
    data['label_name_icon'] = labelNameIcon;
    data['price'] = price;
    data['label_file_name'] = labelFileName;
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
