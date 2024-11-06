import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_street_tab/src/modules/views/controllers/draggable_sheet_controller.dart';
import 'package:my_street_tab/src/modules/views/controllers/order_status.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/constants/icon_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class TrackerStatus extends StatelessWidget {
  const TrackerStatus({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DraggableSheetController>();

    return Obx(
      () => Column(
        children: controller.orderStatuses
            .asMap()
            .entries
            .map(
              (entry) => Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      _buildIcon(entry.value),
                      if (entry.key < controller.orderStatuses.length - 1)
                        Container(
                          height: 30,
                          width: 2,
                          color: entry.value.isCompleted
                              ? red.withOpacity(0.8)
                              : darkText.withOpacity(0.4),
                        ),
                    ],
                  ),
                  const SizedBox(width: smallMedium),
                  Text(
                    entry.value.label,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.sen(
                      color: entry.value.isCompleted
                          ? red.withOpacity(0.8)
                          : darkText.withOpacity(0.45),
                    ),
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }

  // status icon container
  Widget _buildIcon(OrderStatus status) {
    if (status.isCompleted) {
      return CircleAvatar(
        radius: 12,
        backgroundColor: red.withOpacity(0.7),
        child: SvgPicture.asset(
          IconStrings.completed,
          colorFilter: const ColorFilter.mode(
            white,
            BlendMode.srcIn,
          ),
          width: 14,
        ),
      );
    } else if (status.isCurrent) {
      return CircleAvatar(
        radius: 12,
        backgroundColor: red.withOpacity(0.7),
        child: SvgPicture.asset(
          IconStrings.loading,
          colorFilter: const ColorFilter.mode(
            white,
            BlendMode.srcIn,
          ),
          width: 14,
        ),
      );
    } else {
      return CircleAvatar(
        radius: 12,
        backgroundColor: darkText.withOpacity(0.4),
        child: SvgPicture.asset(
          IconStrings.completed,
          colorFilter: const ColorFilter.mode(
            white,
            BlendMode.srcIn,
          ),
          width: 14,
        ),
      );
    }
  }
}
