import 'package:multiple_result/multiple_result.dart';
import 'package:prueba_elvoratec/core/error.dart';
import 'package:prueba_elvoratec/features/home/domain/entities/pokemon_response.dart';

abstract interface class PokemonListRepository {
  Future<Result<PokemonResponse, NetworkError>> getPokemonList();
}
