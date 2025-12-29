class Recipe {
  String imgLabel;
  String imageUrl;
  Recipe(this.imageUrl, this.imgLabel);

  static List<Recipe> samples = 
      [
        Recipe('assets/images/Airsm.avif','AIRsm Shir Cotton Crew Neck T-Shirt'),
        Recipe('assets/images/BlueHood.avif','Hooded Sweatshirt Down Jacket'),
        Recipe('assets/images/Brownjacket.avif','Jacket Brown Flichet'),
        Recipe('assets/images/GarySweater.avif','Gray Sweater Cashmere Blend'),
        Recipe('assets/images/longshirt.avif','HEATTECH Exta Warm Cotton'),      ];
}