package com.unievangelica.saas.aulas.base.domain.clube;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/clubes")
public class ClubeController {

    @Autowired
    private ClubeRepository clubeRepository;

    @Autowired
    private ClubeService clubeService;

    @GetMapping
    public List<Clube> listar() {
        return clubeRepository.findAll();
    }

    @GetMapping("{clubeId}")
    public Clube buscar(@PathVariable("clubeId") Long id) {
        return clubeService.buscarOuFalhar(id);
    }

    @DeleteMapping("{clubeId}")
    public void excluir(@PathVariable("clubeId") Long id) {
        clubeRepository.deleteById(id);
    }
}
