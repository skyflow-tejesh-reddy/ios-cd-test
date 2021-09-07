
class Dummy {
    internal var dummyvar: String!
    
    internal func init(dvar: String!) {
        self.dummyvar = dvar
    }
    
    internal printD() {
        print("Printing the dummy: ", dummyvar)
    }
}
