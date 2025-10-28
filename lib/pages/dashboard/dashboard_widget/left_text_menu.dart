import 'dart:ui';

import 'package:axon_vision/pages/global_widgets/text_fonts/poppins_text_view.dart';
import 'package:axon_vision/utils/size_config.dart';
import 'package:axon_vision/utils/space_sizer.dart';
import 'package:flutter/material.dart';

class LeftTextMenu extends StatelessWidget {
  const LeftTextMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SpaceSizer(vertical: 4),
        PoppinsTextView(
          value: 'Dashboard',
          size: SizeConfig.safeBlockHorizontal * 1.3,
          fontWeight: FontWeight.w400,
        ),
        SpaceSizer(vertical: 4),
        PoppinsTextView(
          value: 'Data Pasien',
          size: SizeConfig.safeBlockHorizontal * 1.3,
          fontWeight: FontWeight.w400,
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
