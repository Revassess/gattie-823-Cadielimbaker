/**
 * prompt: Write a statement that will insert a new user into the APP_user table
 * with a role of PREMIUM_user
 * 
 *I WOULD DO ALL THE IMPORTS AND PACKAGE NAMES
 */
 public class UsersDAO implements IUsersDAO{
 
 @Override
	public boolean addUsers(Users u) {
		
		try(Connection conn = ConnectionUtil.getConnection()){
			
			String sql = "INSERT INTO APP_user (Id, Username, PASSWORD, First_Name, Last_Name, User_Role_ID)"
					+ "VALUES (?, ?, ?, ?, ?, ?);"; 
		
			
			PreparedStatement statement = conn.prepareStatement(sql);
			
			int index = 0;
			
			statement.setInt(++index, u.getId());
			statement.setString(++index, u.getUserName());
			statement.setString(++index, u.getPassword());
			statement.setString(++index, u.getFirstName());
			statement.setString(++index, u.getLastName());
			statement.setInt(++index, u.getUserRoleId());
			
			statement.execute();
			return true; 
			
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
	}