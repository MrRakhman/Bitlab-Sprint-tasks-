package techOrda.bitlab.kz.servlets.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class UsersDBConnection {
    private static Connection connection;

    static {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:8889/bitlab_db",
                    "root",
                    "root");
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    public static ArrayList<User> getUser(){
        ArrayList<User> users = new ArrayList<User>();
        try{
            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM Users");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()){
                User user = new User();
                user.setEmail(resultSet.getString("email"));
                user.setPassword(resultSet.getString("password"));
                user.setFullName(resultSet.getString("full_name"));
                users.add(user);
            }
            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return users;
    }
}