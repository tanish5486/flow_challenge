pub contract ProductsContract {
    pub var Products: {String: Product}

    pub struct Product {
        pub let Name: String
        pub let Price: Int
        pub let Description: String

        init(_Name: String, _Price: Int, _Description: String) {
            self.Name = _Name
            self.Price = _Price
            self.Description = _Description
        }
    }

    pub fun addProduct(Name: String, Price: Int, Description: String) {
        let newProduct = Product(_Name: Name, _Price: Price, _Description: Description)
        self.Products[Name] = newProduct
    }

    pub fun getProduct(Name: String): Product? {
        return self.Products[Name]
    }

    init() {
        self.Products = {}
    }
}
