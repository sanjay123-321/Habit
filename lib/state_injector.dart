import 'package:flutter_bloc/flutter_bloc.dart';

import 'state_packages_names.dart';

class StateInjector {
  // static late final SharedPreferences _sharedPreferences;

  // static Future<void> init() async {
  //   _sharedPreferences = await SharedPreferences.getInstance();

  //   Stripe.publishableKey = RemoteUrls.publishableKey;
  // }

  static final blocProviders = <BlocProvider>[
    // BlocProvider<InboxCubit>(
    //   create: (context) => InboxCubit(),
    // ),
    // BlocProvider<BecomeSellerCubit>(
    //   create: (context) => BecomeSellerCubit(
    //     sellerRequestRepository: context.read(),
    //     loginBloc: context.read(),
    //   ),
    // ),
  ];
}
