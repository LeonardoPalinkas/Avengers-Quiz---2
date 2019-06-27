//
//  Result2ViewController.swift
//  Avengers Quiz
//
//  Created by leonardo palinkas on 03/06/19.
//  Copyright © 2019 leonardo palinkas. All rights reserved.
//

import UIKit

class Result2ViewController: UIViewController {
 
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var acerto: UILabel!
    @IBOutlet weak var texto: UILabel!
    @IBOutlet weak var imgResult: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let resultadoFinal = DadosLoki.shared.resultado()
        total.text = String(resultadoFinal.total)
        acerto.text = String(resultadoFinal.acertos)
        
        
        if resultadoFinal.acertos <= 4{
            return baixo()
        }
        
        if resultadoFinal.acertos <= 8{
            return medio()
        }
        
        if resultadoFinal.acertos >= 9{
            return alto()
        }
       
    }
    
    func baixo(){
        texto.text = String("Loki, ou melhor, O Rei De Midgard agora comanda a Terra com mãos de ferro, depois da derrota em Nova York, os Vingadores nunca mais foram vistos…")
        imgResult.image = UIImage(named: "fundo Loki 1")
    }
    
    func medio(){
        texto.text = String("Após uma batalha enorme em Nova York, o Deus da Trapaça é derrotado e os Vingadores saem vitoriosos!")
        imgResult.image = UIImage(named: "fundo Loki 2")
    }
    
    func alto(){
        texto.text = String("Loki, como um bom anti-herói se alia ao Vingadores para derrotar um inimigo maior, no final das contas, talvez Loki não seja realmente mal.")
        imgResult.image = UIImage(named: "fundo Loki 3")
    }
    
    @IBAction func Reset(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
        DadosLoki.shared.perguntaAtualLoki = 0
        DadosLoki.shared.numeroRespondidoCorretamente = 0
    }
    
}
