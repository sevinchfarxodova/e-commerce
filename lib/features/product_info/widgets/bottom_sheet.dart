import 'package:commerce_clot/core/constants/color.dart';
import 'package:flutter/material.dart';

void showBottomSheetWidget({
  required BuildContext context,
  required String title,
  required List<String> options,
  required String selectedValue,
  required ValueChanged<String> onOptionSelected,
}) {
  showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      builder: (context) {
      return  Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textColor),
                  ),
                  IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.close,
                        color: AppColors.textColor,
                      )),
                ],
              ),
              SizedBox(
                height: 16,
              ),

              ...options.map((option) {
                final isSelected = option == selectedValue;
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 4),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColors.backgroundSplash_color
                        : AppColors.greyColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: ListTile(
                    onTap: () {
                      onOptionSelected(option);
                      Navigator.pop(context);
                    },
                    leading: title == "Color"
                        ? CircleAvatar(
                            backgroundColor: _getColorFromName(option),
                            radius: 10,
                          )
                        : null,
                    title: Text(
                      option,
                      style: TextStyle(
                          color:
                              isSelected ? AppColors.textColor : Colors.white70,
                          fontWeight:
                              isSelected ? FontWeight.bold : FontWeight.normal),
                    ),
                    trailing: isSelected
                        ? Icon(
                            Icons.check,
                            color: AppColors.textColor,
                          )
                        : null,
                  ),
                );
              }),
            ],
          ),
        );
      },
  );
}

Color _getColorFromName(String colorName){
  switch (colorName){
    case "Orange":
      return Colors.orange;
      case "Black":
      return Colors.black;
    case "Red":
      return Colors.red;
    case "Yellow":
      return Colors.yellow;
    case "Green":
      return Colors.green;
    case "Blue":
      return Colors.blue;
    case "Purple":
      return Colors.purple;
    default:
      return Colors.grey;
  }
}
