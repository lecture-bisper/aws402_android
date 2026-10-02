//  File :  memo_screen.dart
//  User :  it
//  Date :  2026-10-02
//  Time :  오전 9:19
//  Desc :

//  문제) 메모장 앱을 작성하세요
//  화면 상단에 사용자 키보드 입력을 위한 textfield 를 사용하여
//  제목과 내용을 각각 입력 후 확인 버튼을 클릭
//  화면 하단에 메모 내용이 리스트로 출력

import 'package:flutter/material.dart';
import 'package:flutter_20261002/widgets/memo_list_item_widget.dart';

import '../models/memo_model.dart';

class MemoScreen extends StatefulWidget {
  const MemoScreen({super.key});

  @override
  State<MemoScreen> createState() => _MemoScreenState();
}

class _MemoScreenState extends State<MemoScreen> {
  final _titleController = TextEditingController();
  final _contentsController = TextEditingController();

  final List<MemoModel> _memoList = [];

  void _addMemo() {
    final title = _titleController.text.trim();
    final contents = _contentsController.text.trim();

    setState(
      () => _memoList.insert(0, MemoModel(title: title, contents: contents)),
    );

    _titleController.clear();
    _contentsController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('메모장 App')),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 상단 입력 부분
              TextField(
                controller: _titleController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: '제목',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 8),
              TextField(
                controller: _contentsController,
                minLines: 2,
                maxLines: 5,
                decoration: InputDecoration(
                  labelText: '내용',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 8),
              FilledButton(onPressed: _addMemo, child: const Text('확인')),

              const SizedBox(height: 16),
              // 하단 내용 출력 List

              Text('메모 목록', style: TextStyle()),
              SizedBox(height: 8),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: _memoList.length,
                  itemBuilder: (context, index) {
                    return MemoListItemWidget(
                      memo: _memoList[index],
                      number: _memoList.length - index,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _titleController.dispose();
    _contentsController.dispose();

    super.dispose();
  }
}
