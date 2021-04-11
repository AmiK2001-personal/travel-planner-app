import 'dart:ffi';

class Range {
  final double min;
  final double max;

  Range(this.min, this.max);
}

extension DoubleExt on double {
  double mapRange(Range inputRange, Range outputRange) {
    return (this - inputRange.min) *
            (outputRange.max - outputRange.min) /
            (inputRange.max - inputRange.min) +
        outputRange.min;
  }
}
