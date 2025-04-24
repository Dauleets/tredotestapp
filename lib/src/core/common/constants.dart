// ignore_for_file: constant_identifier_names

import 'package:tredo/src/core/extension/extensions.dart';
import 'package:tredo/src/core/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

Widget refreshClassicHeader(BuildContext context) {
  return const ClassicHeader(
    completeText: 'Updated successfully!',
    releaseText: 'Update!',
    idleText: 'Pull down to refresh',
    failedText: 'Unknown error',
    refreshingText: 'Updating...',
  );
}

const NOT_FOUND_IMAGE =
    'https://user-images.githubusercontent.com/24848110/33519396-7e56363c-d79d-11e7-969b-09782f5ccbab.png';

const NO_IMAGE_AVAILABLE =
    'https://propertywiselaunceston.com.au/wp-content/themes/property-wise/images/no-image@2x.png';

// Widget refreshClassicHeader(BuildContext context) {
//   return ClassicHeader(
//     completeText: context.localized.successfullyUpdated,
//     releaseText: context.localized.update,
//     idleText: context.localized.pullDownToRefresh,
//     failedText: context.localized.unknownError,
//     refreshingText: context.localized.updateDotDotDot,
//   );
// }

Widget refreshClassicFooter(BuildContext context) {
  return const ClassicFooter(
    // completeDuration: 'Успешно обновлено!',
    // // releaseText: 'Обновить!',

    idleText: 'Pull down to refresh',
    failedText: 'Unknown error',
    loadingText: 'Loading...',
    canLoadingText: 'Updating...',
    idleIcon: null,
  );
}

Widget errorText(BuildContext context, {required String? text}) {
  if (text == null) return const SizedBox();
  return Text(
    text,
    style: TextStyle(
      fontSize: 13,
      color: context.theme.redColor,
    ),
  );
}
