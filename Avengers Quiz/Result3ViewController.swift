//
//  Result3ViewController.swift
//  Avengers Quiz
//
//  Created by leonardo palinkas on 03/06/19.
//  Copyright © 2019 leonardo palinkas. All rights reserved.
//

import UIKit

class Result3ViewController: UIViewController {

    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var acerto: UILabel!
    @IBOutlet weak var texto: UILabel!
    @IBOutlet weak var imgResult: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let resultadoFinal = DadosThanos.shared.resultado()
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
        texto.text = String("Thanos cumpriu o que disse que faria, limpou metade da vida do universo… Agora teremos que viver sabendo que fomos derrotados…")
        imgResult.image = UIImage(named: "fundo Thanos 1")
    }
    
    func medio(){
        texto.text = String("Thanos deu uma chance para que os seres vivessem um tempo de prosperidade e paz, mas todos no universo são ingratos, essa vingança não valerá o esforço, dessa vez Thanos não será benevolente.")
        imgResult.image = UIImage(named: "fundo Thanos 2")
    }
    
    func alto(){
        texto.text = String("O plano da viagem no tempo deu certo, após um batalha mortal Tony vê que a única possibilidade dentro das 14 milhões é essa… e suas ultimas palavras são: Eu sou o Homem de Ferro!")
        imgResult.image = UIImage(named: "fundo Thanos 3")
    }
    
    @IBAction func Reset(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
            DadosThanos.shared.perguntaAtualThanos = 0
        DadosThanos.shared.numeroRespondidoCorretamente = 0
    }
    
}
