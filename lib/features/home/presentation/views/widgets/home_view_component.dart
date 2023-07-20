import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_task/features/home/presentation/views/widgets/layer4.dart';
import 'layer1.dart';
import 'layer2.dart';
import 'layer3.dart';



class HomeViewComponent extends StatelessWidget {
  const HomeViewComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children:  [
          const Layer1(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const Layer2(),
          const Layer3(),
          const Layer4(),
        ],
      ),
    );
  }
}
