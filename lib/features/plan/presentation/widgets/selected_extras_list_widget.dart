import 'package:flutter/widgets.dart';
import 'package:super_clean_app/features/plan/data/models/selected_extra_model.dart';
import 'package:super_clean_app/features/plan/presentation/widgets/selected_extras_item_widget.dart';

import '../../../../core/utils/styles.dart';

class SelectedExtraListWidget extends StatelessWidget {
  const SelectedExtraListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Opacity(
          opacity: 0.7,
          child: Text(
            'Selected Extras',
            style: Styles.textStyle12Ubuntu,
          ),
        ),
        const SizedBox(
          height: 21,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            for (int i = 0; i < extraList.length; i++)
              Expanded(
                  child: SelectedExtrasItemWidget(
                image: extraList[i].image,
                text: extraList[i].text,
                num: extraList[i].num,
              )),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            for (int i = 0; i < extraList1.length; i++)
              Expanded(
                  child: SelectedExtrasItemWidget(
                image: extraList1[i].image,
                text: extraList1[i].text,
                num: extraList1[i].num,
              )),
          ],
        ),
      ],
    );
  }
}
