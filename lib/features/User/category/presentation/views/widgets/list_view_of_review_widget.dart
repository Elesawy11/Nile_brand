import 'package:nile_brand/core/routing/exports.dart';

import 'review_widget.dart';

class ListViewOfReviewWidget extends StatelessWidget {
  const ListViewOfReviewWidget({
    super.key,
    required this.state,
  });
  final GetReviewsSuccess state;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: state.reviews.length,
      itemBuilder: (context, index) {
        return ReviewWidget(
          imageUrl: state.reviews[index].user?.userImage ?? '',
          text: state.reviews[index].comment ?? 'no comment',
        );
      },
    );
  }
}
