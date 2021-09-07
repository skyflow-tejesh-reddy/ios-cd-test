class Dummy {
    var dummyvar: String!
    
    internal init(dvar: String!) {
        self.dummyvar = dvar
    }
    
    internal func printD() {
        print("Printing the dummy: ", dummyvar as Any)
    }
}
