Future<String> fetchUserOrder() => Future.delayed(
      Duration(seconds: 2),
      () => 'Cappuccino',
    );

Future<String> fetchUserOrder2() => Future.value('Espresso');

Future<String> fetchUserOrder3() => Future.error('Out of milk');

Future<void> main() async {
  print('program started');
  try {
    final order = await fetchUserOrder();
    print(order);
    final order2 = await fetchUserOrder2();
    print(order2);
    final order3 = await fetchUserOrder3();
    print(order3);
  } catch (e) {
    print(e);
  } finally {
    print('done');
  }
}
