/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Product extends _i1.SerializableEntity {
  Product({
    this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.createdOn,
    required this.isLiked,
    required this.noOfItems,
  });

  factory Product.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Product(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      image:
          serializationManager.deserialize<String>(jsonSerialization['image']),
      price:
          serializationManager.deserialize<double>(jsonSerialization['price']),
      createdOn: serializationManager
          .deserialize<DateTime>(jsonSerialization['createdOn']),
      isLiked:
          serializationManager.deserialize<bool>(jsonSerialization['isLiked']),
      noOfItems:
          serializationManager.deserialize<int>(jsonSerialization['noOfItems']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String image;

  double price;

  DateTime createdOn;

  bool isLiked;

  int noOfItems;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'price': price,
      'createdOn': createdOn,
      'isLiked': isLiked,
      'noOfItems': noOfItems,
    };
  }
}
