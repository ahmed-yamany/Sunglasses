
import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productDescripition: UILabel!
    
    var image: UIImage?
    var titleLabel: String?
    var productInfo: String?
    var index: Int?
    
    var cartInstance = Cart.sharedInstance
    override func viewDidLoad() {
        super.viewDidLoad()
        productImage.image = image
        productTitle.text = titleLabel
        productDescripition.text = productInfo
    }
    @IBAction func AddToCart(_ sender: UIButton) {
        let product = inventory[index!]
        let haptic = UINotificationFeedbackGenerator()

        if !cartInstance.cartItems.contains(where: {$0.name == product.name}) {
        cartInstance.cartItems.append(product)
            haptic.notificationOccurred(.success)
        } else {
            print("Product is already added to Cart")
            haptic.notificationOccurred(.error)
        }
    }
}
