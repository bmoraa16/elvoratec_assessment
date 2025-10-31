import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:prueba_elvoratec/core/constants/urls.dart';
import 'package:prueba_elvoratec/core/error.dart';
import 'package:prueba_elvoratec/core/managers/network_manager.dart';
import 'package:prueba_elvoratec/features/home/data/datasources/pokemon_list_datasource.dart';
import 'package:prueba_elvoratec/features/home/data/models/pokemon_details_dto.dart';
import 'package:prueba_elvoratec/features/home/data/models/pokemon_response_dto.dart';

@Injectable(as: PokemonListDataSource)
class PokemonListDataSourceImpl implements PokemonListDataSource {
  final NetworkManager _networkManager;

  PokemonListDataSourceImpl(this._networkManager);

  @override
  Future<Result<PokemonResponseDto, NetworkError>> getPokemonList() async {
    final request = Request(
      url: Urls.getPokemon,
      method: RequestType.get,
    );

    return await _networkManager.call<PokemonResponseDto>(
      mapper: PokemonResponseDto.fromJson,
      request: request,
    );
  }

  @override
  Future<Result<PokemonDetailsDto, NetworkError>> getPokemonDetails({
    required String pokemonIndex,
  }) async {
    final request = Request(
      url: pokemonIndex,
      method: RequestType.get,
    );
    return await _networkManager.call<PokemonDetailsDto>(
      mapper: PokemonDetailsDto.fromJson,
      request: request,
    );
  }
}
