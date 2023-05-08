import 'package:flutter/material.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/models/Service.dart';

import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            color: Color(0xFFFF0000),
            title: "Service Offerings",
            subTitle: "My Strong Arenas",
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            children: List.generate(
                services.length,
                (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ServiceCard(index: index),
                    )),
          )
        ],
      ),
    );
  }
}
