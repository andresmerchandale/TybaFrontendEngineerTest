class AppString {
  static AppString instance = AppString._init();

  AppString._init();

  //text string
  final String textAppName = "Tyba";
  final String textWelcome = "Welcome to Tyba";
  final String textHomeSub = "The best university information app";
  final String textGetStarted = "Go!";

  //ruotes assets
  final String pathHomeImage = "assets/home.png";

  //url services
  static var universitiesBaseUrl =
      'https://tyba-assets.s3.amazonaws.com/FE-Engineer-test/universities.json';
  static var photoBaseUrl = "https://image.tmdb.org/t/p/w500";
}
