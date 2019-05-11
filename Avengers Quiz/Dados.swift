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


class DadosLoki{
    
    static var shared = DadosLoki()
    var perguntasLoki = [
        
        perguntaLoki (imgPergunta: "pergunta1-2", txtPergunta: "1. O Titã louco, Thanos, possui uma das armas mais poderosas jamais vistas no universo Marvel, ela tem a forca para suportar todas as joias do infinito. Seu nome é?", txtResposta: ["Manopla da Morte", "Manopla do Infinito", "Manopla Infinita", "Manoplas das Joias"], respostaCorreta: 1),
        
        perguntaLoki (imgPergunta: "pergunta2-2", txtPergunta: "2. Durante o filme da Capita Marvel, descobrimos que Carol Denvers ganham seus poderes após uma explosão gerada por uma experiencia feita com qual artefato?", txtResposta: ["O cetro de Loki", "O orbe do poder", "O Tesseract", "O reator Ark"], respostaCorreta: 2),
        
        perguntaLoki (imgPergunta: "pergunta3-2", txtPergunta: "3. Após um acidente ocorrido em Lagos, que matou dezenas de cidadãos de Wakanda, durante o filme Capitão America: Guerra Civil, o governo americano, junto à UNU decide regular as ações dos Vingadores a partir de um tratado, qual o seu nome? ", txtResposta: ["Tratado de Nova York", "Tratado de Sokovia", "Tratado de Super-Visão", "Tratado de Wakanda"], respostaCorreta: 1),
        
        perguntaLoki (imgPergunta: "pergunta4-2", txtPergunta: "4. Durante o filme Capitão America: Guerra civil, Steve Rogers e Petter Parker se enfrentam, em certo momento eles falam onde nasceram na cidade de Nova York, quais seus bairros de origem, respectivamente?", txtResposta: ["Manhattan / Queens", "Brooklyn / Queens", "Queens / Brooklyn", "Manhattan / Brooklyn"], respostaCorreta: 1),
        
        perguntaLoki (imgPergunta: "pergunta5-2", txtPergunta: "5. Durante o filme Vingadores: Guerra infinita, Thor, Rocket e Groot precisam encontrar um o planeta para criar uma arma possível de destruir Thanos, qual o nome do planeta e da arma, respectivamente? ", txtResposta: ["Sakaar / Gungnir", "Luganenhum / Rompe Tempestades", "Xandar / Nidavellir", "Nidavelir / Rompe Tormentas"], respostaCorreta: 3),
        
        perguntaLoki (imgPergunta: "pergunta6-2", txtPergunta: "6. Tony Stark, em Homem de Ferro 2, esta tendo uma intoxicação por conta de um elemento, que esta sendo expelido pelo Reator Ark do seu peito, em sua corrente sangüínea, qual esse elemento?", txtResposta: ["Uranio", "Ferro", "Paladio", "Plutônio"], respostaCorreta: 2),
        
        perguntaLoki (imgPergunta: "pergunta7-2", txtPergunta: "7. Petter Quill, o senhor das estrelas é extremamente fã da cultura pop dos anos 80, qual desses filmes ele considera uma obra prima?", txtResposta: ["Footlose", "Flash Gordon", "Flashdance", "Top Gun"], respostaCorreta: 0),
        
        perguntaLoki (imgPergunta: "pergunta8-2", txtPergunta: "8. Thanos tem diversos filhos bizarros, eles são leias ao titã louco que, em Guerra infinita manda-os atrás das joias, desses, quais vem á terra em busca da joia do tempo?", txtResposta: ["Nebulosa e Fauce de Ébano", "Corvus Glave e Cull Obsidian", "Fauce de Ébano e Cull Obsidian", "Fauce de Ébano e Próxima Meia noite"], respostaCorreta: 2),
        
        perguntaLoki (imgPergunta: "pergunta9-2", txtPergunta: "9. Tony Stark, em seu primeiro filme é preso por um grupo de terroristas que estão atras de suas tecnologias armamentistas, dentre elas um míssel, qual seu nome?", txtResposta: ["Jordania", "Jericó", "Messias", "Salomão"], respostaCorreta: 1),
        
        perguntaLoki (imgPergunta: "pergunta10-2", txtPergunta: "10. Loki, o deus da mentira é irmão adotivo de Thor. Foi encontrado por Odin durante a guerra contra os gigantes de gelo, o que torna Loki um deles, sabendo disso, quem é o verdadeiro pai de Loki?", txtResposta: ["Volstagg", "Eitri", "Jotunheim", "Laufey"], respostaCorreta: 3),
        
        
    ]
    
