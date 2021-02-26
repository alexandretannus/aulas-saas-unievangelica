package com.unievangelica.saas.aulas.base.domain.clube;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ClubeService {

    @Autowired
    private ClubeRepository clubeRepository;

    public Clube buscarOuFalhar(Long clubeId) {
        return clubeRepository.findById(clubeId).orElseThrow(
                () -> new RuntimeException(String.format("Não existe clube cadastrado com o código %d", clubeId)));
    }

}
