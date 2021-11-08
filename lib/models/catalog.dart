import 'dart:convert';

class catalogItem {
  static List<Item> items = [

  ];
}

class Item {
  final String name;
  final int id;
  final String color;
  final String desc;
  final int price;
  final String image;

  Item(
    this.name,
    this.id,
    this.color,
    this.desc,
    this.price,
    this.image,
  );



  Item copyWith({
    String? name,
    int? id,
    String? color,
    String? desc,
    int? price,
    String? image,
  }) {
    return Item(
      name ?? this.name,
      id ?? this.id,
      color ?? this.color,
      desc ?? this.desc,
      price ?? this.price,
      image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'id': id,
      'color': color,
      'desc': desc,
      'price': price,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      map['name'],
      map['id'],
      map['color'],
      map['desc'],
      map['price'],
      map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(name: $name, id: $id, color: $color, desc: $desc, price: $price, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Item &&
      other.name == name &&
      other.id == id &&
      other.color == color &&
      other.desc == desc &&
      other.price == price &&
      other.image == image;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      id.hashCode ^
      color.hashCode ^
      desc.hashCode ^
      price.hashCode ^
      image.hashCode;
  }
}
