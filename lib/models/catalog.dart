class catalogItem
{
static final items = [Item(
  "iphone 12 pro max",
 1, 
"#33505a",
 "high performance",
 999,
"https://cdn.dxomark.com/wp-content/uploads/medias/post-61183/iphone-12-pro-blue-hero.jpg"
)
];


}






class Item{
  final String name;
  final int id;
  final String colour;
  final String desp;
  final num price;
  final String image;

  Item(this.name, this.id, this.colour, this.desp, this.price, this.image);
}