    var perguntaAtualLoki = 0
    
    func proximaPerguntaLoki(){
        if perguntaAtualLoki <= 8  {
            perguntaAtualLoki += 1
        } else  {
            perguntaAtualLoki = 0
            
        }
    }
    
    private init (){}
}


class DadosThanos{
    
    static var shared = DadosThanos()
    var perguntasThanos = [
        
        perguntaThanos (imgPergunta: "pergunta1", txtPergunta: "1. Durante o filme Vingadores (2009) quem foi o herói/heroína que ficou controlado(a) pelo deus da trapaça, Loki?", txtResposta: ["Capitão America", "Nick Fury", "Gavião Arqueiro", "Viuva Negra"], respostaCorreta: 2),
        
        perguntaThanos (imgPergunta: "pergunta1", txtPergunta: "1. Durante o filme Vingadores (2009) quem foi o herói/heroína que ficou controlado(a) pelo deus da trapaça, Loki?", txtResposta: ["Capitão America", "Nick Fury", "Gavião Arqueiro", "Viuva Negra"], respostaCorreta: 2),
        
        perguntaThanos (imgPergunta: "pergunta1", txtPergunta: "1. Durante o filme Vingadores (2009) quem foi o herói/heroína que ficou controlado(a) pelo deus da trapaça, Loki?", txtResposta: ["Capitão America", "Nick Fury", "Gavião Arqueiro", "Viuva Negra"], respostaCorreta: 2),
        
        perguntaThanos (imgPergunta: "pergunta1", txtPergunta: "1. Durante o filme Vingadores (2009) quem foi o herói/heroína que ficou controlado(a) pelo deus da trapaça, Loki?", txtResposta: ["Capitão America", "Nick Fury", "Gavião Arqueiro", "Viuva Negra"], respostaCorreta: 2),
        
        perguntaThanos (imgPergunta: "pergunta1", txtPergunta: "1. Durante o filme Vingadores (2009) quem foi o herói/heroína que ficou controlado(a) pelo deus da trapaça, Loki?", txtResposta: ["Capitão America", "Nick Fury", "Gavião Arqueiro", "Viuva Negra"], respostaCorreta: 2),
        
        perguntaThanos (imgPergunta: "pergunta1", txtPergunta: "1. Durante o filme Vingadores (2009) quem foi o herói/heroína que ficou controlado(a) pelo deus da trapaça, Loki?", txtResposta: ["Capitão America", "Nick Fury", "Gavião Arqueiro", "Viuva Negra"], respostaCorreta: 2),
        
        perguntaThanos (imgPergunta: "pergunta1", txtPergunta: "1. Durante o filme Vingadores (2009) quem foi o herói/heroína que ficou controlado(a) pelo deus da trapaça, Loki?", txtResposta: ["Capitão America", "Nick Fury", "Gavião Arqueiro", "Viuva Negra"], respostaCorreta: 2),
        
        perguntaThanos (imgPergunta: "pergunta1", txtPergunta: "1. Durante o filme Vingadores (2009) quem foi o herói/heroína que ficou controlado(a) pelo deus da trapaça, Loki?", txtResposta: ["Capitão America", "Nick Fury", "Gavião Arqueiro", "Viuva Negra"], respostaCorreta: 2),
        
        perguntaThanos (imgPergunta: "pergunta1", txtPergunta: "1. Durante o filme Vingadores (2009) quem foi o herói/heroína que ficou controlado(a) pelo deus da trapaça, Loki?", txtResposta: ["Capitão America", "Nick Fury", "Gavião Arqueiro", "Viuva Negra"], respostaCorreta: 2),
        
        perguntaThanos (imgPergunta: "pergunta1", txtPergunta: "1. Durante o filme Vingadores (2009) quem foi o herói/heroína que ficou controlado(a) pelo deus da trapaça, Loki?", txtResposta: ["Capitão America", "Nick Fury", "Gavião Arqueiro", "Viuva Negra"], respostaCorreta: 2),
        
        ]
    
    var perguntaAtualThanos = 0
    
    func proximaPerguntaThanos(){
        if perguntaAtualThanos <= 7  {
            perguntaAtualThanos += 1
        } else  {
            perguntaAtualThanos = 0
            
        }
    }
    
    private init (){}
}
