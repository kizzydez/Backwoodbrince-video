import 'dart:async';
import 'package:myapp/src/teta_files/imports.dart';
import 'package:myapp/constants.dart' as constantz;
import 'package:myapp/auth/auth_state.dart';

import 'package:webviewx/webviewx.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:io';
import 'package:url_launcher/url_launcher_string.dart';

class PageDisclaimerA00 extends StatefulWidget {
  const PageDisclaimerA00({
    Key? key,
  }) : super(key: key);

  @override
  _StateDisclaimerA00 createState() => _StateDisclaimerA00();
}

class _StateDisclaimerA00 extends State<PageDisclaimerA00> {
  var datasets = <String, dynamic>{};
  int index = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    TetaCMS.instance.analytics.insertEvent(
      TetaAnalyticsType.usage,
      'App usage: view page',
      <String, dynamic>{
        'name': "DisclaimerA00",
      },
      isUserIdPreferableIfExists: true,
    );

    unawaited(
      Future.delayed(
        Duration.zero,
        () async {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Color(0xFF000000).withOpacity(1),
          ),
          child: FutureBuilder<BannerAd>(
            future: Future.delayed(Duration(milliseconds: 0), () async {
              final ad = BannerAd(
                request: const AdRequest(),
                adUnitId: UniversalPlatform.isIOS
                    ? '''ca-app-pub-1653840116883774/6934333268'''
                    : '''ca-app-pub-1653840116883774/6733300514''',
                listener: const BannerAdListener(),
                size: AdSize.fluid,
              );
              await ad.load();
              return ad;
            }),
            builder: (context, ad) {
              if (ad.data == null) {
                return Container();
              }
              return AdWidget(
                ad: ad.data!,
              );
            },
          ),
        ),
      ),
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          SafeArea(
            left: false,
            top: false,
            right: false,
            bottom: false,
            child: Container(
              decoration: BoxDecoration(
                color: context.watch<ThemeCubit>().state
                    ? TetaThemes.lightTheme['Background / Primary'] as Color
                    : TetaThemes.darkTheme['Background / Primary'] as Color,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    MdiIcons.fromString('keyboard-backspace'),
                    size: 50,
                    color: context.watch<ThemeCubit>().state
                        ? TetaThemes.lightTheme['Text / Primary'] as Color
                        : TetaThemes.darkTheme['Text / Primary'] as Color,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 30,
                    ),
                    child: Image.network(
                      r'''https://bafwxewhgmpdznpuvkel.supabase.co/storage/v1/object/public/backwoodbrinceimage/Images/1_20221029_085716_0000.jpg''',
                      width: 100.w,
                      height: 80.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
