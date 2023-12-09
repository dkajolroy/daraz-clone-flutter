class SliderModel {
  String? id;
  String? image;
  bool? isActive;

  SliderModel({this.id, this.image, this.isActive});

  SliderModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    image = json["image"];
    isActive = json["isActive"];
  }
}
