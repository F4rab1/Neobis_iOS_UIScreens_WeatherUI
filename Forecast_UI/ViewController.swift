//
//  ViewController.swift
//  Forecast_UI
//
//  Created by Фараби Иса on 01.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let geoImage: UIImage = {
        let image = UIImage()
        return image
    }()
    
    let cityButton: UIButton = {
        var button = UIButton()
        button.setTitle("Бишкек", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let notificationButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "bell.badge"), for: .normal)
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let sunImage: UIImageView = {
        let image = UIImageView()
        image.tintColor = .white
        image.image = UIImage(systemName: "sun.max.fill")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let squareView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGray
        view.layer.cornerRadius = 10
        view.backgroundColor = UIColor(red: 0x92, green: 0xca, blue: 0xfc)
        return view
    }()
    
    let labelDay: UILabel = {
        let label = UILabel()
        label.text = "Сегодня, 26 Апрель"
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let temperature: UILabel = {
        let label = UILabel()
        label.text = "22°"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 70)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Солнечно"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let windDescription: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let windImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "wind")
        image.tintColor = .white
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let windLabel: UILabel = {
        let label = UILabel()
        label.text = "Ветер |  15 km/h"
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let waterDescription: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let waterImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "drop")
        image.tintColor = .white
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let waterLabel: UILabel = {
        let label = UILabel()
        label.text = "Дождь |  26 %"
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let weekButton: UIButton = {
        let button = UIButton()
        button.setTitle("Прогноз на неделю", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(weekButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()
    }

    func setupViews() {
        view.backgroundColor = UIColor(red: 0x42, green: 0xa1, blue: 0xf5)
        
        view.addSubview(cityButton)
        view.addSubview(notificationButton)
        
        view.addSubview(sunImage)
        
        view.addSubview(squareView)
        squareView.addSubview(labelDay)
        squareView.addSubview(temperature)
        squareView.addSubview(descriptionLabel)
        windDescription.addArrangedSubview(windImage)
        windDescription.addArrangedSubview(windLabel)
        squareView.addSubview(windDescription)
        waterDescription.addArrangedSubview(waterImage)
        waterDescription.addArrangedSubview(waterLabel)
        squareView.addSubview(waterDescription)
        
        view.addSubview(weekButton)
    }
    
    @objc func weekButtonTapped() {
        let nextViewController = NextViewController()
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Назад", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem?.tintColor = .white
        navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            cityButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -20),
            cityButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            cityButton.widthAnchor.constraint(equalToConstant: 100),
            cityButton.heightAnchor.constraint(equalToConstant: 37),
            
            notificationButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -20),
            notificationButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            notificationButton.heightAnchor.constraint(equalToConstant: 37),
            
            sunImage.topAnchor.constraint(equalTo: cityButton.bottomAnchor, constant: 50),
            sunImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            sunImage.widthAnchor.constraint(equalToConstant: 90),
            sunImage.heightAnchor.constraint(equalToConstant: 90),
            
            squareView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            squareView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20),
            squareView.widthAnchor.constraint(equalToConstant: 300),
            squareView.heightAnchor.constraint(equalToConstant: 300),
            
            labelDay.topAnchor.constraint(equalTo: squareView.topAnchor, constant: 15),
            labelDay.centerXAnchor.constraint(equalTo: squareView.centerXAnchor),
            
            temperature.centerXAnchor.constraint(equalTo: squareView.centerXAnchor, constant: 5),
            temperature.topAnchor.constraint(equalTo: labelDay.bottomAnchor, constant: 13),
            
            descriptionLabel.centerXAnchor.constraint(equalTo: squareView.centerXAnchor),
            descriptionLabel.topAnchor.constraint(equalTo: temperature.bottomAnchor, constant: 5),
            
            windLabel.leadingAnchor.constraint(equalTo: windImage.trailingAnchor, constant: 8),
            
            windDescription.bottomAnchor.constraint(equalTo: waterDescription.topAnchor, constant: -15),
            windDescription.centerXAnchor.constraint(equalTo: squareView.centerXAnchor),
            
            waterLabel.leadingAnchor.constraint(equalTo: waterImage.trailingAnchor, constant: 8),
            
            waterDescription.bottomAnchor.constraint(equalTo: squareView.bottomAnchor, constant: -15),
            waterDescription.leadingAnchor.constraint(equalTo: windDescription.leadingAnchor, constant: 0),
            
            weekButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            weekButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            weekButton.widthAnchor.constraint(equalToConstant: 250),
            weekButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}



