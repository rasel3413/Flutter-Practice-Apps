import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/bloc/color_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});


  @override
  Widget build(BuildContext context) {
    ColorBloc colorBloc=ColorBloc();
    return Scaffold(
      body: BlocConsumer<ColorBloc, ColorState>(
        bloc:colorBloc,
        listener: (context, state) {
        
        },
        builder: (context, state) {
          return Container(
            child: FloatingActionButton(onPressed: (){
           colorBloc.add(ColorChange());
              print(state.color);
            },backgroundColor: state.color,),
          );
        },
      ),
    );
  }
}
