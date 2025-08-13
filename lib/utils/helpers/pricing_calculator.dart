double calculateTotalPrice(double productPrice, String location) {
  double taxRate = getTaxRateForLoaction(location);
  double taxAmount = productPrice * taxRate;

  double shippingCost = getShippingCost(location);
  double totalPrice = productPrice + taxAmount + shippingCost;
  return totalPrice;
}

double calculateShippingCost(double productPrice, String location) {
  double shippingCost = getShippingCost(location);
  return shippingCost;
}

double calculateTax(double productPrice, String location) {
  double taxRate = getTaxRateForLoaction(location);
  double taxAmount = productPrice * taxRate;
  return taxAmount;
}

double getTaxRateForLoaction(String location) {
  return 0.10;
}

double getShippingCost(String location) {
  return 5.0;
}
