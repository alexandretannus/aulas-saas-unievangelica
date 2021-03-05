package com.unievangelica.saas.aulas.base.domain.permissao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PermissaoService {

    @Autowired
    private PermissaoRepository permissaoRepository;

    public Permissao buscarOuFalhar(Long permissaoId) {
        return permissaoRepository.findById(permissaoId).orElseThrow(() -> new RuntimeException(
                String.format("Não existe permissão cadastrada com o código %d", permissaoId)));
    }
}
