import 'package:flutter/cupertino.dart';

class LearnSync extends StatefulWidget {
  const LearnSync({Key? key}) : super(key: key);

  @override
  State<LearnSync> createState() => _LearnSyncState();
}

class _LearnSyncState extends State<LearnSync> {
  int a = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('$a'),
    );
  }
}
