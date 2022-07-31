class SuggestedItem {
  final int id;
  final String name;
  final String description;
  final double price;
  final String imagePath;

  SuggestedItem(
      {this.id, this.name, this.description, this.price, this.imagePath});
}

var demoItems = [
  SuggestedItem(
      id: 1,
      name: "MSI RTX 3090 Ti SUPRIX ",
      description: "24GB",
      price: 8999 ,
      imagePath: "assets/images/suggestedItem_images/msi_3090ti_suprim.png"),
  SuggestedItem(
      id: 2,
      name: " 【SPECIAL OFFER】- MSI - G274QRFW",
      description: "27\'",
      price: 4299,
      imagePath: "assets/images/suggestedItem_images/msi_mon_G274QRFW.png"),
  SuggestedItem(
      id: 3,
      name: "Logitech G Pro X SuperLight ",
      description: "Wireless Gaming Mouse",
      price: 999,
      imagePath: "assets/images/suggestedItem_images/logitech_superlight.png"),
  SuggestedItem(
      id: 4,
      name: "ROG Strix Wireless ",
      description: "Stereo Virtual 7.1",
      price: 1299,
      imagePath: "assets/images/suggestedItem_images/rog_strix_wireless.png"),
  SuggestedItem(
      id: 5,
      name: "ROG Strix Scope NX ",
      description: "TKL Moonlight White",
      price: 1099,
      imagePath: "assets/images/suggestedItem_images/rog_tkl_moonlight.png"),
  SuggestedItem(
      id: 6,
      name: "Window 11 Pro",
      description: "Software",
      price: 899,
      imagePath: "assets/images/suggestedItem_images/window_11pro.jpg"),
];

var exclusiveOffers = [demoItems[0], demoItems[1]];

var bestSelling = [demoItems[2], demoItems[3]];

var others = [demoItems[4], demoItems[5]];

var beverages = [
  SuggestedItem(
      id: 7,
      name: "Dite Coke",
      description: "355ml, Price",
      price: 1.99,
      imagePath: "assets/images/beverages_images/diet_coke.png"),
  SuggestedItem(
      id: 8,
      name: "Sprite Can",
      description: "325ml, Price",
      price: 1.50,
      imagePath: "assets/images/beverages_images/sprite.png"),
  SuggestedItem(
      id: 8,
      name: "Apple Juice",
      description: "2L, Price",
      price: 15.99,
      imagePath: "assets/images/beverages_images/apple_and_grape_juice.png"),
  SuggestedItem(
      id: 9,
      name: "Orange Juice",
      description: "2L, Price",
      price: 1.50,
      imagePath: "assets/images/beverages_images/orange_juice.png"),
  SuggestedItem(
      id: 10,
      name: "Coca Cola Can",
      description: "325ml, Price",
      price: 4.99,
      imagePath: "assets/images/beverages_images/coca_cola.png"),
  SuggestedItem(
      id: 11,
      name: "Pepsi Can",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/beverages_images/pepsi.png"),
];
