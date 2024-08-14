import 'package:flutter/material.dart';

class JobExpansionTile extends StatefulWidget {
  const JobExpansionTile({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;

  @override
  State<JobExpansionTile> createState() => _JobExpansionTileState();
}

class _JobExpansionTileState extends State<JobExpansionTile> {
  final _border = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      side: BorderSide(color: Colors.grey.shade200));

  bool _customTileExpand = false;

  _expansionChanged(bool expanded) {
    setState(() {
      _customTileExpand = expanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      onExpansionChanged: _expansionChanged,
      collapsedShape: _border,
      shape: _border,
      title: Text(
        widget.title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
      ),
      trailing: _customTileExpand
          ? const Icon(Icons.arrow_drop_up)
          : const Icon(Icons.arrow_drop_down),
      expansionAnimationStyle: AnimationStyle(curve: Curves.easeInOut),
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: Text(widget.subTitle,
              style: const TextStyle(fontSize: 16, color: Colors.black54)),
        ),
      ],
    );
  }
}
