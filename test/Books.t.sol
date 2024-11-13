// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import "../src/Books.sol";

contract BooksTest is Test {
    Books public books;

    function setUp() public {
        books = new Books("Programming Foundry", "Anush", 100); // Replace "Anush" with your name if needed
    }

    function test_get_book() public {
        // Retrieve the Book struct using the get_book() function
        Books.Book memory returnedBook = books.get_book();
        
        // Access the fields from the returned Book struct
        string memory title = returnedBook.title;
        string memory author = returnedBook.author;
        uint256 pages = returnedBook.pages;

        // Check that the values match what we expect
        assertEq(title, "Programming Foundry");
        assertEq(author, "Anush"); // Update to your name if needed
        assertEq(pages, 100);
    }

    function test_updatePages() public {
        // Update the pages and check that the update was successful
        books.update_pages(150);
        uint256 pages = books.get_book().pages;
        assertEq(pages, 150);
    }
}
