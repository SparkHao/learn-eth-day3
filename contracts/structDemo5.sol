pragma solidity ^0.8.9;

contract structDemo {
    struct student {
        uint grade;
        string name;
    }

    //指针传递
    // function test(student memory s) internal {
    //     student memory meimei = s;
    //     meimei.name = "cangjingkong";
    // }

    // function call() public returns(string memory, uint) {
    //     student memory lily = student(100, "lily");
    //     test(lily);
    //     return (lily.name, lily.grade);
    // }

    //指针传递
    function test(student memory s) internal {
        student memory meimei = s;
        meimei.name = "cangjingkong";
    }

    function call() public returns(string memory, uint) {
        //student storage lily = student(100, "lily");  编译失败，方法体内须使用memory类型、方法体内使用storage须从方法体外部引用
        student memory lily = student(100, "lily");
        test(lily);
        return (lily.name, lily.grade);
    }
}