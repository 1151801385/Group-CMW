//
//  MoviePlayController.swift
//  A3
//
//  Created by Wangyang on 2022/5/13.
//

import UIKit

class MoviePlayController: UIViewController {
    var selectedMovie : Movie!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var currentIndex = 0
    var timeList = [MovieTime]()
    var moviePlayList = [MoviePlay]()
    var date:String = ""
    var time:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ImageView.image = selectedMovie.image
        self.nameLabel.text = selectedMovie.title
        tableView.dataSource = self
        tableView.delegate = self
        collectionView.dataSource = self
        collectionView.delegate = self
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        collectionView.collectionViewLayout = flowLayout
        self.createTimeList()
        self.createMoviePlayList()
        self.tableView.reloadData()
        self.collectionView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSeats",
           let SC = segue.destination as? SeatsController {
            SC.selectedMovie = selectedMovie
            SC.date = self.date
            SC.time = self.time
        }
    }
        
    func createTimeList()  {
        let currentDate = Date()
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "MM-dd"
        
        for i in 0..<10{
            let date = Calendar.current.date(byAdding: .day, value: i, to: currentDate)!
            let dateString = dateFormat.string(from: date)
            if i==0 {
                timeList.append(MovieTime(isSel: true, time: dateString))
            }else{
                timeList.append(MovieTime(isSel: false, time: dateString))
            }
        }
    }
   
    func createMoviePlayList()  {
        moviePlayList.removeAll()
        let  randomValue = Int.random(in: 01..<30)
        for _  in 0..<randomValue {
            let randomNum = Int.random(in: 01..<10)
            let hour = Int.random(in: 01..<24)
            let minute = Int.random(in: 00..<59)
            let moviePlay = MoviePlay(place: " Hall \(randomNum)  ", time: "\(hour):\(minute)")
            moviePlayList.append(moviePlay)
        }
    }
    
}

extension MoviePlayController: UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return timeList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TimeCollectionViewCell", for: indexPath) as! TimeCollectionViewCell
        cell.setup(with: timeList[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 80, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == currentIndex {
            return
        }
        collectionView.scrollToItem(at: indexPath, at: UICollectionView.ScrollPosition.centeredHorizontally, animated: true)
        for (index,_) in timeList.enumerated() {
            timeList[index].isSel = false
        }
        timeList[indexPath.row].isSel = true
        createMoviePlayList()
        currentIndex = indexPath.row
        collectionView.reloadData()
        tableView.reloadData()
    }
    
}

extension MoviePlayController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviePlayList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "playCell", for: indexPath)
        let moviePlay = moviePlayList[indexPath.row]
        cell.textLabel?.text = moviePlay.place + " " + moviePlay.time
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let movieTime:MovieTime = timeList[currentIndex]
        print(movieTime.time)
        let moviePlay = moviePlayList[indexPath.row]
        print(moviePlay.place + " " + moviePlay.time)
        print("Click:\(indexPath.row) row")
        self.date = movieTime.time
        self.time = moviePlay.time
        self.performSegue(withIdentifier: "goToSeats", sender: nil)
    }
}
