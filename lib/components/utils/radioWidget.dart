//commented out since tis code has errors

/*import 'package:flutter/material.dart';

import 'checkable.dart';

class RadioWidget extends StatelessWidget {
  final Widget child;

  static Map<int, List<int>> groups = {};

  RadioWidget(this.child, int groupIdentifier) {
    groups[groupIdentifier] = [
      null,//the selected checkbox in the checkbox group
      0,//the number of checkboxs in the checkbox group
    ];

    final List singleIdentifier = [groupIdentifier, groups[groupIdentifier[1],//an int indivisual to each person in the checkbox group
    ]];
  };

  final bool checked = ();

  @override
  Widget build(BuildContext context) {
    return Checkable(
      child,
      checked,
      (selected) => selected ? key.radioSelected = highlightNumber : controller.radioSelected = null,
    );
  }
}

class RadioWidgetController {
  int radioSelected;
  int radios = 0;
}
*/
