Future<String> fetchUserOrder() => Future.delayed(
      Duration(seconds: 2),
      () => 'cappuccino',
    );

Future<void> main() async {
  print('program started');
  try {
    final order = await fetchUserOrder();
    print(order);
    final order2 = await fetchUserOrder();
    print(order2);
  } catch (e) {
    print(e);
  } finally {
    print('done');
  }
}
