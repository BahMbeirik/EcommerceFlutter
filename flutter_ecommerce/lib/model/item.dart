class Item {
  String imgPath;
  double price;
  String location;
  String name;

  Item({
    required this.imgPath,
    required this.price,
    required this.name,
    this.location = "main branch",
  });
}

final List<Item> items = [
  Item(name: "Prodect1",imgPath: 'assets/images/1.png',price: 100.0,location: 'Montre Shop'),
  Item(name: "Prodect2",imgPath: 'assets/images/2.png', price: 200.0, location: 'Bahah Shop'),
  Item(name: "Prodect3", imgPath: 'assets/images/3.png', price: 12.99),
  Item(name: "Prodect4", imgPath: 'assets/images/4.png', price: 140.0),
  Item(name: "Prodect5", imgPath: 'assets/images/5.png', price: 100.0),
  Item(name: "Prodect6", imgPath: 'assets/images/6.png', price: 167.0),
  Item(name: "Prodect7", imgPath: 'assets/images/7.png', price: 100.0),
  Item(name: "Prodect8", imgPath: 'assets/images/8.png', price: 800.0),
];
