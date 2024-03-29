import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

const String baseUrl = 'https://uc-backend.unitedchauffeur.co.uk/api/v1';

Map<String, String> statusIcon = {
  "waiting": "assets/icons/wait.png",
  "approved": "assets/icons/approved.png",
  "denied": "assets/icons/rejected.png",
  "completed": "assets/icons/completed.png",
};

class Kcolor {
  static const Color primaryColor = Color(0xFFf5f5f5);
  static const Color secondaryColor = Color(0xFF30429A);
  static const Color redColor = Color(0xffFF5E5C);
  static const Color inputFieldBorderColor = Color(0xff3772ff);
}

class Kwidgets {
  static Container tripdataItem({dataType, data, size, width = 1}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(8),
      width: size.width * width,
      height: size.height * 0.06,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(08),
        border: Border.all(color: Colors.black12),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.withOpacity(0.8),
            //spreadRadius: 0,
            blurRadius: 1.5,
            offset: const Offset(1, 2),
          ),
        ],
      ),
      child: Row(
        //mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            dataType + ":  ",
            style: const TextStyle(
              fontFamily: 'urbanist',
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),

          ///============================================> stops handled
          dataType == 'Stops'
              ? SizedBox(
                  child: Row(
                    children: (data as List)
                        .map((stop) => Text(stop.location + ", "))
                        .toList(),
                  ),
                )
              : AutoSizeText(
                  data ?? "",
                  style: const TextStyle(
                    fontFamily: 'urbanist',
                    //fontWeight: FontWeight.w400,
                  ),
                  maxLines: 2,
                )
        ],
      ),
    );
  }

  ///===================================================================>
  static final rightEditIcon = Container(
    padding: const EdgeInsets.only(right: 20),
    margin: const EdgeInsets.only(bottom: 10),
    color: Colors.redAccent,
    alignment: Alignment.centerRight,
    child: const Icon(
      Icons.delete,
      color: Colors.white,
    ),
  );

  static final leftEditIcon = Container(
    padding: const EdgeInsets.only(left: 20),
    margin: const EdgeInsets.only(bottom: 10),
    color: const Color(0xFF2e3253).withOpacity(0.5),
    alignment: Alignment.centerLeft,
    child: const Icon(
      FeatherIcons.check,
      color: Colors.white,
    ),
  );
}

class KConstTextStyle {
  static const TextStyle SubHeader = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 25,
    //color: MYEColors.secondaryColor,
  );

  static TextStyle forgetScreenMsg = const TextStyle(
    color: Color(0xff8391A1),
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle akBodyText = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    //color: MYEColors.textColor,
  );

  static const TextStyle akHintText = TextStyle(
    fontSize: 16,
    //color: MYEColors.hintColor,
  );
  static const TextStyle testFormLettering = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18,
    color: Colors.black,
  );
  static const TextStyle levelFormLettering = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18,
    // color: MYEColors.secondaryColor,
  );

  static TextStyle birthFieldText = const TextStyle(
    fontFamily: "GT Walsheim Pro",
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Color(0xff777E91),
  );
}

const Icon backButton = Icon(
  Icons.arrow_back_ios,
  color: Colors.black,
  size: 20,
);
const Icon menuButton = Icon(
  Icons.menu_outlined,
  color: Colors.black,
  size: 20,
);
