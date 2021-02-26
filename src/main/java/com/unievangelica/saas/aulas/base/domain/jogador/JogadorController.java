package com.unievangelica.saas.aulas.base.domain.jogador;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/jogadores")
public class JogadorController {

    @Autowired
    private JogadorRepository jogadorRepository;

    @Autowired
    private JogadorService jogadorService;

    @GetMapping
    public List<Jogador> listar() {
        return jogadorRepository.findAll();
    }

    @GetMapping("{jogadorId}")
    public Jogador buscar(@PathVariable("jogadorId") Long id) {
        return jogadorService.buscarOuFalhar(id);
    }

    @DeleteMapping("{jogadorId}")
    public void excluir(@PathVariable("jogadorId") Long id) {
        jogadorRepository.deleteById(id);
    }
}
