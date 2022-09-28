import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:trip_app/model/constants.dart';
import 'package:trip_app/model/trip_model.dart';

class CustomTripWidget extends StatelessWidget {
  const CustomTripWidget({
    Key? key,
    required this.size,
    required this.index,
    required this.tripId,
    required this.tripInformation,
  }) : super(key: key);
  final Size size;
  final int index;
  final String tripId;

  final TripInformation tripInformation;

  Widget tripDataWidget({size, icon, text, isButton = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          child: Row(
            children: [
              Icon(icon),
              SizedBox(
                width: size.width * 0.02,
              ),
              Text(text),
            ],
          ),
        ),
        isButton
            ? IconButton(onPressed: () {}, icon: const Icon(FeatherIcons.check))
            : const SizedBox()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: ObjectKey(index),

      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        // dismissible: DismissiblePane(onDismissed: (){}),
        children: [
          // A SlidableAction can have an icon and/or a label.
          SlidableAction(
            onPressed: ((context) {}),
            backgroundColor: Colors.redAccent, //
            foregroundColor: Colors.white,
            icon: FeatherIcons.xCircle,
            label: 'Cancel',
          ),
          SlidableAction(
            onPressed: ((context) {}),
            backgroundColor: Color(0xFF21B7CA),
            foregroundColor: Colors.white,
            icon: Icons.check,
            label: 'Confirm',
          ),
        ],
      ),

      // The end action pane is the one at the right or the bottom side.
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: ((context) {}),
            backgroundColor: const Color(0xFF2e3253).withOpacity(0.5),
            foregroundColor: Colors.white,
            icon: Icons.check_circle_outline,
            label: 'Completed',
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.all(8),
        //margin: const EdgeInsets.only(bottom: 10),
        //height: size.height * 0.15,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(08),
            border: Border.all(color: Colors.black12),
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey.withOpacity(0.7),
                spreadRadius: 0,
                blurRadius: 2,
                offset: const Offset(1, 3),
              ),
            ]),
        child: Column(
          children: [
            tripDataWidget(
              size: size,
              icon: FeatherIcons.key,
              text: tripId,
            ),
            tripDataWidget(
                size: size,
                icon: FeatherIcons.user,
                text: tripInformation.fullName,
                isButton: true),
            tripDataWidget(
                size: size,
                icon: FeatherIcons.mapPin,
                text: tripInformation.address),
          ],
        ),
      ),
    );
  }
}




