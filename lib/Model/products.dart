class product {
  String imgLabel;
  String imageUrl;
  String description;
  double price;

  product(this.imageUrl, this.imgLabel, this.description, this.price);

  static List<product> samples = 
      [
        product('assets/images/Airsm.png','AIRsm Shir Cotton Crew Neck T-Shirt', 'Smooth AIRsm fabric with the look of cotton. Quick-drying and cool to the touch.', 499.00),
        product('assets/images/BlueHood.png','Hooded Sweatshirt Down Jacket', 'A comfortable hooded sweatshirt combined with the warmth of a down jacket.', 1299.00),
        product('assets/images/Brownjacket.png','Jacket Brown Flichet', 'Soft, warm fleece jacket in a versatile brown. Ideal for casual wear or outdoor activities.', 1499.00),
        product('assets/images/GarySweater.png','Gray Sweater Cashmere Blend', 'Premium cashmere blend for superior softness and warmth. A timeless wardrobe essential.', 999.00),
        product('assets/images/longshirt.png','HEATTECH Exta Warm Cotton', 'HEATTECH Extra Warm fabric with a cotton lining. Offers exceptional warmth and comfort.', 799.00),      
      ];
}