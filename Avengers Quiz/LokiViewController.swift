
import UIKit

class LokiViewController: UIViewController {
    @IBOutlet weak var imgPergunta1: UIImageView!
    @IBOutlet weak var txtPergunta1: UILabel!
    @IBOutlet weak var proximaPergunta1: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet var button: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        let perguntaAtual = DadosLoki.shared.perguntasLoki[DadosLoki.shared.perguntaAtualLoki]
        imgPergunta1.image = UIImage(named: perguntaAtual.imgPergunta)
        txtPergunta1.text = perguntaAtual.txtPergunta
        
        button1.setTitle(perguntaAtual.txtResposta[0], for: .normal)
        button2.setTitle(perguntaAtual.txtResposta[1], for: .normal)
        button3.setTitle(perguntaAtual.txtResposta[2], for: .normal)
        button4.setTitle(perguntaAtual.txtResposta[3], for: .normal)
        
       
        
    }
    
    @IBAction func respostaPressed(_ sender: UIButton) {
        
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
        
    }
    
    @IBAction func proximaPergunta(_ sender: Any) {
        DadosLoki.shared.proximaPerguntaLoki()
        
    }
}
