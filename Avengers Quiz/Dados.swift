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
        
        perguntaUltron (imgPergunta: "pergunta5", txtPergunta: "5. No final do filme dos Guardiões da Galáxia Vol. 1, Peter Quill distrai o vilão do filme com um/uma?", txtResposta:[ "Tiro", "Mágica", "Grito", "Dança"], respostaCorreta: 3),
        
        perguntaUltron (imgPergunta: "pergunta6", txtPergunta: "6. Stephen Strange, o Dr. Estranho se torna o defensor de uma das jóias do infinito após os acontecimentos de seu filme, qual esse joia?", txtResposta:[ "Joia da realidade", "Joia do espaço", "Joia do tempo", "Joia da alma"], respostaCorreta: 2),
        
        perguntaUltron (imgPergunta: "pergunta7", txtPergunta: "7. Tony Stark, o Homem de Ferro tem, desde seu primeiro filme um(a) assistente de Inteligência artificial, tal assistente se torna um(a) vingador(a) no futuro, quais os nomes, respectivamente?", txtResposta:[ "Sexta-Feira/Visão", "Jarvis/Visão", "Jarvis/Ultron", " Sexta-Feira/Jarvis"], respostaCorreta: 1),
        
        perguntaUltron (imgPergunta: "pergunta8", txtPergunta: "8. Cientistas escolheram Steve Rogers para se tornar o Capitão America. Para isso, eles injetaram uma substancia nele, junto com uma dose de radiação. Qual o nome das duas?", txtResposta:[ "Sangue do Hulk + raios gama", "Soro do super soldado + raios gama", "Partículas de Pinn + raios vita", "Soro do super soldado + raios vita"], respostaCorreta: 3),
        
        perguntaUltron (imgPergunta: "pergunta9", txtPergunta: "9. Natasha Romanoff e Clint Barton tem uma estória de anos juntos, tanto de espionagem como de guerras, uma que é sempre comentada por eles é o caso de?", txtResposta:[ "Budapeste", "Londres", "Bangladesh", "Moscow"], respostaCorreta: 0)
       
    ]
    
    var perguntaAtualUltron = 0
    var numeroRespondidoCorretamente = 0
    
    func respondeu(pergunta:perguntaUltron, resposta:Int){
        if pergunta.respostaCorreta == resposta{
            numeroRespondidoCorretamente += 1
        }
    }

    func resultado() -> (acertos:Int,  total:Int){

        return (acertos: numeroRespondidoCorretamente, total: perguntasUltron.count)
    }
    
    func proximaPergunta(){
        if perguntaAtualUltron <= 7  {
            perguntaAtualUltron += 1
        }
    }
    
    private init (){}
}


class DadosLoki{
    
