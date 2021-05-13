package com.example.MidtermEAD;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class VacancyDao {
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
    public static Vacancy getVacancy(String vname){
        Vacancy vacancy = null;
        try {
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM vacancy WHERE vName = ? ");
            statement.setString(1, vname);
            ResultSet resultSet = statement.executeQuery();

            if(resultSet.next()){
                vacancy = new Vacancy(
                        resultSet.getInt("vId"),
                        resultSet.getString("vName"),
                        resultSet.getString("vDecription"),
                        resultSet.getString("vData"),
                        resultSet.getString("vCompany")
                );
            }
            statement.close();
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return vacancy;
    }
}
