abstract class TextUtilities {
  static String toCapitalized(String value) {
    if (value.isNotEmpty) {
      String firstLetterUppercase = value[0].toUpperCase();
      String substringLetters = value.substring(1).toLowerCase();
      return "$firstLetterUppercase$substringLetters";
    }
    return value;
  }

  static String toTitleCase(String string) {
    string.replaceAll(RegExp(" +"), " ");
    List<String> strings = string.split(" ");
    return strings.map((string) => toCapitalized(string)).join();
  }
}