    static var shared = DadosLoki()
    var perguntasLoki = [
        
        perguntaLoki (imgPergunta: "pergunta1-2", txtPergunta: "1. O Titã louco, Thanos, possui uma das armas mais poderosas jamais vistas no universo Marvel, ela tem a forca para suportar todas as joias do infinito. Seu nome é?", txtResposta: ["Manopla da Morte", "Manopla do Infinito", "Manopla Infinita", "Manoplas das Joias"], respostaCorreta: 1),
        
        perguntaLoki (imgPergunta: "pergunta2-2", txtPergunta: "2. Durante o filme da Capita Marvel, descobrimos que Carol Denvers ganham seus poderes após uma explosão gerada por uma experiencia feita com qual artefato?", txtResposta: ["O cetro de Loki", "O orbe do poder", "O Tesseract", "O reator Ark"], respostaCorreta: 2),
        
        perguntaLoki (imgPergunta: "pergunta3-2", txtPergunta: "3. Após um acidente que matou dezenas de cidadãos de Wakanda, em Capitão America: Guerra Civil, o governo americano junto à UNU decide regular as ações dos Vingadores a partir de um tratado, qual o seu nome?", txtResposta: ["Tratado de Nova York", "Tratado de Sokovia", "Tratado de Super-Visão", "Tratado de Wakanda"], respostaCorreta: 1),
        
        perguntaLoki (imgPergunta: "pergunta4-2", txtPergunta: "4. Durante o filme Capitão America: Guerra civil, Steve Rogers e Peter Parker se enfrentam, em certo momento eles falam onde nasceram na cidade de Nova York. Quais seus bairros de origem, respectivamente?", txtResposta: ["Manhattan/Queens", "Brooklyn/Queens", "Queens/Brooklyn", "Manhattan/Brooklyn"], respostaCorreta: 1),
        
        perguntaLoki (imgPergunta: "pergunta5-2", txtPergunta: "5. Durante o filme Vingadores: Guerra infinita, Thor, Rocket e Groot precisam encontrar um planeta para criar uma arma que poderia destruir Thanos. Qual o nome do planeta e da arma, respectivamente? ", txtResposta: ["Sakaar / Gungnir", "Luganenhum / Rompe Tempestades", "Xandar / Nidavellir", "Nidavelir / Rompe Tormentas"], respostaCorreta: 3),
        
        perguntaLoki (imgPergunta: "pergunta6-2", txtPergunta: "6. Tony Stark, em Homem de Ferro 2, esta tendo uma intoxicação por conta de um elemento que esta sendo expelido pelo Reator Ark na sua corrente sanguínea, qual esse elemento?", txtResposta: ["Uranio", "Ferro", "Paladio", "Plutônio"], respostaCorreta: 2),
        
        perguntaLoki (imgPergunta: "pergunta7-2", txtPergunta: "7. Peter Quill, o senhor das estrelas é extremamente fã da cultura pop dos anos 80, qual desses filmes ele considera uma obra prima?", txtResposta: ["Footlose", "Flash Gordon", "Flashdance", "Top Gun"], respostaCorreta: 0),
        
        perguntaLoki (imgPergunta: "pergunta8-2", txtPergunta: "8. Thanos tem diversos filhos bizarros, eles são leais ao Titã louco que em Guerra infinita manda-os atrás das joias, desses, quais vem á Terra em busca da joia do tempo?", txtResposta: ["Nebulosa/Fauce de Ébano", "Corvus Glave/Cull Obsidian", "Fauce de Ébano/Cull Obsidian", "Fauce de Ébano/Próxima Meia noite"], respostaCorreta: 2),
        
        perguntaLoki (imgPergunta: "pergunta9-2", txtPergunta: "9. Tony Stark, em seu primeiro filme é preso por um grupo de terroristas que estão atras de suas tecnologias armamentistas, dentre elas um míssel, qual seu nome?", txtResposta: ["Jordania", "Jericó", "Messias", "Salomão"], respostaCorreta: 1),
        
        perguntaLoki (imgPergunta: "pergunta10-2", txtPergunta: "10. Loki, o Deus da mentira é irmão adotivo de Thor. Foi encontrado por Odin durante a guerra contra os gigantes de gelo, o que torna Loki um deles. Sabendo disso, quem é o verdadeiro pai de Loki?", txtResposta: ["Volstagg", "Eitri", "Jotunheim", "Laufey"], respostaCorreta: 3),
        
        
    ]
    
    var perguntaAtualLoki = 0
    var numeroRespondidoCorretamente = 0
    
    func respondeu(pergunta:perguntaLoki, resposta:Int){
        if pergunta.respostaCorreta == resposta{
            numeroRespondidoCorretamente += 1
        }
    }
    
    func resultado() -> (acertos:Int,  total:Int){
        
        return (acertos: numeroRespondidoCorretamente, total: perguntasLoki.count)
    }
    
    func proximaPergunta(){
        if perguntaAtualLoki <= 8  {
            perguntaAtualLoki += 1
        }
    }
    
    private init (){}
}


class DadosThanos{
    
