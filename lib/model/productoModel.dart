class ProductModel {
  final int id;
  final String productName;
  final String productImage;
  final String productDescription;
  final String category;
  final double rating;
  final double price;
  final int quantityAvailable;

  ProductModel(
      this.id,
      this.productName,
      this.productImage,
      this.productDescription,
      this.rating,
      this.price,
      this.category,
      this.quantityAvailable);
}
