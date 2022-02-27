import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ones_map/ones_map.dart';

void main() {
  const MethodChannel channel = MethodChannel('ones_map');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await OnesMap.platformVersion, '42');
  });
}