    static var shared = DadosThanos()
    var perguntasThanos = [
        
        perguntaThanos (imgPergunta: "pergunta1-3", txtPergunta: "1. Petter Quill é meio humano, sua mãe é humana e seu pai é um planeta vivo chamado Ego, ele tem milhões de anos e faz parte de um grupo de seres chamados?", txtResposta: ["Imortais", "Celestiais", "Divinos", "Etéreos"], respostaCorreta: 1),
        
        perguntaThanos (imgPergunta: "pergunta2-3", txtPergunta: "2. Durante o filme Pantera Negra, quando T’Challa toma a planta coração para receber os poderes do pantera, ele vai para um plano astral onde encontra-se com seu pai, qual o nome desse local?", txtResposta: ["Vahalha", "Wahajila", "Djalia", "Vormir"], respostaCorreta: 2),
        
        perguntaThanos (imgPergunta: "pergunta3-3", txtPergunta: "3. Stephen Strange, durante seu treinamento, aprende a abrir portais por meio de um artefato místic. Qual o nome do artefato?", txtResposta: ["Anel de Agamotto", "Anel dos Portais", "Anel de Tranporte", "Anel de Acesso"], respostaCorreta: 3),
        
        perguntaThanos (imgPergunta: "pergunta4-3", txtPergunta: "4. No filme Vingadores: Ultimato existem referências claras a acontecimentos ou cenas icônicas dos quadrinhos, desses, qual nunca apareceu em uma HQ?", txtResposta: ["O espantalho com a armadura de Thanos", "Capitão América dizendo Hail Hydra", "O capacete classico do Homem-Formiga", "A manopla de Ferro"], respostaCorreta: 3),
        
        perguntaThanos (imgPergunta: "pergunta5-3", txtPergunta: "5. Durante Thor: Ragnarok, uma das cenas em Sakaar mostra um prédio enorme, lar do Grão Mestre, na fachada desse prédio é possível ver diversos rostos, incluido o rosto do Hulk. Qual desses personagens não aparecem nesse prédio?", txtResposta: ["Ares", "Adam Warlock","Bill Raio Beta","Bi-Fera"], respostaCorreta: 1),
        
        perguntaThanos (imgPergunta: "pergunta6-3", txtPergunta: "6. Na Marvel, existem diversas realidades e dimensões, destas a Terra que acompanhamos no Universo Marvel dos cinemas é a Terra?", txtResposta: ["1543", "2019", "51", "616"], respostaCorreta: 3),
        
        perguntaThanos (imgPergunta: "pergunta7-3", txtPergunta: "7. Em homem de Ferro 3, Tony Stark é auxiliado tanto tecnicamente quanto emocionalmente por um garoto que mora em uma pequena cidade interiorana, qual o nome dele?", txtResposta: ["Harley", "Henley", "Steve","Stan"], respostaCorreta: 0),
        
        perguntaThanos (imgPergunta: "pergunta8-3", txtPergunta: "8. O caveira vermelha, no primeiro filme do Capitão America, encontra o Tesseract em uma pequena cidade, qual o seu nome?", txtResposta: ["Nuremberg","Jotunsberg","Tonsberg","Vindemberg"], respostaCorreta: 2),
        
        perguntaThanos (imgPergunta: "pergunta9-3", txtPergunta: "9. Nos quadrinhos, os guardiões da Galaxia não foram sempre liderados por Petter Quill, sua primeira formação era comandada por?", txtResposta: ["Rocket", "Mantis","Nebulosa", "Yondu"], respostaCorreta: 3),
        
        perguntaThanos (imgPergunta: "pergunta10-3", txtPergunta: "10. Homem de ferro ja teve dezenas de armaduras, destas, qual foi utilizada para enfrentar Ultron?", txtResposta: ["Mark 45", "Mark 42", "Mark 50", "Mark 47"], respostaCorreta: 0),
        
        ]
    
    var perguntaAtualThanos = 0
    var numeroRespondidoCorretamente = 0
    
    func respondeu(pergunta:perguntaThanos, resposta:Int){
        if pergunta.respostaCorreta == resposta{
            numeroRespondidoCorretamente += 1
        }
    }
    
    func resultado() -> (acertos:Int,  total:Int){
        
        return (acertos: numeroRespondidoCorretamente, total: perguntasThanos.count)
    }
    
    func proximaPergunta(){
        if perguntaAtualThanos <= 8  {
            perguntaAtualThanos += 1
        }
    }
    
    private init (){}
}
