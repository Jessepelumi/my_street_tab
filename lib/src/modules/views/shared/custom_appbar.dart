import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
    this.isPageHeader = false,
    this.hasAction = false,
    this.iconData = Icons.more_horiz_rounded,
    this.color = darkText,
    this.action,
  });

  final String title;
  final List<Widget>? actions;
  final bool isPageHeader, hasAction;
  final IconData? iconData;
  final Color? color;
  final VoidCallback? action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: large),
      child: AppBar(
        backgroundColor: scaffoldWhite,
        automaticallyImplyLeading: false,
        leading: isPageHeader == false
            ? Padding(
                padding: const EdgeInsets.all(extraSmall * 1.5),
                child: GestureDetector(
                  onTap: () => Get.back(),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: darkText.withOpacity(0.2),
                      ),
                      borderRadius: BorderRadius.circular(extraLarge),
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 20,
                      color: darkText,
                    ),
                  ),
                ),
              )
            : null,
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: darkText,
                fontWeight: FontWeight.w600,
              ),
        ),
        centerTitle: true,
        actions: [
          hasAction == true
              ? GestureDetector(
                  onTap: action,
                  child: Container(
                    padding: const EdgeInsets.all(small),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: darkText.withOpacity(0.2),
                      ),
                      borderRadius: BorderRadius.circular(extraLarge),
                    ),
                    child: Icon(
                      iconData,
                      color: color,
                    ),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
        appbarHeight(),
      );
}
