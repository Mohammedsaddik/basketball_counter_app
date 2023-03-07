import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/cubit/cubit.dart';
import 'package:untitled/cubit/state.dart';

class PointsCounter extends StatelessWidget
{
  int teamAPoints = 0;
  int teamBPoints = 0;
  @override
  Widget build(BuildContext context)
  {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterState>(
        listener: (context, state)
        {
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.deepOrange,
              title: const Text(
                'Points Counter',
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children:
                [
                  Row(
                    children:
                    [
                      Column(
                        children: [
                          const Text(
                            'Team A',
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                            style: const TextStyle(
                              fontSize: 90.0,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.deepOrange,
                                minimumSize: const Size(150.0, 50.0)),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncreament(
                                  team: 'A', bottomNum: 1);
                            },
                            child: const Text(
                              'Add 1 Point',
                            ),
                          ),
                          const SizedBox(height: 40.0),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.deepOrange,
                                minimumSize: const Size(150.0, 50.0)),
                            onPressed: ()
                            {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncreament(
                                  team: 'A', bottomNum: 2);
                            },
                            child: const Text(
                              'Add 2 Point',
                            ),
                          ),
                          const SizedBox(height: 40.0),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.deepOrange,
                                minimumSize: const Size(150.0, 50.0)),
                            onPressed: ()
                            {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncreament(
                                  team: 'A', bottomNum: 3);
                            },
                            child: const Text(
                              'Add 3 Point',
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          const Text(
                            'Team B',
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                            style: const TextStyle(
                              fontSize: 90.0,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.deepOrange,
                                minimumSize: const Size(150.0, 50.0)),
                            onPressed: ()
                            {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncreament(
                                  team: 'B', bottomNum: 1);
                            },
                            child: const Text(
                              'Add 1 Point',
                            ),
                          ),
                          const SizedBox(height: 40.0),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.deepOrange,
                                minimumSize: const Size(150.0, 50.0)),
                            onPressed: ()
                            {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncreament(
                                  team: 'B', bottomNum: 2);
                            },
                            child: const Text(
                              'Add 2 Point',
                            ),
                          ),
                          const SizedBox(height: 40.0),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.deepOrange,
                                minimumSize: const Size(150.0, 50.0)),
                            onPressed: ()
                            {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncreament(
                                  team: 'B', bottomNum: 3);
                            },
                            child: const Text(
                              'Add 3 Point',
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 70.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange,
                        minimumSize: const Size(150.0, 50.0)
                    ),
                    onPressed: ()
                    {
                      BlocProvider.of<CounterCubit>(context).Reset();
                    },
                    child: const Text(
                      'Reset',
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
