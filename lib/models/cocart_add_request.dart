import 'package:woocommerce/models/cocart_model.dart';

class CoCartItemRequest {
  String productId;
  int quantity;
  CartItemData cartItemData;

  CoCartItemRequest({this.productId, this.quantity, this.cartItemData});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['quantity'] = this.quantity;
    data['cart_item_data'] = this.cartItemData.toJson();
    return data;
  }
}

class CartItemData {
  ThwepoOptions thwepoOptions;

  CartItemData({this.thwepoOptions});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['thwepo_options'] = this.thwepoOptions.toJson();
    return data;
  }
}
