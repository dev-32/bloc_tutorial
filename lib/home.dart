import 'package:bloc_tutorial/counter_bloc.dart';
import 'package:bloc_tutorial/like_button_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('B L O C'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('The Value is : ', style: TextStyle(fontSize: 18),),
                const SizedBox(height: 10,),
                Text(state.value.toString(),
                    style: const TextStyle(fontSize: 22)),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: () {
                      context.read<CounterBloc>().add(CounterIncrementEvent());
                    }, icon: const Icon(Icons.add),
                        highlightColor: Colors.green.shade100),
                    IconButton(onPressed: () {
                      context.read<CounterBloc>().add(CounterDecrementEvent());
                    }, icon: const Icon(Icons.remove),
                      highlightColor: Colors.red.shade100,),
                    BlocBuilder<LikeButtonBloc, LikeButtonState>(
                      builder: (context, state) {
                        return IconButton(onPressed: () {
                          context.read<LikeButtonBloc>().add(LikeButtonClickedEvent());
                        }
                        , icon:
                            Icon(state.widget,
                            color: Colors.red));
                      },
                    )
                  ],
                ),
                const SizedBox(height: 17,),
              ],
            );
          },
        ),
      ),
    );
  }
}
