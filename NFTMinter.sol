pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC721/SafeERC721.sol";

// Contract that represents the NFT
contract MyNFT is SafeERC721 {
    // Constructor that sets the name and symbol for the NFT
    constructor() public ERC721("MyNFT", "MNFT") {}

    // Function that mints a new NFT and assigns it to the msg.sender
    function mint(string memory _name) public payable {
        // Require that the msg.sender sends at least 0.1 ether
        require(msg.value >= 0.1 ether, "You must send at least 0.1 ether to mint a new NFT");

        // Mint a new NFT and assign it to the msg.sender
        _mint(msg.sender, _name);
    }
}
