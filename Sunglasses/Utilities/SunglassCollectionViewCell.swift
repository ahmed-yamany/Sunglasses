
import UIKit

class SunglassCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    func setup( with sunglass: Sunglass) {
//        productImage.image = sunglass.image
        productTitle.text = sunglass.name
        productPrice.text = "$" + sunglass.price.description
    }
}
