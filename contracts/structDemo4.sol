pragma solidity ^0.8.9;

contract structDemo {
    struct student {
        uint grade;
        string name;
    }

    //默认是storage类型
    student stu = student(99, "jizhemingbu");

    function test(student storage s) internal {
        student memory meimei = s;
        meimei.name = "cangjingkong";
    }

    function call() public returns(string memory, uint) {
        test(stu);
        return (stu.name, stu.grade);
    }
}