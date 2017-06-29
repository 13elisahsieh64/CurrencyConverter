import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var poundLabel: UILabel!
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var pesoLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    let poundRate = 0.69
    let yenRate = 113.94
    let pesoRate = 0.056
    let euroRate = 0.89
  
    var dollarAmount = 0.0
    
    @IBAction func clearButton(_ sender: UIButton) {
        inputTextField.text = ""
        poundLabel.text = "0.00"
        yenLabel.text = "0.00"
        pesoLabel.text = "0.00"
        euroLabel.text = "0.00"
        
        
    }
    @IBAction func convertCurrency(_ sender: UIButton) {
        if let amount = Double(inputTextField.text!) {
            dollarAmount = amount
        }
        
        poundLabel.text = "\(dollarAmount * poundRate)"
       
        yenLabel.text = "\(dollarAmount * yenRate)"
        euroLabel.text = "\(dollarAmount * euroRate)"
        pesoLabel.text = "\(dollarAmount * pesoRate)"
        dollarAmount = 0.0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
         inputTextField.delegate = self
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}



