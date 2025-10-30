import 'package:axon_vision/pages/global_widgets/custom/custom_ripple_button.dart';
import 'package:axon_vision/pages/global_widgets/text_fonts/poppins_text_view.dart';
import 'package:axon_vision/utils/size_config.dart';
import 'package:axon_vision/utils/space_sizer.dart';
import 'package:flutter/material.dart';

class LeftTextMenu extends StatelessWidget {
  final Function(int) onMenuTap;
  final int activeIndex;
  const LeftTextMenu({
    super.key,
    required this.onMenuTap,
    required this.activeIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SpaceSizer(vertical: 4),
        CustomRippleButton(
          onTap: () => onMenuTap(0),
          child: PoppinsTextView(
            value: 'Dashboard',
            size: SizeConfig.safeBlockHorizontal * 1.3,
            fontWeight: FontWeight.w400,
          ),
        ),
        SpaceSizer(vertical: 4),
        CustomRippleButton(
          onTap: () => onMenuTap(1),
          child: PoppinsTextView(
            value: 'Data Pasien',
            size: SizeConfig.safeBlockHorizontal * 1.3,
            fontWeight: FontWeight.w400,
          ),
        ),
        SpaceSizer(vertical: 4),
        PoppinsTextView(
          value: 'Pengaturan Profil',
          size: SizeConfig.safeBlockHorizontal * 1.3,
          fontWeight: FontWeight.w400,
        ),
      ],
    );
  }
}
