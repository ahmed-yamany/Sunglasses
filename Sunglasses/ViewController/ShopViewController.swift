
import UIKit

class ShopViewController: UIViewController {
    let apiManager = ApiManager()

    
    
    @IBOutlet weak var collectView: UICollectionView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        collectView.dataSource = self
        collectView.delegate = self
        apiManager.performRequest()

    }

    

}

extension ShopViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return inventory.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SunglassCollectionViewCell", for: indexPath) as! SunglassCollectionViewCell
        
        cell.setup(with: inventory[indexPath.item])
        
        return cell
    }
    
}

extension ShopViewController:  UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let viewController =  storyboard?.instantiateViewController(identifier: "DetailViewController") as? DetailViewController
//        print(indexPath.item)
//        viewController?.image = inventory[indexPath.item].image
        viewController?.titleLabel = inventory[indexPath.item].name
        viewController?.productInfo = inventory[indexPath.item].description
        viewController?.index  = indexPath.item
        
        let haptic = UIImpactFeedbackGenerator(style: .soft)
        haptic.impactOccurred()
        
        self.present(viewController!, animated: true, completion: nil)
    }
}
