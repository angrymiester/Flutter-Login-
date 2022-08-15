class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "iphone 12 pro",
      Desc: "3rd genration apple ",
      price: 999,
      colour: "#33505a",
      image:
          "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MHLM3?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1623348211000",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String Desc;
  final num price;
  final String colour;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.Desc,
      required this.price,
      required this.colour,
      required this.image});
}
