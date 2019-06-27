
import UIKit

class ThanosViewController: UIViewController {
    @IBOutlet weak var imgPergunta1: UIImageView!
    @IBOutlet weak var txtPergunta1: UILabel!
    @IBOutlet weak var proximaPergunta1: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet var button: [UIButton]!
    var respondido:  Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let perguntaAtual = DadosThanos.shared.perguntasThanos[0]
        imgPergunta1.image = UIImage(named: perguntaAtual.imgPergunta)
        txtPergunta1.text = perguntaAtual.txtPergunta
        
        button1.setTitle(perguntaAtual.txtResposta[0], for: .normal)
        button2.setTitle(perguntaAtual.txtResposta[1], for: .normal)
        button3.setTitle(perguntaAtual.txtResposta[2], for: .normal)
        button4.setTitle(perguntaAtual.txtResposta[3], for: .normal)
        
        respondido = false
        
        proximaPergunta1.alpha = 0
        proximaPergunta1.isEnabled = false
        
        for b in self.button {
            b.backgroundColor = #colorLiteral(red: 0.5237244964, green: 0.4721877575, blue: 0.6981083751, alpha: 1)
        }
        
    }
    
    @IBAction func respostaPressed(_ sender: UIButton) {
        
        if !respondido{
            let perguntaAtual = DadosThanos.shared.perguntasThanos[DadosThanos.shared.perguntaAtualThanos]
            
            
            for b in self.button {
                if b.tag == perguntaAtual.respostaCorreta {
                    b.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
                }
                else {
                    b.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
                }
            }
            
            if sender.tag != perguntaAtual.respostaCorreta {
                sender.backgroundColor = #colorLiteral(red: 0.7643429637, green: 0.2773319483, blue: 0.2763116658, alpha: 1)
            }
            
            proximaPergunta1.alpha = 1
            proximaPergunta1.isEnabled = true
            respondido = true
            DadosThanos.shared.respondeu(pergunta: perguntaAtual, resposta: sender.tag)
            print(DadosThanos.shared.resultado())
            
        }
    }
    
    @IBAction func proximaPergunta(_ sender: Any) {
        //     DadosUltron.shared.proximaPergunta()
        let numeroDePerguntas = DadosThanos.shared.perguntasThanos.count - 1
        
        if DadosThanos.shared.perguntaAtualThanos >= numeroDePerguntas {
            if let vC =
                storyboard?.instantiateViewController(withIdentifier: "result3") as? Result3ViewController{
                self.navigationController?.show (vC, sender: self)
            }
            
        } else{
            DadosThanos.shared.proximaPergunta()
            respondido = false
            
            let perguntaAtual = DadosThanos.shared.perguntasThanos[DadosThanos.shared.perguntaAtualThanos]
            imgPergunta1.image = UIImage(named: perguntaAtual.imgPergunta)
            txtPergunta1.text = perguntaAtual.txtPergunta
            
            button1.setTitle(perguntaAtual.txtResposta[0], for: .normal)
            button2.setTitle(perguntaAtual.txtResposta[1], for: .normal)
            button3.setTitle(perguntaAtual.txtResposta[2], for: .normal)
            button4.setTitle(perguntaAtual.txtResposta[3], for: .normal)
            
            proximaPergunta1.alpha = 0
            proximaPergunta1.isEnabled = false
            
            for b in self.button {
                b.backgroundColor = #colorLiteral(red: 0.5237244964, green: 0.4721877575, blue: 0.6981083751, alpha: 1)
            }
            
            
        }
    }
    
}




//
//        1 - SE FOR ULTIMA PERGUNTA
//        2 - ENTAO APRESENTA A TELA DE R ESPOSTAS
//        3 - CASO CONTRARIO
//        4 - REPOPULA A VIEW COM A PROXIMA PERGUNTA.
//            - RESETAR AS COISAS VISUAIS PARA O ESTADO ORIGINAL
//            - SUBSTITUIR TITULOS DOS BOTOES
//            - ATUALIZAR A PROPRIEDADE PERGUNTAATUAL PARA A NOVA PERGUNTA ATUAL
//             perguntaAtual = Dados
