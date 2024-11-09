import 'package:flutter_test/flutter_test.dart';
import 'package:login_form/business_logics/credentials_checker.dart';

void main() {
  CredentialsChecker credentialsChecker = CredentialsChecker();
  
  testWidgets('null values', (WidgetTester tester) async {
    expect(credentialsChecker.check(null, null), false);
  });
  
  testWidgets('invalid value', (WidgetTester tester) async {
    expect(credentialsChecker.check('invalid', 'test'), false);
  });
  
  testWidgets('correct values', (WidgetTester tester) async {
    expect(credentialsChecker.check('myLogin', 'test'), true);
  });
}