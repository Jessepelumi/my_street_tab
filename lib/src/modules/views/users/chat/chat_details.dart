import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_street_tab/src/modules/views/users/chat/chat_model.dart';
import 'package:my_street_tab/src/utils/constants/color_strings.dart';
import 'package:my_street_tab/src/utils/constants/icon_strings.dart';
import 'package:my_street_tab/src/utils/core/sizes.dart';

class ChatDetails extends StatelessWidget {
  const ChatDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // dummy chat data
    final messages = [
      {
        "isSender": false,
        "message": "We've received your order.",
        "time": "10:03 am"
      },
      {
        "isSender": false,
        "message":
            "Your order has been sent out, you can track via the order page. Do well to text the courier",
        "time": "10:09 am"
      },
      {"isSender": true, "message": "Alright", "time": "10:12 am"},
      {
        "isSender": true,
        "message": "This courier is slow oo",
        "time": "10:31 am"
      },
      {
        "isSender": false,
        "message": "We are sorry for the delay. Your order will arrive soon",
        "time": "10:33 am"
      },
      {
        "isSender": false,
        "message": "Thank you for your patiece",
        "time": "10:33 am"
      },
      {
        "isSender": true,
        "message": "I've gotten the order",
        "time": "10:45 am"
      },
      {
        "isSender": true,
        "message": "Really good packaging",
        "time": "10:45 am"
      },
      {
        "isSender": false,
        "message":
            "Thank you for your patronage. Please kindly give us a 5 star 🙃",
        "time": "10:48 am"
      },
      {"isSender": true, "message": "Done that alredy", "time": "10:53 am"},
      {
        "isSender": true,
        "message": "Tastes great. I''ll definately be ordering again soon 🔥",
        "time": "11:12 am"
      },
    ];

    return Scaffold(
      appBar: const ChatDetailsAppBar(title: "Geopart Etdsien"),
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

class ChatDetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatDetailsAppBar({
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
          overflow: TextOverflow.ellipsis,
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
