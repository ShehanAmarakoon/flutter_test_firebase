void main() {
  test('API current Firebase user', () async {
  MethodChannel channel = MethodChannel(
    'plugins.flutter.io/firebase_auth',
  );
  channel.setMockMethodCallHandler((MethodCall call) async {
    if (call.method == 'currentUser') {
      return;
    }
    ;
    throw MissingPluginException();
  });

  FirebaseUser user = await FirebaseAuth.instance.currentUser();
  expect(user, null);
});
}
