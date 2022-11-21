class IntroBanner {
  String? title;
  String? subTitle;
  String? img;

  IntroBanner(this.title, this.subTitle, this.img);
}

List<IntroBanner> introList = [
  IntroBanner(
      'We Are the Best Business directory portal Platform',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do .incididunt ut labore et dolore magna aliqua'
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit,',
      'assets/images/intro_one.png'),
  IntroBanner(
      'The Place where you can find business, company and ...',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do .incididunt ut labore et dolore magna aliqua',
      'assets/images/intro_two.png'),
  IntroBanner(
      'Let’s start your Career with us now!',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do .incididunt ut labore et dolore magna aliqua',
      'assets/images/intro_three.png'),
];
