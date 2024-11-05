import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class ChatModel extends StatelessWidget {
  const ChatModel({
    super.key,
    required this.isSender,
    required this.message,
    required this.time,
    required this.showProfilePicture,
  });

  final bool isSender, showProfilePicture;
  final String message, time;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: small),
      child: isSender == true
          ? Align(
              alignment: Alignment.topRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        time,
                        style: GoogleFonts.sen(
                          color: darkText.withOpacity(0.7),
                          fontSize:
                              Theme.of(context).textTheme.labelMedium?.fontSize,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(medium),
                        decoration: BoxDecoration(
                          color: primary,
                          borderRadius: BorderRadius.circular(small),
                        ),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.55,
                          ),
                          child: Text(
                            message,
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            style: GoogleFonts.sen(
                              color: white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: small),

                  // profile picture container
                  showProfilePicture == true
                      ? Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: primary.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(extraLarge),
                          ),
                        )
                      : const SizedBox(width: 50),
                ],
              ),
            )
          : Align(
              alignment: Alignment.topLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // profile picture container
                  showProfilePicture == true
                      ? Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: primary.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(extraLarge),
                          ),
                        )
                      : const SizedBox(width: 50),
                  const SizedBox(width: small),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        time,
                        style: GoogleFonts.sen(
                          color: darkText.withOpacity(0.7),
                          fontSize:
                              Theme.of(context).textTheme.labelMedium?.fontSize,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(medium),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(236, 236, 240, 244),
                          borderRadius: BorderRadius.circular(small),
                        ),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.55,
                          ),
                          child: Text(
                            message,
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            style: GoogleFonts.sen(
                              color: darkText,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
