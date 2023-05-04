//
//  NextViewController.swift
//  Forecast_UI
//
//  Created by Фараби Иса on 03.05.2023.
//

import UIKit

class NextViewController: UIViewController {
    
    let settings: UIButton = {
        var button = UIButton()
        button.setImage(UIImage(systemName: "gearshape"), for: .normal)
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let todayLabel: UILabel = {
        let label = UILabel()
        label.text = "Сегодня"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let dateLabel: UILabel = {
        let label = UILabel()
        label.text = "Апр, 26"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // Today's wethear info ------------
    
    let todayDetails: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let element1StackView: UIStackView = {
        let element = UIStackView()
        element.axis = .vertical
        element.alignment = .center
        element.distribution = .equalSpacing
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    let temp1Label: UILabel = {
        let label = UILabel()
        label.text = "29 C"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let cloud1ImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "cloud.sun.fill")
        image.tintColor = .white
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let time1Label: UILabel = {
        let label = UILabel()
        label.text = "15:00"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let element2StackView: UIStackView = {
        let element = UIStackView()
        element.axis = .vertical
        element.alignment = .center
        element.distribution = .equalSpacing
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    let temp2Label: UILabel = {
        let label = UILabel()
        label.text = "26 C"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let cloud2ImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "cloud.sun.fill")
        image.tintColor = .white
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let time2Label: UILabel = {
        let label = UILabel()
        label.text = "16:00"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let element3StackView: UIStackView = {
        let element = UIStackView()
        element.axis = .vertical
        element.alignment = .center
        element.distribution = .equalSpacing
        element.spacing = 20
        element.backgroundColor = UIColor(red: 0x7e, green: 0xca, blue: 0xfc)
        element.layer.cornerRadius = 10
        element.layer.masksToBounds = true
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    let temp3Label: UILabel = {
        let label = UILabel()
        label.text = "24 C"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let cloud3ImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "cloud.fill")
        image.tintColor = .white
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let time3Label: UILabel = {
        let label = UILabel()
        label.text = "17:00"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let element4StackView: UIStackView = {
        let element = UIStackView()
        element.axis = .vertical
        element.alignment = .center
        element.distribution = .equalSpacing
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    let temp4Label: UILabel = {
        let label = UILabel()
        label.text = "23 C"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let cloud4ImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "cloud.sun.fill")
        image.tintColor = .white
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let time4Label: UILabel = {
        let label = UILabel()
        label.text = "18:00"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let element5StackView: UIStackView = {
        let element = UIStackView()
        element.axis = .vertical
        element.alignment = .center
        element.distribution = .equalSpacing
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    let temp5Label: UILabel = {
        let label = UILabel()
        label.text = "22 C"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let cloud5ImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "cloud.sun.fill")
        image.tintColor = .white
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let time5Label: UILabel = {
        let label = UILabel()
        label.text = "19:00"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //------------
    
    let bottomStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 20
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let sunImage: UIImageView = {
        let image = UIImageView()
        image.tintColor = .white
        image.image = UIImage(systemName: "sun.max.fill")
        return image
    }()
    
    let weeklabel: UILabel = {
        let label = UILabel()
        label.text = "На этой неделе"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let weekImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "calendar")
        image.tintColor = .white
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let tableView = UITableView()
    let cellReuseIdentifier = "cell"
    let days = ["Апр,27", "Апр,28", "Апр,29", "Апр,30", "Май,1", "Май,2", "Май,3", "Май,4", "Май,5", "Май,6"]
    let images = [UIImage(systemName: "cloud.bolt.fill"), UIImage(systemName: "cloud.rain.fill"), UIImage(systemName: "sun.max.fill"), UIImage(systemName: "cloud.fill"), UIImage(systemName: "cloud.sun.fill")]
    let temperatures = ["21°", "22°", "34°", "27°", "32°", "28°", "25°", "27°", "25°", "25°"]
    
    let bottomLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "AccuWeather"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        tableView.backgroundColor = UIColor(red: 0x42, green: 0xa1, blue: 0xf5)
        tableView.rowHeight = 60
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        setupView()
        setupConstraints()
    }
    
    func setupView() {
        view.backgroundColor = UIColor(red: 0x42, green: 0xa1, blue: 0xf5)
        
        let customBarButtonItem = UIBarButtonItem(customView: settings)
        navigationItem.rightBarButtonItem = customBarButtonItem
        
        view.addSubview(todayLabel)
        view.addSubview(dateLabel)
        
        element1StackView.addArrangedSubview(temp1Label)
        element1StackView.addArrangedSubview(cloud1ImageView)
        element1StackView.addArrangedSubview(time1Label)
        todayDetails.addArrangedSubview(element1StackView)
        element2StackView.addArrangedSubview(temp2Label)
        element2StackView.addArrangedSubview(cloud2ImageView)
        element2StackView.addArrangedSubview(time2Label)
        todayDetails.addArrangedSubview(element2StackView)
        element3StackView.addArrangedSubview(temp3Label)
        element3StackView.addArrangedSubview(cloud3ImageView)
        element3StackView.addArrangedSubview(time3Label)
        todayDetails.addArrangedSubview(element3StackView)
        element4StackView.addArrangedSubview(temp4Label)
        element4StackView.addArrangedSubview(cloud4ImageView)
        element4StackView.addArrangedSubview(time4Label)
        todayDetails.addArrangedSubview(element4StackView)
        element5StackView.addArrangedSubview(temp5Label)
        element5StackView.addArrangedSubview(cloud5ImageView)
        element5StackView.addArrangedSubview(time5Label)
        todayDetails.addArrangedSubview(element5StackView)
        view.addSubview(todayDetails)
        
        view.addSubview(weeklabel)
        view.addSubview(weekImage)
        
        view.addSubview(tableView)
        
        bottomStack.addArrangedSubview(sunImage)
        bottomStack.addArrangedSubview(bottomLabel)
        view.addSubview(bottomStack)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            todayLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            todayLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            dateLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            dateLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            todayDetails.topAnchor.constraint(equalTo: todayLabel.bottomAnchor, constant: 50),
            todayDetails.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            todayDetails.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            weeklabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20),
            weeklabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            weekImage.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20),
            weekImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            tableView.topAnchor.constraint(equalTo: weeklabel.bottomAnchor, constant: 30),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            tableView.bottomAnchor.constraint(equalTo: bottomStack.topAnchor, constant: -30),
            
            bottomStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bottomStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -5)
        ])
    }
}

extension NextViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return days.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath)
        cell.backgroundColor = UIColor(red: 0x42, green: 0xa1, blue: 0xf5)
        
        cell.contentView.subviews.forEach { $0.removeFromSuperview() }
        
        // Create the horizontal stack view
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 8
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        // Add the day label
        let dayLabel = UILabel()
        dayLabel.text = days[indexPath.row]
        dayLabel.textColor = .white
        dayLabel.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(dayLabel)
        
        // Add the weather image
        let imageView = UIImageView()
        imageView.image = images[indexPath.row % images.count]
        imageView.tintColor = .white
        imageView.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(imageView)
        
        // Add the temperature label
        let temperatureLabel = UILabel()
        temperatureLabel.text = temperatures[indexPath.row]
        temperatureLabel.textColor = .white
        temperatureLabel.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(temperatureLabel)
        
        // Add the stack view to the cell
        cell.contentView.addSubview(stackView)
        
        // Set up constraints for the stack view
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: cell.contentView.topAnchor, constant: 8),
            stackView.leadingAnchor.constraint(equalTo: cell.contentView.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: cell.contentView.trailingAnchor, constant: -16),
            stackView.bottomAnchor.constraint(equalTo: cell.contentView.bottomAnchor, constant: -8)
        ])
        
        return cell
    }
}
