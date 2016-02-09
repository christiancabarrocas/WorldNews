//  Created by Christian Cabarrocas

import UIKit

class ArticleTableView: UITableViewController {
    
    var data:[Article] = []
    let viewController = ArticleListController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewController.updateData { (result) -> Void in
            self.data = result
            self.tableView.reloadData()
        }
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return viewController.cellHeight
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier.article.rawValue, forIndexPath: indexPath) as! ArticleListCell
        cell.article = data[indexPath.row]
        return cell
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == SegueIdentifier.toDetail.rawValue {
            let indexPath = self.tableView.indexPathForCell(sender as! UITableViewCell)
            let detailVC = segue.destinationViewController as! ArticleDetailViewController
            detailVC.article = data[indexPath!.row]
        }
    }
}
