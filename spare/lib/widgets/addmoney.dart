import 'package:flutter/material.dart';

class AddWithdrawMoney extends StatelessWidget {
  final String boxName;
  // ignore: prefer_typing_uninitialized_variables
  final pIcon;

  const AddWithdrawMoney({
    super.key,
    required this.boxName,
    this.pIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 10, 0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.06,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
