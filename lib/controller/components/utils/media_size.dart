late double mediaHeight;
late double mediaWidth;

// Ideal for me
// const double designHeight = 690;
// const double designWidth = 350;

const double designHeight = 812;
const double designWidth = 375;

double fixedRatio(double h0w) {
  double functionWidth =
      ((mediaWidth < mediaHeight ? mediaWidth : mediaHeight) *
          (h0w / designWidth));
  return functionWidth;
}
