class CoCartTotal {
  String subtotal;
  double subtotalTax;
  String shippingTotal;
  int shippingTax;
  int discountTotal;
  int discountTax;
  String cartContentsTotal;
  double cartContentsTax;
  String feeTotal;
  int feeTax;
  String total;
  double totalTax;

  CoCartTotal(
      {this.subtotal,
      this.subtotalTax,
      this.shippingTotal,
      this.shippingTax,
      this.discountTotal,
      this.discountTax,
      this.cartContentsTotal,
      this.cartContentsTax,
      this.feeTotal,
      this.feeTax,
      this.total,
      this.totalTax});

  CoCartTotal.fromJson(Map<String, dynamic> json) {
    subtotal = json['subtotal'];
    subtotalTax = json['subtotal_tax'];
    shippingTotal = json['shipping_total'];
    shippingTax = json['shipping_tax'];
    discountTotal = json['discount_total'];
    discountTax = json['discount_tax'];
    cartContentsTotal = json['cart_contents_total'];
    cartContentsTax = json['cart_contents_tax'];
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
    data['discount_total'] = this.discountTotal;
    data['discount_tax'] = this.discountTax;
    data['cart_contents_total'] = this.cartContentsTotal;
    data['cart_contents_tax'] = this.cartContentsTax;
    data['fee_total'] = this.feeTotal;
    data['fee_tax'] = this.feeTax;
    data['total'] = this.total;
    data['total_tax'] = this.totalTax;
    return data;
  }
}
