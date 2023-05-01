package techOrda.bitlab.kz.servlets.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBConnection {
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
    public static ArrayList<Item> getItems(){
        ArrayList<Item> items = new ArrayList<Item>();
        try{
            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM Items");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()){
                Item item = new Item();
                item.setName(resultSet.getString("name"));
                item.setDescription(resultSet.getString("description"));
                item.setPrice(resultSet.getDouble("price"));
                items.add(item);
            }
            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return items;
    }
}