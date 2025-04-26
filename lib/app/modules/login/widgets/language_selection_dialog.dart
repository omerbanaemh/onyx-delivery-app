import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onyx_delivery/app/core/classes/ui_helpers.dart';
import 'package:onyx_delivery/app/core/constants/app_assets.dart';
import 'package:onyx_delivery/app/core/constants/app_colors.dart';

class LanguageSelectionDialog extends StatefulWidget {
  const LanguageSelectionDialog({super.key});

  @override
  State<LanguageSelectionDialog> createState() => _LanguageSelectionDialogState();
}

class _LanguageSelectionDialogState extends State<LanguageSelectionDialog> {
  String selectedLanguage = 'en';



  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Choose Language",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: AppColors.secondaryColor),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => selectedLanguage = 'ar'),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: selectedLanguage == 'ar'
                            ? Colors.green[100]
                            : Colors.white,
                        border: Border.all(
                          color: selectedLanguage == 'ar'
                              ? Colors.green
                              : Colors.grey.shade300,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(
                            AppAssets.arabic,
                            fit: BoxFit.contain,
                          ),
                          const Column(
                            children: [
                              Text('العربية', style: TextStyle(fontSize: 12)),
                              Text('Arabic', style: TextStyle(fontSize: 10)),
                            ],
                          ),
                          UiHelper.horizontalSpaceLarge
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => selectedLanguage = 'en'),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: selectedLanguage == 'en'
                            ? Colors.green[100]
                            : Colors.white,
                        border: Border.all(
                          color: selectedLanguage == 'en'
                              ? Colors.green
                              : Colors.grey.shade300,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(
                            AppAssets.english,
                            fit: BoxFit.contain,
                          ),
                          const Column(
                            children: [
                              Text('English', style: TextStyle(fontSize: 12)),
                              Text('English', style: TextStyle(fontSize: 10)),
                            ],
                          ),
                          UiHelper.horizontalSpaceLarge
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.secondaryColor,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () async {
                Navigator.pop(context);
              },
              child: const Text('Apply',style: TextStyle(color: AppColors.whiteColor),),
            ),
          ],
        ),
      ),
    );
  }
}
