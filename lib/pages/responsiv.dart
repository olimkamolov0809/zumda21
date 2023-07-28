import 'package:flutter/material.dart';

class ResponsivLayout extends StatelessWidget {
  final Widget mobilScaffold;
  final Widget tableScaffold;
  final Widget desctopScaffold;

  ResponsivLayout({
    required this.mobilScaffold,
    required this.tableScaffold,
    required this.desctopScaffold
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        if(constraints.maxWidth<500){
          return mobilScaffold;
        }else if(constraints.maxWidth<1100){
          return tableScaffold;
        }else{
          return desctopScaffold;
        }
      },
    );
  }
}
