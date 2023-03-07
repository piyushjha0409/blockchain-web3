//SPDX-Liscense-Identifier
pragma solidity ^0.8.10;

contract TodoList {
    struct TodoItem {
        string text;
        bool completed;
    }

    //Create an array of TodoItem structs
     TodoItem[] public todos;
     function createTodo(string memory _text) public {
        //METHOD 1:
        todos.push(TodoItem(_text, false));

        //METHOD 2:
        todos.push(TodoItem({ text: _text, completed: false}));

        //METHOD 3:
        TodoItem memory todo;
        todo.text = _text;
        todo.completed = false;

        todos.push(todo);
     }

     // Update a struct value
     function update(uint _index, string memory _text)public{
        todos[_index].text = _text;
     }
}