import 'package:flutter/material.dart';

class PriceSlider extends StatefulWidget {
  PriceSlider();

  @override
  _PriceSliderState createState() => _PriceSliderState();
}

class _PriceSliderState extends State<PriceSlider> {
  RangeValues values = RangeValues(10, 90);

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
        values: values,
        min: 1,
        max: 100,
        divisions: 20,
        activeColor: Colors.red,
        inactiveColor: Colors.red.shade100,
        labels: RangeLabels(
          values.start.round().toString(),
          values.end.round().toString(),
        ),
        onChanged: (values) => setState(() => this.values = values));
  }
}
