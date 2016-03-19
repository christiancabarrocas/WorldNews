//  Created by Christian Cabarrocas

import Foundation

enum CellIdentifier:String {
    case Article = "articleCell"
}

enum SegueIdentifier:String {
    case ToArticleDetail = "_toArticleDetail"
}

enum StoryBoardIdentifier:String {
    case MainSB = "Main"
    case NewsList = "_newListStoryBoardID"
}

enum CIFilterType:String {
    case BlackWhite = "CIPhotoEffectNoir"
    case GaussianBlur = "CIGaussianBlur"
}

