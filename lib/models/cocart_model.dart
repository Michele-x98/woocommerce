import 'package:woocommerce/models/products.dart';

class CoCartModel {
  ThwepoOptions thwepoOptions;
  String key;
  int productId;
  int quantity;
  double thwepoOriginalPrice;
  double lineTax;
  String productName;
  String productTitle;
  String productPrice;
  String productImage;

  CoCartModel(
      {this.thwepoOptions,
      this.key,
      this.productId,
      this.quantity,
      this.thwepoOriginalPrice,
      this.lineTax,
      this.productName,
      this.productTitle,
      this.productPrice,
      this.productImage});

  CoCartModel.fromJson(Map<String, dynamic> json) {
    thwepoOptions = json['thwepo_options'] != null
        ? new ThwepoOptions.fromJson(json['thwepo_options'])
        : null;
    key = json['key'];
    productId = json['product_id'];
    quantity = json['quantity'];
    thwepoOriginalPrice = json['thwepo-original_price'];
    lineTax = json['line_tax'];
    productName = json['product_name'];
    productTitle = json['product_title'];
    productPrice = json['product_price'];
    productImage = json['product_image'];
  }
}

class ThwepoOptions {
  List<CartOption> cartOption = new List<CartOption>();

  ThwepoOptions({this.cartOption});

  ThwepoOptions.fromJson(Map<String, dynamic> json) {
    json.forEach((key, value) {
      cartOption.add(new CartOption.fromJson(value));
    });
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    this.cartOption.forEach((element) {
      data[element.name] = element.toJson();
    });
    return data;
  }
}

class CartOption {
  String name;
  String label;
  String value;
  List<OptionInfo> options = new List<OptionInfo>();

  CartOption({this.name, this.label, this.value, this.options});

  CartOption.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    label = json['label'];
    value = json['value'];
    if (json['options'] != null) {
      json['options'].forEach((key, value) {
        options.add(new OptionInfo.fromJson(value));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['field_type'] = 'select';
    data['name'] = this.name;
    data['label'] = this.label;
    data['value'] = this.value;
    data['price'] = "";
    data['price_type'] = "";
    data['price_min_unit'] = "";
    data['price_unit'] = 0;
    data['quantity'] = false;
    data['price_field'] = 1;
    data['options'] = listOptionToJson();
    data['hide_in_cart'] = false;
    data['hide_in_checkout'] = false;
    data['show_price_in_order'] = true;
    data['price_flat_fee'] = false;
    return data;
  }

  Map<String, dynamic> listOptionToJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    this.options.forEach((element) {
      data[element.key] = element.toJson();
    });
    return data;
  }
}
