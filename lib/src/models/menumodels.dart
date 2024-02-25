class MenuModels {
  MenuModels({
    required this.result,
  });
  late final List<Result> result;

  MenuModels.fromJson(Map<String, dynamic> json) {
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
    required this.imageFileName,
    required this.name,
    required this.value,
    required this.color,
    required this.addSizeBox,
    required this.percentage,
    required this.underValue,
  });
  late final String imageFileName;
  late final String name;
  late final int value;
  late final Color color;
  late final bool addSizeBox;
  late final double percentage;
  late final bool underValue;

  Result.fromJson(Map<String, dynamic> json) {
    imageFileName = json['image_file_name'];
    name = json['name'];
    value = json['value'];
    color = Color.fromJson(json['color']);
    addSizeBox = json['add_size_box'];
    percentage = json['percentage'];
    underValue = json['under_value'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['image_file_name'] = imageFileName;
    data['name'] = name;
    data['value'] = value;
    data['color'] = color.toJson();
    data['add_size_box'] = addSizeBox;
    data['percentage'] = percentage;
    data['under_value'] = underValue;
    return data;
  }
}

class Color {
  Color({
    required this.r,
    required this.g,
    required this.b,
    required this.opacity,
  });
  late final int r;
  late final int g;
  late final int b;
  late final double opacity;

  Color.fromJson(Map<String, dynamic> json) {
    r = json['r'];
    g = json['g'];
    b = json['b'];
    opacity = json['opacity'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['r'] = r;
    data['g'] = g;
    data['b'] = b;
    data['opacity'] = opacity;
    return data;
  }
}
