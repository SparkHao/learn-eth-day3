pragma solidity ^0.8.9;

contract structDemo {
    struct student {
        uint grade;
        string name;
    }

    student stu;

    function test(student memory s) internal {
        stu = s;
        s.name = "cangjingkong";
    }

    function call() public returns(string memory, uint, string memory) {
        student memory tmp = student(100, "wutenglan");
        test(tmp);
        return (stu.name, stu.grade, tmp.name);
    }
}