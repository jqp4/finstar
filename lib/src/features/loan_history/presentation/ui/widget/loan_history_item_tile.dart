import 'package:finstar_test_task/src/core/uikit/gap/gap.dart';
import 'package:finstar_test_task/src/features/loan_shared/domain/_barrel.dart';
import 'package:finstar_test_task/src/foundation/_barrel.dart';
import 'package:flutter/material.dart';

/// Tile of a saved form item. Contains basic information,
/// a button to go to the form page and a delete button
class LoanHistoryItemTile extends StatelessWidget {
  const LoanHistoryItemTile({
    required this.form,
    required this.onTilePressed,
    required this.onDeleteButtonPressed,
    super.key,
  });

  final LoanForm form;
  final VoidCallback onTilePressed;
  final VoidCallback onDeleteButtonPressed;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final backgroundColor = theme.colorScheme.secondaryContainer;
    final leadingIconBackgroundColor = theme.colorScheme.surface;
    final deleteButtonIconColor = theme.colorScheme.error;
    final deleteButtonIconBackgroundColor = theme.colorScheme.errorContainer;

    return Row(
      children: [
        // Stored LoanForm Tile
        Expanded(
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
            child: Material(
              color: backgroundColor,
              child: InkWell(
                onTap: onTilePressed,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Icon
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: CircleAvatar(
                        backgroundColor: leadingIconBackgroundColor,
                        child: const Text(
                          r'$',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),

                    // Body
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              form.amount.toString().spaceSeparateNumbers(),
                              style: theme.textTheme.bodyLarge,
                            ),
                            Text(
                              '${form.termInMonths.toString()} months, '
                              '${form.interestRate.customRound(2).toString()}%',
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Icon
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: SizedBox.square(
                        dimension: 24,
                        child: Center(
                          child: Icon(
                            Icons.keyboard_arrow_right_rounded,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

        // Delete icon button
        const Gap.x(16),
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          child: Material(
            color: deleteButtonIconBackgroundColor,
            child: InkWell(
              onTap: onDeleteButtonPressed,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox.square(
                  dimension: 24,
                  child: Center(
                    child: Icon(
                      Icons.delete_forever_outlined,
                      color: deleteButtonIconColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
