package br.com.estaghub.mapper;

import br.com.estaghub.domain.PlanoAtividades;
import br.com.estaghub.dto.PlanoAtividadesCreationDTO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.List;
import java.util.Optional;

@Mapper
public interface PlanoAtividadesMapper {
    PlanoAtividadesMapper INSTANCE = Mappers.getMapper(PlanoAtividadesMapper.class);
    PlanoAtividades toDiscenteCreateDocumento(PlanoAtividadesCreationDTO PlanoAtividadesCreationDTO, List<Optional<String>> atividades);
}
