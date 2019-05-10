//
//  Pergunta.swift
//  Avengers Quiz
//
//  Created by leonardo palinkas on 10/05/19.
//  Copyright © 2019 leonardo palinkas. All rights reserved.
//

import Foundation

class perguntaUltron {
    internal init(imgPergunta: String, txtPergunta: String, txtResposta: [String], respostaCorreta: Int) {
        self.imgPergunta = imgPergunta
        self.txtPergunta = txtPergunta
        self.txtResposta = txtResposta
        self.respostaCorreta = respostaCorreta
    }
    
    var imgPergunta: String
    var txtPergunta: String
    var txtResposta: [String]
    var respostaCorreta:Int
    




}
