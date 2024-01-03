class CalculatePricing {
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxForLocation(location);
    double taxAmount = taxRate * productPrice;
    double shippingCost = getShippingCost(location);
    double totalPrice = productPrice * taxAmount * shippingCost;

    return totalPrice;
  }

  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static String calculateTac(double productPrice, String location) {
    double taxRate = getTaxForLocation(location);
    double taxAmount = taxRate * productPrice;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxForLocation(String location) {
    return .10;
  }

  static double getShippingCost(String location) {
    return 5.00;
  }
}
