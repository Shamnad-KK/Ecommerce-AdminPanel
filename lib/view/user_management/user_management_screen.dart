import 'package:ecommerce_adminpanel/common/drawer_widget.dart';
import 'package:flutter/material.dart';

class UserManagementScreen extends StatelessWidget {
  const UserManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      drawer: const DrawerWidget(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Table(
                border: TableBorder.all(),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        child: SizedBox(
                            height: size.height * 0.08,
                            child: const Center(child: Text("Id"))),
                      ),
                      const TableCell(
                        child: Center(child: Text("Username")),
                      ),
                      const TableCell(
                        child: Center(child: Text("Email Address")),
                      ),
                      const TableCell(
                        child: Center(child: Text("Phone")),
                      ),
                      const TableCell(
                        child: Center(child: Text("Status")),
                      ),
                    ],
                  ),
                ],
              ),
              Table(
                border: TableBorder.all(),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: List.generate(
                  3,
                  (index) => TableRow(
                    children: [
                      TableCell(
                        child: SizedBox(
                            height: size.height * 0.08,
                            child: Center(child: Text("${index + 1}"))),
                      ),
                      TableCell(
                        child: Center(child: Text("Username$index")),
                      ),
                      TableCell(
                        child: Center(child: Text("Email Address$index")),
                      ),
                      TableCell(
                        child: Center(child: Text("Phone$index")),
                      ),
                      TableCell(
                        child: Center(child: Text("Status$index")),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
