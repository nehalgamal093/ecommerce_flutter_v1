// To parse this JSON data, do
//
//     final jewlery = jewleryFromJson(jsonString);

import 'dart:convert';

List<Jewlery> jewleryFromJson(String str) => List<Jewlery>.from(json.decode(str).map((x) => Jewlery.fromJson(x)));

String jewleryToJson(List<Jewlery> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Jewlery {
    Jewlery({
        this.id,
        this.title,
        this.price,
        this.description,
        this.category,
        this.image,
    });

    int id;
    String title;
    double price;
    String description;
    String category;
    String image;

    factory Jewlery.fromJson(Map<String, dynamic> json) => Jewlery(
        id: json["id"],
        title: json["title"],
        price: json["price"].toDouble(),
        description: json["description"],
        category: json["category"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category,
        "image": image,
    };
}
