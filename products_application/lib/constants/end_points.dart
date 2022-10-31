class endPoints {
  static const String baseURL = "https://magdsoft-internship.herokuapp.com/api";
  static const String helpData = "$baseURL/getHelp";
  static const String productData = "$baseURL/getProducts";
  static String getloginpath(String name, String phonenumber) {
    return "$baseURL/verifyPhone?phone=$phonenumber&name=$name";
  }
}
