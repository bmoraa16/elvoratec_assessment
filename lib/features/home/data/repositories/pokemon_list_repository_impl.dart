import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:prueba_elvoratec/core/error.dart';
import 'package:prueba_elvoratec/features/home/data/datasources/pokemon_list_datasource.dart';
import 'package:prueba_elvoratec/features/home/data/mapper/mapper_domain.dart';
import 'package:prueba_elvoratec/features/home/domain/entities/pokemon_response.dart';
import 'package:prueba_elvoratec/features/home/domain/repositories/pokemon_list_repository.dart';

@Injectable(as: PokemonListRepository)
class PokemonListRepositoryImpl implements PokemonListRepository {
  final PokemonListDataSource _pokemonListDataSource;

  PokemonListRepositoryImpl(this._pokemonListDataSource);

  @override
  Future<Result<PokemonResponse, NetworkError>> getPokemonList() async {
    final result = await _pokemonListDataSource.getPokemonList();
    if (result.isSuccess()) {
      return Result.success(result.getOrThrow().toDomain);
    }

    return Result.error(result.tryGetError()!);
  }
}
