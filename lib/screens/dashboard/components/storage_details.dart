import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StarageDetails extends StatelessWidget {
  const StarageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Загруженность сервера",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Размеченные",
            amountOfFiles: "14.3 Гб",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "Сгенерированные",
            amountOfFiles: "21.3 Гб",
            numOfFiles: 140,
          ),
        ],
      ),
    );
  }
}
