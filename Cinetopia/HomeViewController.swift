//
//  ViewController.swift
//  Cinetopia
//
//  Created by Igor Santana on 29/12/23.
//

import UIKit

class HomeViewController: UIViewController {

    private lazy var logoImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "Logo"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    
    
    private lazy var coupleImageView: UIImageView = {
        let coupleImageView = UIImageView(image: UIImage(named: "Couple"))
        coupleImageView.translatesAutoresizingMaskIntoConstraints = false
        coupleImageView.contentMode = .scaleAspectFit
        return coupleImageView
    }()
    
    
    private lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "O lugar ideal para buscar, salvar e organizar seus filmes favoritos!"
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    
    private lazy var welcomeButton : UIButton = {
        let button = UIButton( )
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Quero começar!!", for: .normal)
        button.backgroundColor = UIColor(named: "ButtonBackgroundColor")
        button.layer.cornerRadius = 5
        button.setTitleColor(UIColor(named: "Background"), for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        // adicionando uma função ao botão
        //self é o objeto que vai chamar uma função x que vai ter a funcionalidade de fazer algo quando o botão for tocado
        // self representa a HOMEVIEWCONTROLLER pois é ela quem vai captar o toque
        //for é um tipo de evento
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return button
    }()
    
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [logoImageView,coupleImageView,welcomeLabel,welcomeButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        //stackView.backgroundColor = .blue
        stackView.axis = .vertical
        stackView.spacing = 32
        stackView.alignment = .center
        return stackView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor(named: "BackgroundColor")
        
        
        addLabel()
        setupConstrains()
        
    }
    
    
    @objc private func buttonPressed() {
        print("botão pressionado")
        
        navigationController?.pushViewController(MoviesViewController(), animated: true)
    }
    
    
  
    
    
  private  func addLabel(){
      view.addSubview(stackView)
    }
    
    
   private func setupConstrains(){
        NSLayoutConstraint.activate([
            
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -64),
            
            welcomeButton.heightAnchor.constraint(equalToConstant: 50),
            welcomeButton.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 64),
            welcomeButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -64)

            /*logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            coupleImageView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 32),
            coupleImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            welcomeLabel.topAnchor.constraint(equalTo: coupleImageView.bottomAnchor, constant: 32),
            welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            welcomeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            welcomeButton.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 32),
            welcomeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            welcomeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            welcomeButton.heightAnchor.constraint(equalToConstant: 50)*/
            
            
        ])
    }
}

