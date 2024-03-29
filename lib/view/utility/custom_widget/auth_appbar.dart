import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class AuthAppBar extends StatelessWidget {
  const AuthAppBar({
    Key? key,
    required this.size,
    required this.title,
    this.isBackButton = false,
  }) : super(key: key);

  final Size size;
  final String title;
  final bool isBackButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: size.width * 0.15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isBackButton
              ? Container(
                  margin: EdgeInsets.only(
                    bottom: size.height * 26 / 580,
                  ),
                  height: 41,
                  width: 41,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color(0xffe8ecf4),
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(FeatherIcons.chevronLeft),
                  ),
                )
              : const SizedBox(),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 30,
            ),
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
