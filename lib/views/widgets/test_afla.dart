import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class TestAfla extends StatelessWidget {
  const TestAfla({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Income',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  children: [
                    Text('Monthly'),
                    SizedBox(width: 8),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 30),

          Row(
            children: [
              SizedBox(
                width: 180,
                height: 180,
                child: PieChart(
                  PieChartData(
                    centerSpaceRadius: 50,
                    sectionsSpace: 0,
                    sections: [
                      PieChartSectionData(
                        value: 40,
                        color: const Color(0xff208CC8),
                        radius: 20,
                        showTitle: false,
                      ),
                      PieChartSectionData(
                        value: 25,
                        color: const Color(0xff4EB7F2),
                        radius: 20,
                        showTitle: false,
                      ),
                      PieChartSectionData(
                        value: 20,
                        color: const Color(0xff064061),
                        radius: 20,
                        showTitle: false,
                      ),
                      PieChartSectionData(
                        value: 22,
                        color: const Color(0xffE2DECD),
                        radius: 20,
                        showTitle: false,
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(width: 30),

              const Expanded(
                child: Column(
                  children: [
                    IncomeItem(
                      color: Color(0xff208CC8),
                      title: 'Design service',
                      percent: '40%',
                    ),
                    SizedBox(height: 16),
                    IncomeItem(
                      color: Color(0xff4EB7F2),
                      title: 'Design product',
                      percent: '25%',
                    ),
                    SizedBox(height: 16),
                    IncomeItem(
                      color: Color(0xff064061),
                      title: 'Product royalty',
                      percent: '20%',
                    ),
                    SizedBox(height: 16),
                    IncomeItem(
                      color: Color(0xffE2DECD),
                      title: 'Other',
                      percent: '22%',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class IncomeItem extends StatelessWidget {
  final Color color;
  final String title;
  final String percent;

  const IncomeItem({
    super.key,
    required this.color,
    required this.title,
    required this.percent,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(radius: 6, backgroundColor: color),
        const SizedBox(width: 12),
        Expanded(child: Text(title, style: const TextStyle(fontSize: 16))),
        Text(percent, style: const TextStyle(fontWeight: FontWeight.w600)),
      ],
    );
  }
}
