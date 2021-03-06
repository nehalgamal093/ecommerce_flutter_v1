// To parse this JSON data, do
//
//     final electronics = electronicsFromJson(jsonString);

import 'dart:convert';

List<Electronics> electronicsFromJson(String str) => List<Electronics>.from(json.decode(str).map((x) => Electronics.fromJson(x)));

String electronicsToJson(List<Electronics> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Electronics {
    Electronics({
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

    factory Electronics.fromJson(Map<String, dynamic> json) => Electronics(
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
