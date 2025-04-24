import 'package:tredo/src/core/extension/extensions.dart';
import 'package:flutter/cupertino.dart';

class CustomGridView extends StatelessWidget {
  final List<dynamic> datas; // Now accepts dynamic data
  final double verticalSpacing;
  final double horizontalSpacing;
  final Widget Function(BuildContext context, dynamic data) itemBuilder;

  const CustomGridView({super.key, 
    required this.datas,
    required this.itemBuilder, // Accepts an item builder function
    this.verticalSpacing = 12, // Default vertical spacing
    this.horizontalSpacing = 9, // Default horizontal spacing
  });

  @override
  Widget build(BuildContext context) {
    // Group the items into pairs (or single items if odd count)
    List<List<dynamic>> groupedItems = [];
    for (int i = 0; i < datas.length; i += 2) {
      // Group two items per row or the last one if it's an odd count
      groupedItems
          .add(datas.sublist(i, i + 2 > datas.length ? datas.length : i + 2));
    }

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          for (int i = 0; i < groupedItems.length; i++)
            Container(
              padding: EdgeInsets.only(
                  bottom: i != groupedItems.length - 1 ? verticalSpacing : 0),
              // Adjust bottom padding for the last row
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ...groupedItems[i].mapIndexed((e, index) {
                    return Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                            right: index == 0 ? horizontalSpacing : 0),
                        child: itemBuilder(context,
                            e), // Use itemBuilder for custom item rendering
                      ),
                    );
                  }),
                  if (groupedItems[i].length == 1)
                    const Expanded(child: SizedBox()), // Handle odd items
                ],
              ),
            ),
        ],
      ),
    );
  }
}
