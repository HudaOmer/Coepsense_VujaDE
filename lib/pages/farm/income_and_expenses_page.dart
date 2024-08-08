import '../../components/income_item.dart';
import 'package:flutter/material.dart';
import '../../components/time_range_item.dart';
import '../../components/transaction_item.dart';

String title = 'Income & Expenses      ';

class IncomeAndExpensesPage extends StatelessWidget {
  const IncomeAndExpensesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Center(
              child: Text(title, style: const TextStyle(color: Colors.black))),
          elevation: 0,
          backgroundColor: Colors.white,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios, color: Colors.black))),
      body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            const TimeRangeItem(
              isIncome: true,
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                IncomeItem(isIncome: true, amount: '\$200+'),
                IncomeItem(isIncome: false, amount: '\$50-')
              ],
            ),
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
              child: const Text(
                'Tracsactions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            const TransactionItem(
                isIncome: true,
                transaction: 'Sale of product',
                cost: '\$50+',
                date: 'Mon, 5 Aug'),
            const TransactionItem(
                isIncome: false,
                transaction: 'Buy fertilizer',
                cost: '\$50-',
                date: 'Mon, 5 Aug'),
            const TransactionItem(
                isIncome: true,
                transaction: 'Sale of product',
                cost: '\$50+',
                date: 'Mon, 5 Aug'),
            const TransactionItem(
                isIncome: true,
                transaction: 'Sale of product',
                cost: '\$50+',
                date: 'Mon, 5 Aug'),
            const TransactionItem(
                isIncome: true,
                transaction: 'Sale of product',
                cost: '\$50+',
                date: 'Mon, 5 Aug'),
          ])),
    );
  }
}
