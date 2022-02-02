import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widgetbook/src/rendering/rendering.dart';

void main() {
  group(
    '$RenderingProvider',
    () {
      test(
        'sets state',
        () {
          final deviceFrames = [
            WidgetbookFrame.defaultFrame(),
            WidgetbookFrame.noFrame(),
          ];

          final deviceFrameBuilder = defaultDeviceFrameBuilder;
          final localizationBuilder = defaultLocalizationBuilder;
          final themeBuilder = defaultThemeBuilder<ThemeData>();
          final scaffoldBuilder = defaultScaffoldBuilder;
          final useCaseBuilder = defaultUseCaseBuilder;

          final provider = RenderingProvider(
            deviceFrames: deviceFrames,
            deviceFrameBuilder: deviceFrameBuilder,
            localizationBuilder: localizationBuilder,
            themeBuilder: themeBuilder,
            scaffoldBuilder: scaffoldBuilder,
            useCaseBuilder: useCaseBuilder,
          );

          expect(
            provider.state,
            equals(
              RenderingState(
                deviceFrames: deviceFrames,
                deviceFrameBuilder: deviceFrameBuilder,
                localizationBuilder: localizationBuilder,
                themeBuilder: themeBuilder,
                scaffoldBuilder: scaffoldBuilder,
                useCaseBuilder: useCaseBuilder,
              ),
            ),
          );
        },
      );
    },
  );
}
