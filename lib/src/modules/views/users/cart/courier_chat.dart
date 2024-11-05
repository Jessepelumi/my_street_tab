import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_street_tab/src/modules/views/users/chat/chat_model.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/constants/icon_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class CourierChat extends StatelessWidget {
  const CourierChat({super.key});

  @override
  Widget build(BuildContext context) {
    // dummy chat data
    final messages = [
      {"isSender": true, "message": "Where are you?", "time": "10:00 am"},
      {
        "isSender": false,
        "message": "I've gotten your order. I'm on my way",
        "time": "10:03 am"
      },
      {
        "isSender": true,
        "message": "Please be fast, I'm in a hurry",
        "time": "10:04 am"
      },
      {"isSender": false, "message": "Alright. On my way!", "time": "10:07 am"},
      {"isSender": true, "message": "Hellooo!!!", "time": "10:24 am"},
      {
        "isSender": true,
        "message": "This seems to have taken too long",
        "time": "10:24 am"
      },
      {"isSender": true, "message": "Where are you rn?", "time": "10:25 am"},
      {"isSender": false, "message": "I'm here already.", "time": "10:27 am"},
      {
        "isSender": false,
        "message": "I'm waiting outside.",
        "time": "10:27 am"
      },
    ];

    return Scaffold(
      appBar: const CourierChatAppBar(title: "Robert Fox"),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(large),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final messageDate = messages[index];
                    final isLastInSequence = index == messages.length - 1 ||
                        messages[index]["isSender"] !=
                            messages[index + 1]["isSender"];
                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: isLastInSequence ? smallMedium : 0,
                      ),
                      child: ChatModel(
                        isSender: messageDate["isSender"] as bool,
                        message: messageDate["message"] as String,
                        time: messageDate["time"] as String,
                        showProfilePicture: isLastInSequence,
                      ),
                    );
                  },
                ),
              ),

              // text input
              SizedBox(
                width: double.infinity,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: smallMedium),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(small),
                  ),
                  child: Row(
                    children: [
                      // emoji button
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                          IconStrings.face,
                          colorFilter: ColorFilter.mode(
                            darkText.withOpacity(0.5),
                            BlendMode.srcIn,
                          ),
                        ),
                      ),

                      // text area
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            label: Text(
                              "Send message",
                              style: GoogleFonts.sen(
                                color: darkText.withOpacity(0.5),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(small),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(small),
                            ),
                          ),
                        ),
                      ),

                      // send button
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                          IconStrings.send,
                          colorFilter: const ColorFilter.mode(
                            primary,
                            BlendMode.srcIn,
                          ),
                        ),
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

class CourierChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CourierChatAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: large),
      child: AppBar(
        backgroundColor: scaffoldWhite,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.all(extraSmall * 1.5),
          child: GestureDetector(
            onTap: () => Get.back(),
            child: Container(
              padding: const EdgeInsets.all(smallMedium / 1.3),
              decoration: BoxDecoration(
                color: const Color.fromARGB(236, 236, 240, 244),
                borderRadius: BorderRadius.circular(extraLarge),
              ),
              child: SvgPicture.asset(
                IconStrings.cancel,
                colorFilter: const ColorFilter.mode(darkText, BlendMode.srcIn),
              ),
            ),
          ),
        ),
        title: Text(
          title,
          style: GoogleFonts.sen(
            color: darkText,
          ),
        ),
        centerTitle: false,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
        appbarHeight(),
      );
}
