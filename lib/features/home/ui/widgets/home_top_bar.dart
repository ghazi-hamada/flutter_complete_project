import 'package:flutter/widgets.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text("Hi, Omar!"), Text("how Are you Today?")],
        )
      ],
    );
  }
}
