import Debug "mo:base/Debug";
import Principal "mo:base/Principal";

actor class NFT (name: Text, owner: Principal, content: [Nat8]) = this {
    
    let itemName = name;
    let nftOwner = owner;
    let imageBytes = content;

    //asyncronysly return the itemName
    public query func getName() : async Text {
        return itemName;
    };

    //asyncronysly return the nftOwner
    public query func getOwner() : async Principal {
        return nftOwner;
    };

    //asyncronysly return the imageBytes
    public query func getAsset() : async [Nat8] {
        return imageBytes;
    };

    public query func getCanisterId() : async Principal {
        return Principal.fromActor(this);
    };
};