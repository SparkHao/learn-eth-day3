pragma solidity ^0.8.9;

contract structDemo {
    struct student {
        uint grade;
        string name;
    }

    struct student2 {
        uint grade;
        string name;

        mapping(uint => student2) stumap;
    }

    function init() public view returns(uint, string memory) {
        student memory s = student(100, "Spark");
        return (s.grade, s.name);
    }

    function init2() public view returns(uint, string memory) {
        student memory s = student({grade: 100, name: "Spark"});
        return (s.grade, s.name);
    }


    struct student3 {
        uint grade;
        string name;

        mapping(uint => string) stringmap;
    }

    uint stuId;
    mapping(uint => student3) stumap;

    // student3 meimei;
    function init3() public returns(uint, string memory) {
        // stringmap2[0] = "";

        student3 storage s3 = stumap[stuId++];
        s3.grade = 99;
        s3.name = "Spark";
        // s.stringmap[0] = "mountains"; 不可直接赋值
        // meimei = s;
        // meimei.stringmap[0] = "jizhemingbu";
        return (s3.grade, s3.name);
    }
}