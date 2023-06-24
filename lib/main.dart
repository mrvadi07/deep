import 'package:deep/parallax.dart';
import 'package:deep/reoderable_list.dart';
import 'package:deep/search.dart';
import 'package:deep/slider.dart';
import 'package:deep/sliver_appbar.dart';
import 'package:deep/tabbar.dart';
import 'package:deep/time_picker.dart';
import 'package:deep/timer.dart';
import 'package:deep/tween_animation.dart';
import 'package:flutter/material.dart';
import 'Alert_Dilog.dart';
import 'Animated_Align.dart';
import 'Animation_Controller.dart';
import 'Button.dart';
import 'Contrainebox_Wrap_Expantion tile.dart';

import 'FutureBuilder.dart';
import 'Lottie_Animation.dart';
import 'Otp.dart';
import 'animated_container.dart';
import 'data_table.dart';
import 'date_picker.dart';
import 'date_range_picker.dart';
import 'dismissible.dart';
import 'draggable_scrollable_sheet.dart';
import 'dropdown.dart';
import 'image_filtered.dart';
import 'list_wheel_scroll_view.dart';
import 'listview_separated.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MultiProvider(
    //     providers: [
    // ChangeNotifierProvider<CounterProvider>(
    // create: (context) => CounterProvider(),
    // ),
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimationControllerDemo(),
    );
  }
}
