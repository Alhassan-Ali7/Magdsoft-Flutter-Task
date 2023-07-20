import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_task/features/help/presentation/views/widgets/custom_expansion_tile.dart';

class HelpInformation extends StatefulWidget {
   const HelpInformation({
    super.key, required this.title, required this.description,
  });

  final String title;
  final String description;

  @override
  State<HelpInformation> createState() => _HelpInformationState();
}

class _HelpInformationState extends State<HelpInformation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        CustomExpansionTile(
          title: widget.title,
          description: widget.description,
        ),
      ],
    );
  }
}
