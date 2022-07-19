pragma solidity ^0.8.9;

contract structDemo {
    struct student {
        uint grade;
        string name;
    }

    student stu;

    function test(student storage s) internal {
        student storage meimei = s;
        meimei.name = "jizhemingbu";
        s.name = "cangjingkong";
    }

    function call() public returns(string memory) {
        test(stu);
        return stu.name;
    }
}