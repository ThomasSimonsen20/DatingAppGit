package datingapp.demo.Controller;

import java.sql.*;

public class UserMapper {


    /*public void createUser(User user) {
        try {
            Connection con = DBManager.getConnection();
            String SQL = "INSERT INTO Users (email, password, role) VALUES (?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, user.getEmail());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getRole());
            ps.executeUpdate();
            ResultSet ids = ps.getGeneratedKeys();
            ids.next();
            int id = ids.getInt(1);
            user.setId(id);
        } catch (SQLException ex) {

        }
    }

     */

<<<<<<< HEAD
    // Retunere den første user den finder med firstname og Zipcode.
=======
    public User login(String email, String password) throws LoginSampleException {
        try {
            Connection con = DBManager.getConnection();
            String SQL = "SELECT id, role FROM Users "
                    + "WHERE email=? AND password=?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String role = rs.getString("role");
                int id = rs.getInt("id");
                User user = new User(email, password, role);
                user.setId(id);
                return user;
            } else {
                throw new LoginSampleException("Could not validate user");
            }
        } catch (SQLException | LoginSampleException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    /*

>>>>>>> 649cdb20608deb3fd733065d7b1337dc4e604ce8
    public User login() {
        User user = null;
        try {
            Connection con = DBManager.getConnection();
            String SQL = "SELECT * FROM Users ";
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {


                String f = rs.getString("FirstName");
                int z = rs.getInt("ZipCode");
                user = new User(f, z);

}
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

     */

}
