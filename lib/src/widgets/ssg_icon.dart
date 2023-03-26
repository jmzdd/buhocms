import 'package:buhocms/src/i18n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../ssg/ssg.dart';
import '../utils/preferences.dart';

class SSGIcon extends StatelessWidget {
  const SSGIcon({Key? key}) : super(key: key);

  Widget ssgIcon(BuildContext context) {
    final tooltip = Localization.appLocalizations()
        .logo(SSG.getSSGName(SSGTypes.values.byName(Preferences.getSSG())));

    return Tooltip(
      message: tooltip,
      child: SvgPicture.asset(
        'assets/images/${Preferences.getSSG().toLowerCase()}.svg',
        width: 28,
        height: 28,
        colorFilter: ColorFilter.mode(
          Theme.of(context).colorScheme.onPrimary,
          BlendMode.srcIn,
        ),
        semanticsLabel: tooltip,
      ),
    );
  }

  @override
  Widget build(BuildContext context) => ssgIcon(context);
}
