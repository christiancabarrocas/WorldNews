//  Created by Christian Cabarrocas

import UIKit

class ArticleTableView: UITableViewController {
    
    let constructor = ArticleListConstructor(communicator: Communicator(), apiEndpoint: .TopStoriesWorld)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return constructor.data.count
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return constructor.cellHeight
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier.Article.rawValue, forIndexPath: indexPath) as! ArticleListCell
        cell.article = constructor.data[indexPath.row]
        return cell
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == SegueIdentifier.ToArticleDetail.rawValue {
            let indexPath = self.tableView.indexPathForCell(sender as! UITableViewCell)
            let detailVC = segue.destinationViewController as! ArticleDetailViewController
            detailVC.article = constructor.data[indexPath!.row]
        }
    }
}
