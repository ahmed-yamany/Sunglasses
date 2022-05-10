
import UIKit

class CartViewController: UIViewController {
    var cartInstance = Cart.sharedInstance
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var total: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "CartTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CartTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        print(cartInstance.cartItems as Any)
        tableView.rowHeight = 150
    }
    
    override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           tableView.reloadData()
        total.text = "$" + cartInstance.getTotal().description
    }
}

extension CartViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartInstance.cartItems.count 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "CartTableViewCell", for: indexPath) as! CartTableViewCell
//        cell.productImage.image = cartInstance.cartItems[indexPath.row].image
        cell.productName.text = cartInstance.cartItems[indexPath.row].name
        cell.productDescription.text = cartInstance.cartItems[indexPath.row].description
        cell.productPrice.text = "$" + cartInstance.cartItems[indexPath.row].price.description
        return cell
    }
    
    
}

extension CartViewController: UITableViewDelegate {
    
}
