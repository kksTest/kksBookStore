package kimkwangsoo.book.user.dao;

import java.util.List;

import kimkwangsoo.book.config.Configuration;
import kimkwangsoo.book.user.dao.map.UserMap;
import kimkwangsoo.book.user.domain.User;

public class UserDaoImpl implements UserDao {
	private UserMap userMap;
	
	public UserDaoImpl() {
		this.userMap = Configuration.getMapper(UserMap.class);
	}
	
	@Override
	public void addUser(User user) {
		this.userMap.addUser(user);
	}
	
	@Override
	public User getUser(String userId) {
		return this.userMap.getUser(userId);
	}
	
	@Override
	public List<User> getUsers() {
		return this.userMap.getUsers();
	}
	
	@Override
	public void updateUser(User user) {
		this.userMap.updateUser(user);
	}
	
	@Override
	public void deleteUser(int userNum) {
		this.userMap.deleteUser(userNum);
	}
}
