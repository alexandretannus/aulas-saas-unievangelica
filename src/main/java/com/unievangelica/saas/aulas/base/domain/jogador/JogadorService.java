package com.unievangelica.saas.aulas.base.domain.jogador;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class JogadorService {

    @Autowired
    private JogadorRepository jogadorRepository;

    public Jogador buscarOuFalhar(Long jogadorId) {
        return jogadorRepository.findById(jogadorId).orElseThrow(
                () -> new RuntimeException(String.format("Não existe jogador cadastrado com o código %d", jogadorId)));
    }
}
