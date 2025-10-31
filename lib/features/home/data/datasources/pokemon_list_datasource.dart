import 'package:multiple_result/multiple_result.dart';
import 'package:prueba_elvoratec/core/error.dart';
import 'package:prueba_elvoratec/features/home/data/models/pokemon_details_dto.dart';
import 'package:prueba_elvoratec/features/home/data/models/pokemon_response_dto.dart';

abstract interface class PokemonListDataSource {
  Future<Result<PokemonResponseDto, NetworkError>> getPokemonList();

  Future<Result<PokemonDetailsDto, NetworkError>> getPokemonDetails({
    required String pokemonIndex,
  });
}
