package com.example.MidtermEAD;

import java.sql.*;

public class EmployeeDao {
    public static Connection connection;
    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            //DriverManager.registerDriver(new com.mysql.jdbc.Driver ());
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyway-test?useUnicode=true&serverTimezone=UTC","root","");
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }
    public static boolean registerEmployee(Employee employee){
        int rows = 0;
        try(
            PreparedStatement statement = connection.prepareStatement("INSERT INTO employee" +
                    " (fname, surname, passwrd, birthday, gender) VALUES " +
                    " (?,?,?,?,?);")){
            statement.setString(1,employee.getFname());
            statement.setString(2, employee.getSurname());
            statement.setString(3, employee.getPasswrd());
            statement.setString(4, employee.getBirthday());
            statement.setString(5, employee.getGender());

            rows = statement.executeUpdate();
            statement.close();
        } catch (Exception e){
            e.printStackTrace();
        }
        return (rows>0);
    }
    public static Employee getEmployees(String username){
        Employee employee = null;
        try {
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM employee WHERE fname = ? ");
            statement.setString(1, username);
            ResultSet resultSet = statement.executeQuery();

            if(resultSet.next()){
                employee = new Employee(
                        resultSet.getInt("id"),
                        resultSet.getString("fname"),
                        resultSet.getString("surname"),
                        resultSet.getString("passwrd"),
                        resultSet.getString("birthday"),
                        resultSet.getString("gender")
                );
            }
            statement.close();
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return employee;
    }
}
