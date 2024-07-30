class Intro {
  String title;
  String description;
  String image;
  Intro({required this.title, required this.description, required this.image});
}

List<Intro> introData = [
  Intro(
      title: "Choose Product",
      description:
          "A Product is the item offered for sale. \n A Product can be service.",
      image: "assets/images/choose.png"),
  Intro(
      title: "Make Payment",
      description:
          "Payment is the item offered for sale. \nServices in exchange product",
      image: "assets/images/make-payment.png"),
  Intro(
      title: "Choose Product",
      description: "Business or commerce an order is stated",
      image: "assets/images/get-your-order.png"),
];
