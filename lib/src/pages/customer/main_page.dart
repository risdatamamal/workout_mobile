part of '../pages.dart';

class CustomerMainPage extends StatefulWidget {
  final int initialPage;
  const CustomerMainPage({super.key, this.initialPage = 0});

  @override
  State<CustomerMainPage> createState() => _CustomerMainPageState();
}

class _CustomerMainPageState extends State<CustomerMainPage> {
  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
