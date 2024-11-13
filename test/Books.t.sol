// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import "../src/Books.sol";

contract BooksTest is Test {
    Books public books;

    function setUp() public {  // Capitalized "U"
        books = new Books("Programming Foundry", "gchala", 100);  // Replace "Anush" with your name if needed
    }

    function test_get_book() public {
    Books.Book memory retrievedBook = books.get_book();  // Retrieve the entire struct
    assertEq(retrievedBook.title, "Programming Foundry");
    assertEq(retrievedBook.author, "gchala");  // Replace with your name if required
    assertEq(retrievedBook.pages, 100);
}


    function test_updatePages() public {
    books.update_pages(150);
    Books.Book memory updatedBook = books.get_book();  // Retrieve the updated book struct
    assertEq(updatedBook.pages, 150);  // Check that the pages were updated to 150
}

}
