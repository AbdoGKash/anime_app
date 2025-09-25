import 'package:flutter/material.dart';
import 'package:mini_app_with_clean_architecture/core/colors_manger.dart';

class UpgradePlanButton extends StatefulWidget {
  const UpgradePlanButton({super.key});

  @override
  State<UpgradePlanButton> createState() => _UpgradePlanButtonState();
}

class _UpgradePlanButtonState extends State<UpgradePlanButton> {
  String selectedPlan = "monthly";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildPlanCard(
          id: "monthly",
          title: "Monthly",
          price: "\$5 USD / Month",
          description: "Include Family Sharing",
        ),
        const SizedBox(height: 16),
        _buildPlanCard(
          id: "annually",
          title: "Annually",
          price: "\$50 USD / Year",
          description: "Include Family Sharing",
        ),
      ],
    );
  }

  Widget _buildPlanCard({
    required String id,
    required String title,
    required String price,
    required String description,
  }) {
    final bool isSelected = selectedPlan == id;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedPlan = id;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 110,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF18153F) : Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset(
              "assets/images/Files & Folders 3 1.png",
              width: 108,
              height: 108,
            ),

            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: isSelected ? Colors.white : Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: isSelected ? Colors.white : Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 12,
                    color: isSelected ? Colors.white70 : Colors.grey[700],
                  ),
                ),
              ],
            ),
            SizedBox(width: 45),
            Padding(
              padding: const EdgeInsets.only(bottom: 45.0),
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isSelected
                        ? ColorsManger.mainColor
                        : Color(0xFF18153F),
                    width: 2,
                  ),
                  color: isSelected
                      ? ColorsManger.mainColor
                      : Colors.transparent,
                ),
                child: isSelected
                    ? const Icon(
                        Icons.check,
                        size: 18,
                        color: Color(0xFF18153F),
                      )
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
