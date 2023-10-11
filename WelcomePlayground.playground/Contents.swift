import UIKit
import PlaygroundSupport

class MyViewController: UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Welcome"
        label.textColor = .black
        
        let button = UIButton()
        button.frame = CGRect(x: 90, y: 300, width: 200, height: 50)
        button.backgroundColor = .purple
        button.tintColor = .white
        // Establece el texto del botón
        button.setTitle("Start", for: .normal)
        
        
        view.addSubview(label)
        view.addSubview(button)
        self.view = view
    }
}

PlaygroundPage.current.liveView = MyViewController()
