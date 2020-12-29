// To parse this JSON data, do
//
//     final coCartModel = coCartModelFromJson(jsonString);

import 'dart:convert';

Map<String, CoCartModel> coCartModelFromJson(String str) =>
    Map.from(json.decode(str)).map(
        (k, v) => MapEntry<String, CoCartModel>(k, CoCartModel.fromJson(v)));

String coCartModelToJson(Map<String, CoCartModel> data) => json.encode(
    Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())));

class CoCartModel {
  CoCartModel({
    this.thwepofOptions,
    this.key,
    this.productId,
    this.variationId,
    this.variation,
    this.quantity,
    this.dataHash,
    this.lineTax,
    this.productName,
    this.productTitle,
    this.productPrice,
    this.productImage,
  });

  ThwepofOptions thwepofOptions;
  String key;
  int productId;
  int variationId;
  List<dynamic> variation;
  int quantity;
  String dataHash;
  double lineTax;
  String productName;
  String productTitle;
  String productPrice;
  String productImage;

  factory CoCartModel.fromJson(Map<String, dynamic> json) => CoCartModel(
        thwepofOptions: json["thwepof_options"] == null
            ? null
            : ThwepofOptions.fromJson(json["thwepof_options"]),
        key: json["key"] == null ? null : json["key"],
        productId: json["product_id"] == null ? null : json["product_id"],
        variationId: json["variation_id"] == null ? null : json["variation_id"],
        variation: json["variation"] == null
            ? null
            : List<dynamic>.from(json["variation"].map((x) => x)),
        quantity: json["quantity"] == null ? null : json["quantity"],
        dataHash: json["data_hash"] == null ? null : json["data_hash"],
        lineTax: json["line_tax"] == null ? null : json["line_tax"].toDouble(),
        productName: json["product_name"] == null ? null : json["product_name"],
        productTitle:
            json["product_title"] == null ? null : json["product_title"],
        productPrice:
            json["product_price"] == null ? null : json["product_price"],
        productImage:
            json["product_image"] == null ? null : json["product_image"],
      );

  Map<String, dynamic> toJson() => {
        "thwepof_options":
            thwepofOptions == null ? null : thwepofOptions.toJson(),
        "key": key == null ? null : key,
        "product_id": productId == null ? null : productId,
        "variation_id": variationId == null ? null : variationId,
        "variation": variation == null
            ? null
            : List<dynamic>.from(variation.map((x) => x)),
        "quantity": quantity == null ? null : quantity,
        "data_hash": dataHash == null ? null : dataHash,
        "line_tax": lineTax == null ? null : lineTax,
        "product_name": productName == null ? null : productName,
        "product_title": productTitle == null ? null : productTitle,
        "product_price": productPrice == null ? null : productPrice,
      };
}

class ThwepofOptions {
  ThwepofOptions({
    this.salse,
    this.posate,
    this.condimenti,
    this.pane,
  });

  CartOption salse;
  CartOption posate;
  CartOption condimenti;
  CartOption pane;

  factory ThwepofOptions.fromJson(Map<String, dynamic> json) => ThwepofOptions(
        salse:
            json["salse"] == null ? null : CartOption.fromJson(json["salse"]),
        posate:
            json["posate"] == null ? null : CartOption.fromJson(json["posate"]),
        condimenti: json["condimenti"] == null
            ? null
            : CartOption.fromJson(json["condimenti"]),
        pane: json["pane"] == null ? null : CartOption.fromJson(json["pane"]),
      );

  Map<String, dynamic> toJson() => {
        "salse": salse == null ? null : salse.toJson(),
        "posate": posate == null ? null : posate.toJson(),
        "condimenti": condimenti == null ? null : condimenti.toJson(),
        "pane": pane == null ? null : pane.toJson(),
      };
}

class CartOption {
  CartOption({
    this.name,
    this.value,
    this.type,
    this.label,
    this.options,
  });

  String name;
  String value;
  String type;
  String label;
  List<String> options;

  factory CartOption.fromJson(Map<String, dynamic> json) => CartOption(
        name: json["name"] == null ? null : json["name"],
        value: json["value"] == null ? null : json["value"],
        type: json["type"] == null ? null : json["type"],
        label: json["label"] == null ? null : json["label"],
        options: json["options"] == null
            ? null
            : List<String>.from(json["options"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "value": value == null ? null : value,
        "type": type == null ? null : type,
        "label": label == null ? null : label,
        "options":
            options == null ? null : List<dynamic>.from(options.map((x) => x)),
      };
}
