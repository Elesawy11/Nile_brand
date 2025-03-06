import '../../core/utils/assets.dart';
import '../../core/utils/navigation_bar_item_image_model.dart';

class UserConstants {
  UserConstants._();

  static List<NavigationBarItemsImagesModel> userNavigationBarItemsImagesList =
      [
    NavigationBarItemsImagesModel(
      imageIcon: Assets.imagesHomeIcon,
      activeImageIcon: Assets.imagesActiveHomeIcon,
    ),
    NavigationBarItemsImagesModel(
      imageIcon: Assets.imagesCategoryIcon,
      activeImageIcon: Assets.imagesActiveCategoryIcon,
    ),
    NavigationBarItemsImagesModel(
      imageIcon: Assets.imagesOrderIcon,
      activeImageIcon: Assets.imagesActiveOrderIcon,
    ),
    NavigationBarItemsImagesModel(
      imageIcon: Assets.imagesWishlistIcon,
      activeImageIcon: Assets.imagesActiveWishlistIcon,
    ),
    NavigationBarItemsImagesModel(
      imageIcon: Assets.imagesCartIcon,
      activeImageIcon: Assets.imagesActiveCartIcon,
    ),
    NavigationBarItemsImagesModel(
      imageIcon: Assets.imagesProfileIcon,
      activeImageIcon: Assets.imagesActiveProfileIcon,
    )
  ];
}
