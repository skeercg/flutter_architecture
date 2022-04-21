import 'package:flutter/material.dart';
import 'package:flutter_architecture/presentation/cubits/profile_state.dart';
import 'package:flutter_architecture/presentation/cubits/users_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Architecture'),
      ),
      body: Center(
        child: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            return state.map(
              loading: (_) => CircularProgressIndicator(),
              loaded: (loaded) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name: ${loaded.user.name}'),
                  Text('Occupation: ${loaded.user.occupation}'),
                  TextButton(
                    onPressed: () => context.read<ProfileCubit>().logOut(),
                    child: Text('Log Out'),
                  ),
                ],
              ),
              unloaded: (_) => TextButton(
                onPressed: () => context.read<ProfileCubit>().logIn(),
                child: Text('Log In'),
              ),
            );
          },
        ),
      ),
    );
  }
}
