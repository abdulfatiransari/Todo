// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract TodoList {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string memory _text) external {
        todos.push(Todo({
            text: _text,
            completed: false
        }));
    }

    function deleteText() public {
        delete todos;
    }

    function updateText(uint _index, string memory _text) external {
        todos[_index].text = _text;
    }
    
    function get(uint _index) external view returns (string memory, bool) {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

}
