import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/detailed_income_chart.dart';
import 'package:responsive_dash_board/views/widgets/income_chart.dart';
import 'package:responsive_dash_board/views/widgets/income_details.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.sizeOf(context).width;
    print(widthScreen.toString());
    return widthScreen > SizeConfig.desktop && widthScreen <= 1535
        ? Padding(padding: EdgeInsets.all(32), child: DeatiledIncomeChart())
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              //      SizedBox(height: 36),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          );
  }
}
