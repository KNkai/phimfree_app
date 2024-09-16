import 'package:get/get.dart';
import '../../../pages/home/home.page.dart';
import '../../../pages/profile/profile.page.dart';
import '../../../pages/search/search.page.dart';
import '../../../pages/watchlist/watchlist.page.dart';

class NavBarController extends GetxController {
  // List of pages
  final listPage = [
    const HomePage(),
    const SearchPage(),
    const WatchListPage(),
    const ProfilePage(),
  ];

  // Reactive variable to track the current index
  var currentIndex = 0.obs;

  // Method to change the selected page
  void changePage(int index) {
    currentIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }
}
