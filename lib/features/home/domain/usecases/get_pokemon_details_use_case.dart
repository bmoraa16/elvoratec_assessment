import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:prueba_elvoratec/core/error.dart';
import 'package:prueba_elvoratec/features/home/domain/entities/pokemon_details.dart';
import 'package:prueba_elvoratec/features/home/domain/repositories/pokemon_list_repository.dart';

@lazySingleton
class GetFavoriteProvidersUseCase {
  final PokemonListRepository _pokemonDetailsRepository;

  GetFavoriteProvidersUseCase(this._pokemonDetailsRepository);

  Future<Result<PokemonDetails, NetworkError>> execute(
      String pokemonIndex) async {
    return await _pokemonDetailsRepository.getPokemonDetails(
      pokemonIndex: pokemonIndex,
    );
  }
}
