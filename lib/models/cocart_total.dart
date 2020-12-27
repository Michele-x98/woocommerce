// To parse this JSON data, do
//
//     final coCartTotal = coCartTotalFromJson(jsonString);

import 'dart:convert';

CoCartTotal coCartTotalFromJson(String str) =>
    CoCartTotal.fromJson(json.decode(str));

String coCartTotalToJson(CoCartTotal data) => json.encode(data.toJson());

class CoCartTotal {
  CoCartTotal({
    this.subtotal,
    this.subtotalTax,
    this.shippingTotal,
    this.shippingTax,
    this.shippingTaxes,
    this.discountTotal,
    this.discountTax,
    this.cartContentsTotal,
    this.cartContentsTax,
    this.cartContentsTaxes,
    this.feeTotal,
    this.feeTax,
    this.feeTaxes,
    this.total,
    this.totalTax,
  });

  String subtotal;
  double subtotalTax;
  String shippingTotal;
  int shippingTax;
  ShippingTaxes shippingTaxes;
  int discountTotal;
  int discountTax;
  String cartContentsTotal;
  double cartContentsTax;
  CartContentsTaxes cartContentsTaxes;
  String feeTotal;
  int feeTax;
  List<dynamic> feeTaxes;
  String total;
  double totalTax;

  factory CoCartTotal.fromJson(Map<String, dynamic> json) => CoCartTotal(
        subtotal: json["subtotal"] == null ? null : json["subtotal"],
        subtotalTax: json["subtotal_tax"] == null
            ? null
            : json["subtotal_tax"].toDouble(),
        shippingTotal:
            json["shipping_total"] == null ? null : json["shipping_total"],
        shippingTax: json["shipping_tax"] == null ? null : json["shipping_tax"],
        shippingTaxes: json["shipping_taxes"] == null
            ? null
            : ShippingTaxes.fromJson(json["shipping_taxes"]),
        discountTotal:
            json["discount_total"] == null ? null : json["discount_total"],
        discountTax: json["discount_tax"] == null ? null : json["discount_tax"],
        cartContentsTotal: json["cart_contents_total"] == null
            ? null
            : json["cart_contents_total"],
        cartContentsTax: json["cart_contents_tax"] == null
            ? null
            : json["cart_contents_tax"].toDouble(),
        cartContentsTaxes: json["cart_contents_taxes"] == null
            ? null
            : CartContentsTaxes.fromJson(json["cart_contents_taxes"]),
        feeTotal: json["fee_total"] == null ? null : json["fee_total"],
        feeTax: json["fee_tax"] == null ? null : json["fee_tax"],
        feeTaxes: json["fee_taxes"] == null
            ? null
            : List<dynamic>.from(json["fee_taxes"].map((x) => x)),
        total: json["total"] == null ? null : json["total"],
        totalTax:
            json["total_tax"] == null ? null : json["total_tax"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "subtotal": subtotal == null ? null : subtotal,
        "subtotal_tax": subtotalTax == null ? null : subtotalTax,
        "shipping_total": shippingTotal == null ? null : shippingTotal,
        "shipping_tax": shippingTax == null ? null : shippingTax,
        "shipping_taxes": shippingTaxes == null ? null : shippingTaxes.toJson(),
        "discount_total": discountTotal == null ? null : discountTotal,
        "discount_tax": discountTax == null ? null : discountTax,
        "cart_contents_total":
            cartContentsTotal == null ? null : cartContentsTotal,
        "cart_contents_tax": cartContentsTax == null ? null : cartContentsTax,
        "cart_contents_taxes":
            cartContentsTaxes == null ? null : cartContentsTaxes.toJson(),
        "fee_total": feeTotal == null ? null : feeTotal,
        "fee_tax": feeTax == null ? null : feeTax,
        "fee_taxes": feeTaxes == null
            ? null
            : List<dynamic>.from(feeTaxes.map((x) => x)),
        "total": total == null ? null : total,
        "total_tax": totalTax == null ? null : totalTax,
      };
}

class CartContentsTaxes {
  CartContentsTaxes({
    this.the5,
  });

  double the5;

  factory CartContentsTaxes.fromJson(Map<String, dynamic> json) =>
      CartContentsTaxes(
        the5: json["5"] == null ? null : json["5"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "5": the5 == null ? null : the5,
      };
}

class ShippingTaxes {
  ShippingTaxes({
    this.the2,
  });

  int the2;

  factory ShippingTaxes.fromJson(Map<String, dynamic> json) => ShippingTaxes(
        the2: json["2"] == null ? null : json["2"],
      );

  Map<String, dynamic> toJson() => {
        "2": the2 == null ? null : the2,
      };
}
