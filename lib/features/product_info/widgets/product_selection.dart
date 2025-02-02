import 'package:commerce_clot/core/constants/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import 'bottom_sheet.dart';

class ProductSelection extends StatefulWidget {
  final String label;
  final String initialValue;
  final List<String> options;

  ProductSelection({
    super.key,
    required this.label,
    required this.initialValue,
    required this.options,
    required Null Function(dynamic value) onSelected,
  });

  @override
  State<ProductSelection> createState() => _ProductSelectionState();
}

class _ProductSelectionState extends State<ProductSelection> {
  late String selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showBottomSheetWidget(
          context: context,
          title: widget.label,
          options: widget.options,
          selectedValue: selectedValue,
          onOptionSelected: (value) {
            setState(() {
              selectedValue = value;
            });
          },
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        decoration: BoxDecoration(
          color: AppColors.greyColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.label,
              style: TextStyle(color: AppColors.textColor, fontSize: 16),
            ),
            Row(
              children: [
                Text(
                  widget.label == "Color" ? "" : selectedValue,
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (widget.label == "Color")
                  CircleAvatar(
                    backgroundColor: _getColorFromName(selectedValue),
                    radius: 10,
                  ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  IconsaxPlusBroken.arrow_down_2,
                  color: AppColors.textColor,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Color _getColorFromName(String colorName) {
    switch (colorName) {
      case "Green":
        return Colors.green;
      case "Blue":
        return Colors.blue;
      case "Black":
        return Colors.black;
      default:
        return Colors.grey;
    }
  }
}
