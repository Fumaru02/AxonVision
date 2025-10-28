import 'package:axon_vision/controllers/dashboard_controller.dart';
import 'package:axon_vision/pages/dashboard/dashboard_widget/dashboard_tabel_daftar_pasien.dart';
import 'package:axon_vision/pages/dashboard/dashboard_widget/home_dashboard.dart';
import 'package:axon_vision/pages/dashboard/dashboard_widget/left_text_menu.dart';
import 'package:axon_vision/pages/global_widgets/custom/custom_flat_button.dart';
import 'package:axon_vision/pages/global_widgets/custom/custom_text_field.dart';
import 'package:axon_vision/pages/global_widgets/frame/frame_scaffold.dart';
import 'package:axon_vision/pages/global_widgets/text_fonts/poppins_text_view.dart';
import 'package:axon_vision/utils/app_colors.dart';
import 'package:axon_vision/utils/asset_list.dart';
import 'package:axon_vision/utils/fluid_space_sizer.dart';
import 'package:axon_vision/utils/size_config.dart';
import 'package:axon_vision/utils/space_sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> dashboardMenu = [Home(), DaftarPasienMenu()]; //lanjut

    SizeConfig().init(context);
    return FrameScaffold(
      heightBar: 0,
      elevation: 0,
      color: AppColors.black,
      statusBarColor: AppColors.black,
      colorScaffold: AppColors.bgColor,
      statusBarBrightness: Brightness.light,
      view: GetBuilder<DashboardController>(
        init: DashboardController(),
        builder: (DashboardController dashboardController) => Center(
          child: Container(
            width: SizeConfig.safeBlockHorizontal * 90,
            height: SizeConfig.safeBlockVertical * 96,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(SizeConfig.safeBlockHorizontal * 2.5),
              ),
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Image.asset(
                      AssetList.axonLogo,
                      fit: BoxFit.cover,
                      width: SizeConfig.safeBlockHorizontal * 15,
                      height: SizeConfig.safeBlockVertical * 15,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: SizeConfig.horizontal(2)),
                      child: LeftTextMenu(),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SpaceSizer(vertical: 3),
                      Row(
                        children: [
                          PoppinsTextView(
                            value: 'Dashboard',
                            size: SizeConfig.safeBlockHorizontal * 2,
                            fontWeight: FontWeight.bold,
                          ),
                          SpaceSizer(horizontal: 44),
                          PoppinsTextView(
                            value: 'Halo, User',
                            size: SizeConfig.safeBlockHorizontal * 1.5,
                            fontWeight: FontWeight.w400,
                          ),
                          SpaceSizer(horizontal: 2),
                          CircleAvatar(child: Icon(Icons.person)),
                          FluidSpaceSizer(minSpace: 0.1, maxSpace: 2),
                        ],
                      ),
                      SpaceSizer(vertical: 4),
                      SizedBox(
                        width: SizeConfig.safeBlockHorizontal * 74,
                        child: Divider(
                          height: SizeConfig.safeBlockHorizontal * 0.2,
                          thickness: 1,
                          indent: 6,
                          endIndent: 60,
                          color: AppColors.greyDisabled,
                        ),
                      ),
                      SpaceSizer(vertical: 3),
                      dashboardMenu[1],
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DaftarPasienMenu extends StatelessWidget {
  const DaftarPasienMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomTextField(
              width: 60,
              title: '',
              borderRadius: 1,
              hintText: 'Cari berdasarkan nama atau ID...',
            ),
            SpaceSizer(horizontal: 2),
            CustomFlatButton(
              text: 'Cari',
              onTap: () {},
              radius: 1.4,
              width: SizeConfig.blockSizeHorizontal * 8,
              backgroundColor: AppColors.bgColor,
            ),
          ],
        ),
        SpaceSizer(vertical: 2),
        SizedBox(
          width: SizeConfig.blockSizeHorizontal * 70,
          height: SizeConfig.safeBlockVertical * 70,
          child: DashboardTabelDaftarPasien(isHideID: false),
        ),
      ],
    );
  }
}
