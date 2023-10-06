import 'package:bloc_sample_app/bloc/home_bloc.dart';
import 'package:bloc_sample_app/bloc/home_event.dart';
import 'package:bloc_sample_app/bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state is ColorInit) {
                return Container(
                  color: state.color,
                );
              }
              if (state is ColorRepaint) {
                return Container(
                  color: state.color,
                );
              }

              return Container(
                color: Colors.amber,
              );
            },
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                context.read<HomeBloc>().add(ChangeColorEvent());
              },
              child: Text('Change Color'),
            ),
          ),
        ],
      ),
    );
  }
}
