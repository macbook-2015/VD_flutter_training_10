library mathematics;

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

class Cube {
  static int getCubeOf(int value) => value * value * value;

  static int getSquareOf(int value) => value * value;

  static int getHighestNumber(List<String> values) {
    if (values.length == 0 || values == null) return null;
    List<int> numList = List(values.length);
    for (int i = 0; i < values.length; i++) {
      numList[i] = int.parse(values[i]);
    }
    int highest = numList[0];
    numList.forEach((v) {
      if (v > highest) highest = v;
    });
    return highest;
  }

  static int getLowestNumber(List<String> values) {
    if (values.length == 0 || values == null) return null;
    List<int> numList = List(values.length);
    for (int i = 0; i < values.length; i++) {
      numList[i] = int.parse(values[i]);
    }
    int lowest = numList[0];
    numList.forEach((v) {
      if (v < lowest) lowest = v;
    });
    return lowest;
  }
}
