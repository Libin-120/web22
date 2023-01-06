var myApp = angular.module("myModule", []);
var myController = function ($scope)
     {
          var Employee = [
          {
            FirstName: "Mohan",LastName: "Lal",Gender: "Male",Address: "Kerala",
          },
          {
               FirstName: "Jithu",LastName: "George",Gender: "Male",Address: "Thamilnadu",
          },
          {
               FirstName: "Minu",LastName: "Raj",Gender: "Female",Address: "MP",
          },
          {
               FirstName: "Alona",LastName: "John",Gender: "Female",Address: "UP",
          },
          {
               FirstName: "Karun",LastName: "Babu",Gender: "Male",Address: "Delhi",
          }];
     $scope.Emp = Employee;
     };
myApp.controller("myCont", myController);