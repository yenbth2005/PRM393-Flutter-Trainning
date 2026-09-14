
class Product {
  final String id;
  final String name;
  final int quatity;
  final double price;
  final String? image;
  final String? description;

  Product(
      {required this.id, required this.name, this.quatity = 0, this.price = 0.0, this.image = "", this.description = ""});

  //CopyWith
  Product copyWith({String? id, String? name, int? quatity, double? price, String? image, String? description}) {
    return new Product(
        id: id ?? this.id,
        name: name ?? this.name,
        quatity: quatity ?? this.quatity,
        price: price ?? this.price,
        image: image ?? this.image,
        description: description ?? this.description
    );
  }

  factory Product.formJson(Map<String,dynamic> json){
    return  Product(
      id: json['id'] as String ?? '',
      name: json['name'] as String ?? '',
      quatity: json ['quatity'] as int,
      price: json['price'] as double ,
      image: json['image'] as String,
      description: json['description'] as String ?? ''
    );
  }

  Map<String,dynamic>toJson(){
    return {
      'id':id,
      'name': name,
      'quatity': quatity,
      'price': price,
      'image': image,
      'description': description

    };
  }
}
// commit bai