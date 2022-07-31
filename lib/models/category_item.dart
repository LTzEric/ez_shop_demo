class CategoryItem {
  final int id;
  final String name;
  final String imagePath;

  CategoryItem({this.id, this.name, this.imagePath});
}

var categoryItemsDemo = [
  CategoryItem(
    name: "CPU",
    imagePath: "assets/images/categories_images/fruit.png",
  ),
  CategoryItem(
    name: "Mouse",
    imagePath: "assets/images/categories_images/mouse.png",
  ),
  CategoryItem(
    name: "Display Card",
    imagePath: "assets/images/categories_images/meat.png",
  ),
  CategoryItem(
    name: "Monitor",
    imagePath: "assets/images/categories_images/monitor.png",
  ),
  CategoryItem(
    name: "Earphone",
    imagePath: "assets/images/categories_images/dairy.png",
  ),
  CategoryItem(
    name: "Software",
    imagePath: "assets/images/categories_images/beverages.png",
  ),
];
