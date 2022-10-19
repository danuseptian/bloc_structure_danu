import 'package:bloc_structure_danu/bloc/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/counter.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc Structure'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<ThemeBloc>().toggleTheme();
        },
        child: Icon(Icons.color_lens),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'BlocBuilder',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'This is an example of using BlocBuilder. The purpose of BlocBuilder is you can update any widget you like without changing your widget to stateful widget.\n\nWhen you update something to your screen, only widget that wrapped with BlocBuilder that changed. Other widget doesn\'t change.\n\nThis implementation makes the app more light and clean.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 20),
                  BlocBuilder<CounterBloc, int>(builder: (context, state) {
                    return Center(
                      child: Text(
                        '${state}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(),
                        onPressed: () {
                          context.read<CounterBloc>().decrement();
                        },
                        icon: Icon(Icons.remove),
                        label: Text('Decrease'),
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(),
                        onPressed: () {
                          context.read<CounterBloc>().increment();
                        },
                        icon: Icon(Icons.add),
                        label: Text('Add'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
