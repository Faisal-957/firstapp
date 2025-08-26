import 'package:first_app/core/constants/colors.dart';
import 'package:first_app/ui/root/root_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RootViewmodel(),
      child: Consumer<RootViewmodel>(
        builder: (context, model, child) => Scaffold(
          body: model.allScreen[model.currentIndex],
          bottomNavigationBar: Container(
            color: primeryColor,
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      model.selectedindex(0);
                    },
                    icon: Icon(Icons.home),
                  ),
                  IconButton(
                    onPressed: () {
                      model.selectedindex(1);
                    },
                    icon: Icon(Icons.notification_add),
                  ),
                  IconButton(
                    onPressed: () {
                      model.selectedindex(2);
                    },
                    icon: Icon(Icons.person),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
