import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:salama_users/constants/colors.dart';
import 'package:salama_users/screens/auth/id_photo_screen.dart';
import 'package:salama_users/widgets/busy_button.dart';

class PhotoConsentScreen extends StatefulWidget {
  final Map<String, dynamic> payload;
  const PhotoConsentScreen({super.key, required this.payload});

  @override
  State<PhotoConsentScreen> createState() => _PhotoConsentScreenState();
}

class _PhotoConsentScreenState extends State<PhotoConsentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(30),
              SizedBox(height: 300, child: Image.asset("assets/image 130.png")),
              const Text(
                "To make sure it’s really you, we check your application against a photo of your ID and a photo of you",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const Gap(20),
              const Text(
                "That way, we can be sure someone isn’t trying to set up an account in your name.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const Gap(20),
              Spacer(),
              BusyButton(
                title: "Got it",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          IdPhotoPage(payload: widget.payload)));
                },
              ),
              Gap(20)
            ],
          ),
        ),
      ),
    );
  }
}
