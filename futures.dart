Future<String> fetchUserOrder() => Future.delayed(
      Duration(seconds: 2),
      () => 'cappuccino',
    );

void main() {
  print('program started');
  fetchUserOrder()
      .then((order) => print('Order is ready: $order'))
      .catchError((error) => print(error))
      .whenComplete(() => print('done'));
}
