import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class ProductEndpoint extends Endpoint {
  // Get all products
  Future<List<Product>> getAllProducts(Session session) async {
    return await Product.find(session);
  }

  // Get a single product by id
  Future<Product?> getProductById(Session session, int id) async {
    return await Product.findById(session, id);
  }

  // Create a new product
  Future<bool> insertProduct(Session session, Product product) async {
    await Product.insert(session, product);
    return true;
  }

  // Update a product
  Future<bool> updateProduct(Session session, Product product) async {
    await Product.update(session, product);
    return true;
  }

  // Delete a product
  Future<bool> deleteProduct(Session session, int id) async {
    await Product.delete(session, where: (t) => t.id.equals(id));
    return true;
  }
}
