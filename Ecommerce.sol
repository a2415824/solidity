// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.4.0 <0.9.0;

contract Ecommerce{
    struct Product{
        string title;
        string desc;
        address payable seller;
        uint productId;
        uint price;
        address buyer;
        bool delivery;
    }
    Product[] public products;
    uint counter=1;
    address payable public manager;
    bool destroyed = false;

    constructor(){
        manager = payable(msg.sender);
    }

    modifier isNotDestroyed{
        require(!destroyed,"contract does not exist");
        _;
    }

    event registered(string title,uint productId,address seller);
    event bought(uint productId,address buyer);
    event delivered(uint productId);

    function regesterProduct(string memory _title,string memory _desc,uint _price) public isNotDestroyed{
        require(_price>0,"price must be grater than ZERO//");
        Product memory tempProduct;
        tempProduct.title = _title;
        tempProduct.desc = _desc;
        tempProduct.price = _price * 10**18;
        tempProduct.seller = payable(msg.sender);
        tempProduct.productId = counter;
        products.push(tempProduct);
        counter++;
        emit registered(_title,tempProduct.productId,msg.sender);
    }

    function buy(uint _productId) payable public isNotDestroyed{
        require(products[_productId-1].price==msg.value,"Please pay the exact price^^^");
        require(products[_productId-1].seller!=msg.sender,"seller cannot be the buyer");
        products[_productId-1].buyer= msg.sender;
        emit bought(_productId,msg.sender);
    }

    function delivery(uint _productId)public isNotDestroyed{
        require(products[_productId-1].buyer == msg.sender,"only buyer can conform the delivery");
        products[_productId-1].delivery = true;
        products[_productId-1].seller.transfer(products[_productId-1].price);
        emit delivered(_productId);
    }

    // function destroy() public{
    //     require(msg.sender == manager,"only manager can access this");
    //     selfdestruct(manager);
    // }
    function destroy() public isNotDestroyed{
        require(manager == msg.sender);
        manager.transfer(address(this).balance);
        destroyed = true;
    }

    fallback() payable external{
        payable(msg.sender).transfer(msg.value);
    }
    
}