import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Main {

    public static void main(String[] args){
        Connection connection = null;
        try{
            connection = DriverManager.getConnection("jdbc:mysql://localhost/world", "root","root123");
            connection.prepareStatement()
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
