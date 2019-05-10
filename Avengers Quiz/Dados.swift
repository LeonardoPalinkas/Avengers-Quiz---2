//
//  Dados.swift
//  Avengers Quiz
//
//  Created by leonardo palinkas on 10/05/19.
//  Copyright © 2019 leonardo palinkas. All rights reserved.
//

import Foundation


class DadosUltron{
    
    static var shared = DadosUltron()
    var perguntasUltron = [
    
        perguntaUltron (imgPergunta: "pergunta1", txtPergunta: "1. Durante o filme Vingadores (2009) quem foi o herói/heroína que ficou controlado(a) pelo deus da trapaça, Loki?", txtResposta: ["Capitão America", "Nick Fury", "Gavião Arqueiro", "Viuva Negra"], respostaCorreta: 2),
        
        perguntaUltron (imgPergunta: "pergunta2", txtPergunta: "2. O deus do trovão, Thor, possui uma arma magica, extremamente poderosa e que só pode ser erguida por quem é digno, qual o seu nome?", txtResposta:[ "Mjolnir", "Gungnir", "Wakanda", "Rompe Tormentas"], respostaCorreta: 0),
        
        perguntaUltron (imgPergunta: "pergunta3", txtPergunta: "3.Os vingadores, no primeiro filme, são unidos por uma agencia de espionagem e segurança nacional, seu nome é?", txtResposta:[ "H.A.M.M.E.R", "S.H.I.E.L.D", "S.T.O.R.M", "H.Y.D.R.A"], respostaCorreta: 1),
        
        perguntaUltron (imgPergunta: "peregunta4", txtPergunta: "4. Durante os eventos de Vingadores: Era de Ultron, os vingadores se unem ao androide super-poderoso chamado Visão, ele porta em sua testa uma das joias do infinito. Qual delas é?", txtResposta:[ "Joia da Alma", "Joia do Tempo", "Joia do Poder", "Joia da Mente"], respostaCorreta: 3),
        
        perguntaUltron (imgPergunta: "pergunta5", txtPergunta: "5. No final do filme dos Guardiões da Galáxia Vol. 1, o personagem Peter Quill, ou Senhor da Estrelas distrai o vilão do filme:", txtResposta:[ "Atirando nele", "Convidando ele para jogar pedra, papel ou tesoura", "Derrubando uma nave em cima dele", "Chamando ele para uma competição de dança"], respostaCorreta: 3),
        
        perguntaUltron (imgPergunta: "pergunta6", txtPergunta: "6. Stephen Strange, o Dr. Estranho se torna o defensor de uma das jóias do infinito após os acontecimentos de seu filme, qual esse joia?", txtResposta:[ "Joia da realidade", "Joia do espaço", "Joia do tempo", "Joia da alma"], respostaCorreta: 2),
        
        perguntaUltron (imgPergunta: "pergunta7", txtPergunta: "7. Tony Stark, o Homem de Ferro tem, dês de seu primeiro filme um(a) assistente de Inteligência artificial, tal assistente se torna um(a) vingador(a) no futuro, quais os nomes, respectivamente?", txtResposta:[ "Sexta-Feira / Visão", "Jarvis / Visão", "Jarvis / Ultron", " Sexta-Feira / Jarvis"], respostaCorreta: 1),
        
        perguntaUltron (imgPergunta: "pergunta8", txtPergunta: "8. Durante a Segunda guerra mundial, cientistas escolheram Steve Rogers, para se tornar o Capitão America. Para tal feito, eles injetaram uma substancia nele, junto com uma dose de radiação. Qual o nome das duas?", txtResposta:[ "Sangue do Hulk + raios gama", "Soro do super soldado + raios gama", "Partículas de Pinn + raios vita", "Soro do super soldado + raios vita"], respostaCorreta: 3),
        
        perguntaUltron (imgPergunta: "pergunta9", txtPergunta: "9. Natasha Romanoff e Clint Barton tem uma estória de anos juntos, tanto de espionagem como de guerras, uma que é sempre comentada por eles é o caso de?", txtResposta:[ "Budapeste", "Londres", "Bangladesh", "Moscow"], respostaCorreta: 0)
       
    ]
    
    var perguntaAtualUltron = 0
    
    func proximaPergunta(){
        if perguntaAtualUltron <= 7  {
            perguntaAtualUltron += 1
        } else  {
            perguntaAtualUltron = 0
            
        }
    }
    
    private init (){}
}
