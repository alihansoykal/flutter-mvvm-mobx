import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:fluttermvvmtemplate/core/base/state/base_state.dart';
import 'package:fluttermvvmtemplate/core/base/view/base_view.dart';
import 'package:fluttermvvmtemplate/core/extension/string_extension.dart';
import 'package:fluttermvvmtemplate/core/init/lang/language_manager.dart';
import 'package:fluttermvvmtemplate/core/init/lang/locale_keys.g.dart';
import 'package:fluttermvvmtemplate/view/authenticate/test/viewmodel/test_view_model.dart';

class TestView extends StatefulWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  _TestViewState createState() => _TestViewState();
}

class _TestViewState extends BaseState<TestView> {
  late TestViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return BaseView<TestViewModel>(
      viewModel: TestViewModel(),
      onModelReady: (model) {
        viewModel = model;
      },
      onPageBuilder: (context, value) => const Text("data"),
    );
  }

  Widget get scaffoldBody => Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.welcome.locale),
        ),
        floatingActionButton: floatingActionButtonIncrement,
      );

  FloatingActionButton get floatingActionButtonIncrement {
    return FloatingActionButton(onPressed: () => viewModel.increment());
  }

  Widget get textNumber {
    return Observer(builder: (context) => Text(viewModel.number.toString()));
  }
}
