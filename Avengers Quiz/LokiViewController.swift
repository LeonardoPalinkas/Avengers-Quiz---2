
import UIKit
import AVFoundation

class LokiViewController: UIViewController {
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
        let perguntaAtual = DadosLoki.shared.perguntasLoki[0]
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
            b.backgroundColor = #colorLiteral(red: 0.4070134759, green: 0.5456842184, blue: 0.4997940063, alpha: 1)
        }
        
    }
    
    @IBAction func respostaPressed(_ sender: UIButton) {
        
        if !respondido{
            let perguntaAtual = DadosLoki.shared.perguntasLoki[DadosLoki.shared.perguntaAtualLoki]
            
            
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
            DadosLoki.shared.respondeu(pergunta: perguntaAtual, resposta: sender.tag)
            print(DadosLoki.shared.resultado())
            
        }
    }
    
    @IBAction func proximaPergunta(_ sender: Any) {
        //     DadosUltron.shared.proximaPergunta()
        let numeroDePerguntas = DadosLoki.shared.perguntasLoki.count - 1
        
        if DadosLoki.shared.perguntaAtualLoki >= numeroDePerguntas {
            if let vC =
        storyboard?.instantiateViewController(withIdentifier: "result2") as? Result2ViewController{
                self.navigationController?.show (vC, sender: self)
            }
            
        } else{
            DadosLoki.shared.proximaPergunta()
            respondido = false
            
            let perguntaAtual = DadosLoki.shared.perguntasLoki[DadosLoki.shared.perguntaAtualLoki]
            imgPergunta1.image = UIImage(named: perguntaAtual.imgPergunta)
            txtPergunta1.text = perguntaAtual.txtPergunta
            
            button1.setTitle(perguntaAtual.txtResposta[0], for: .normal)
            button2.setTitle(perguntaAtual.txtResposta[1], for: .normal)
            button3.setTitle(perguntaAtual.txtResposta[2], for: .normal)
            button4.setTitle(perguntaAtual.txtResposta[3], for: .normal)
            
            proximaPergunta1.alpha = 0
            proximaPergunta1.isEnabled = false
            
            for b in self.button {
                b.backgroundColor = #colorLiteral(red: 0.4070134759, green: 0.5456842184, blue: 0.4997940063, alpha: 1)
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
