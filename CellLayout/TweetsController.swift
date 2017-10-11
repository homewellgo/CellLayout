//
//  TweetsController.swift
//  CellLayout
//
//  Created by PB2 on 2017/10/11.
//  Copyright © 2017年 homewellgo. All rights reserved.
//

import UIKit

class TweetsController: UITableViewController {
    
    let cellID = "TweetCell"
    let tweets = Tweet.all
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerCell()
        
        tableView.estimatedRowHeight = 20
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    func registerCell() {
        let nib = UINib(nibName: cellID, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: cellID)
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tweets.count
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! TweetCell
        
        let tweet = self.tweets[indexPath.row]
        cell.iconImageView.image = tweet.iconImage
        cell.nameLabel.text = tweet.name
        cell.timeLabel.text = tweet.time
        cell.tweetLabel.text = tweet.tweet
        
        cell.tweetImageView.isHidden = true
        if let image = tweet.tweetImage {
            cell.tweetImageView.isHidden = false
            cell.tweetImageView.image = image
        }
        
        return cell
    }
    
    
}

