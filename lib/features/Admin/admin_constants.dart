import '../../core/utils/assets.dart';
import '../../core/utils/navigation_bar_item_image_model.dart';

class AdminConstants {
  AdminConstants._();

  static List<NavigationBarItemsImagesModel> userNavigationBarItemsImagesList =
      [
    NavigationBarItemsImagesModel(
      imageIcon: Assets.imagesUnactiveBrandsAdmin,
      activeImageIcon: Assets.imagesActiveBrandsAdmine,
    ),
    NavigationBarItemsImagesModel(
      imageIcon: Assets.imagesUnactiveCatgAdmin,
      activeImageIcon: Assets.imagesActiveCatgAdmin,
    ),
    NavigationBarItemsImagesModel(
      imageIcon: Assets.imagesUnactiveProdManageAdmin,
      activeImageIcon: Assets.imagesActiveProdManageAdmin,
    ),
    NavigationBarItemsImagesModel(
      imageIcon: Assets.imagesUnactiveSystmeUsersAdmin,
      activeImageIcon: Assets.imagesActiveSystemUsersAdmin,
    ),
    NavigationBarItemsImagesModel(
      imageIcon: Assets.imagesUnactiveFeedbackAdmin,
      activeImageIcon: Assets.imagesActiveSystemfeedbackAdmin,
    ),
  ];
}
