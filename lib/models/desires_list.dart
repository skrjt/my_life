import 'package:flutter/material.dart';
import 'package:my_life/cubits/main_page/desires_list_cubit.dart';
import 'package:my_life/models/desire.dart';
import 'package:my_life/pages/edit_desire_page.dart';

class DesiresList extends StatelessWidget {

  final DesiresListCubit cubit;

  DesiresList({Key key, this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cubit.desireList.length,
      itemBuilder: (BuildContext context, int index) {
        Desire desire = cubit.desireList[index];
        return Container(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
          child: Card(
            elevation: 8.0,
            child: ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                    EditDesirePage(desire: desire, cubit: cubit)));
              },
              title: Container(
                  child: Row(
                    children: [
                      Text('${desire.id}'),
                      Spacer(),
                      Text('${desire.title}')
                    ],
                  )
              ),
            ),
          ),
        );
      },
    );
  }

}