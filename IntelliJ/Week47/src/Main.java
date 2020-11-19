import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Main {

    public static void main(String[] args){
        Connection connection = null;
        try{
            connection = DriverManager.getConnection("jdbc:mysql://localhost", "root","root123");
            PreparedStatement out = connection.prepareStatement("SELECT COUNT(*) FROM city;");
            System.out.println(out);

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
