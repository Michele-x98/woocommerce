class CoCartTotal {
  String subtotal;
  String subtotalTax;
  String shippingTotal;
  String shippingTax;
  ShippingTaxes shippingTaxes;
  String discountTotal;
  String discountTax;
  String cartContentsTotal;
  String cartContentsTax;
  CartContentsTaxes cartContentsTaxes;
  String feeTotal;
  String feeTax;
  String total;
  String totalTax;

  CoCartTotal(
      {this.subtotal,
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
      this.total,
      this.totalTax});

  CoCartTotal.fromJson(Map<String, dynamic> json) {
    subtotal = json['subtotal'];
    subtotalTax = json['subtotal_tax'];
    shippingTotal = json['shipping_total'];
    shippingTax = json['shipping_tax'];
    shippingTaxes = json['shipping_taxes'] != null
        ? new ShippingTaxes.fromJson(json['shipping_taxes'])
        : null;
    discountTotal = json['discount_total'];
    discountTax = json['discount_tax'];
    cartContentsTotal = json['cart_contents_total'];
    cartContentsTax = json['cart_contents_tax'];
    cartContentsTaxes = json['cart_contents_taxes'] != null
        ? new CartContentsTaxes.fromJson(json['cart_contents_taxes'])
        : null;
    feeTotal = json['fee_total'];
    feeTax = json['fee_tax'];
    total = json['total'];
    totalTax = json['total_tax'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subtotal'] = this.subtotal;
    data['subtotal_tax'] = this.subtotalTax;
    data['shipping_total'] = this.shippingTotal;
    data['shipping_tax'] = this.shippingTax;
    if (this.shippingTaxes != null) {
      data['shipping_taxes'] = this.shippingTaxes.toJson();
    }
    data['discount_total'] = this.discountTotal;
    data['discount_tax'] = this.discountTax;
    data['cart_contents_total'] = this.cartContentsTotal;
    data['cart_contents_tax'] = this.cartContentsTax;
    if (this.cartContentsTaxes != null) {
      data['cart_contents_taxes'] = this.cartContentsTaxes.toJson();
    }
    data['fee_total'] = this.feeTotal;
    data['fee_tax'] = this.feeTax;
    data['total'] = this.total;
    data['total_tax'] = this.totalTax;
    return data;
  }
}

class ShippingTaxes {
  double d2;

  ShippingTaxes({this.d2});

  ShippingTaxes.fromJson(Map<String, dynamic> json) {
    d2 = json['2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['2'] = this.d2;
    return data;
  }
}

class CartContentsTaxes {
  double d5;

  CartContentsTaxes({this.d5});

  CartContentsTaxes.fromJson(Map<String, dynamic> json) {
    d5 = json['5'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['5'] = this.d5;
    return data;
  }
}
