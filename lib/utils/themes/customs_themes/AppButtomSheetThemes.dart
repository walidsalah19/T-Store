

import 'package:flutter/material.dart';

class AppBottomSheetThemes
{
  AppBottomSheetThemes._();

  static final bottomSheetLight=BottomSheetThemeData(
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    showDragHandle: true,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0))
  );
  static final bottomSheetDark=BottomSheetThemeData(
      backgroundColor: Colors.black,
      modalBackgroundColor: Colors.black,
      showDragHandle: true,
      constraints: const BoxConstraints(minWidth: double.infinity),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0))
  );
}