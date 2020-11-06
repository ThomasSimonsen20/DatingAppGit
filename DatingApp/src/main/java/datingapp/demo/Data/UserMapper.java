package datingapp.demo.Data;

import com.mysql.cj.protocol.Resultset;
import datingapp.demo.domain.LoginSampleException;
import datingapp.demo.domain.User;

import java.sql.*;
import java.util.ArrayList;

public class UserMapper {


    public User login(String email, String password) throws LoginSampleException {
        try {
            Connection con = DBManager.getConnection();
            String SQL = "SELECT idUsers, IsAdmin FROM users "
                    + "WHERE email=? AND password=?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Boolean isAdmin = rs.getBoolean("IsAdmin");
                int id = rs.getInt("idUsers");
                User user = new User(email, password, isAdmin);
                user.setId(id);
                return user;
            } else {
                throw new LoginSampleException("Could not validate user");
            }
        } catch (SQLException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public ArrayList<User> getAllUserDataFromDB() {
        ArrayList<User> userArrayList = new ArrayList<>();
        try {

            Connection con = DBManager.getConnection();
            String SQL = "SELECT * FROM users";
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                User user = new User();
                user.setId(rs.getInt("idUsers"));
                user.setFirstName(rs.getString("FirstName"));
                user.setLastName(rs.getString("LastName"));
                user.setTelephoneNumber(rs.getInt("TelephoneNumber"));
                user.setEmail(rs.getString("Email"));
                user.setPassword(rs.getString("Password"));
                user.setAdmin(rs.getBoolean("IsAdmin"));

                userArrayList.add(user);

            }




        } catch (SQLException e) {
            e.getMessage();
        }

        return userArrayList;
    }

}
