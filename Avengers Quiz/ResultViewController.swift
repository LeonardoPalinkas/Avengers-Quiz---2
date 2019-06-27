//
//  ResultViewController.swift
//  Avengers Quiz
//
//  Created by leonardo palinkas on 03/06/19.
//  Copyright © 2019 leonardo palinkas. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var acerto: UILabel!
    @IBOutlet weak var texto: UILabel!
    @IBOutlet weak var imgResult: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let resultadoFinal = DadosUltron.shared.resultado()
        total.text = String(resultadoFinal.total)
        acerto.text = String(resultadoFinal.acertos)
        
        
       if resultadoFinal.acertos <= 3{
        return baixo()
        }
        
        if resultadoFinal.acertos <= 7{
            return medio()
        }
        
        if resultadoFinal.acertos >= 8{
            return alto()
        }
        
//        if resultadoFinal.acertos <= 5{
//           return baixo()
//        } else {
//            return alto()
//        }
 }
    
    func baixo(){
        texto.text = String("Ultron completou seu plano, Sokovia agora é uma cratera, a Terra esta sendo consumida por fogo e seu rei esta agora sentado em seu trono de cinzas, feito com os Vingadores…")
        imgResult.image = UIImage(named: "fundo Ultron 1")
    }
    
    func medio(){
        texto.text = String("A batalha foi mortal, houveram algumas baixas para derrotar o Robo Vivo, mas no final, ele foi eliminado da Terra… pelo menos é o que parece.")
         imgResult.image = UIImage(named: "fundo Ultron 2")
    }
    
    func alto(){
        texto.text = String("Ultron não teve chances contra os Vingadores, agora com novos aliados, o robô foi derrotado e a a Terra estava segura mais uma vez!")
         imgResult.image = UIImage(named: "fundo Ultron 3")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func Reset(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
        DadosUltron.shared.perguntaAtualUltron = 0
        DadosUltron.shared.numeroRespondidoCorretamente = 0
    }
    
}
