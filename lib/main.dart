import 'package:flutter/material.dart';
import 'package:t_store/utils/themes/AppThemes.dart';

void main() {
  runApp(const App());
}
class App extends StatelessWidget
{
  const App({super.key});
  @override
  Widget build(BuildContext context) {
   return  MaterialApp(
     themeMode:ThemeMode.system,
     theme: AppThemes.lightTheme,
     darkTheme: AppThemes.darkTheme,
   );
  }

}