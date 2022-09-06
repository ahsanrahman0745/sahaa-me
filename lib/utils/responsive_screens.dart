import 'package:flutter/widgets.dart';

class WidgetWrapper extends StatelessWidget {
  const WidgetWrapper({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: child,
    );
  }
}
