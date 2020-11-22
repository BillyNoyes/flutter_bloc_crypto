part of 'crypto_bloc.dart';

abstract class CryptoState extends Equatable {
  const CryptoState();

  @override
  List<Object> get props => [];
}

// Initial state on loading app
class CryptoEmpty extends CryptoState {}

// State when fetching coins
class CryptoLoading extends CryptoState {}

// State when loaded coins
class CryptoLoaded extends CryptoState {
  final List<Coin> coins;

  const CryptoLoaded({this.coins});

  @override
  List<Object> get props => [coins];

  @override
  String toString() => 'CryptoLoaded {coins: $coins}';
}

// State when error with API request
class CryptoError extends CryptoState {}
