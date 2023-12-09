class StickyItem {
  final String title;
  final String image;
  final String pathname;
  final bool isSelected;
  StickyItem(
      {required this.isSelected,
      required this.image,
      required this.title,
      required this.pathname});
}

List<StickyItem> stickyList = [
  StickyItem(
      image: "assets/dummy/thumb.png",
      title: "All",
      pathname: "/all",
      isSelected: true),
  StickyItem(
      image: "assets/dummy/delivery.png",
      title: "Wholesale",
      pathname: "/wholesale",
      isSelected: false),
  StickyItem(
      image: "assets/dummy/offer.jpeg",
      title: "Any 3 from tk 633",
      pathname: "/from-to",
      isSelected: false),
  StickyItem(
      image: "assets/dummy/cart.png",
      title: "Everyday Low Price",
      pathname: "/everyday",
      isSelected: false),
  StickyItem(
      image: "assets/dummy/free.png",
      title: "Free Delivery",
      pathname: "/free-delivery",
      isSelected: false),
];
