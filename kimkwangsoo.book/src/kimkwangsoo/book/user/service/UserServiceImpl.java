package kimkwangsoo.book.user.service;

import java.util.List;

import kimkwangsoo.book.user.dao.UserDao;
import kimkwangsoo.book.user.dao.UserDaoImpl;
import kimkwangsoo.book.user.domain.User;

public class UserServiceImpl implements UserService {
	private UserDao userDao;
	
	public UserServiceImpl() {
		this.userDao = new UserDaoImpl();
	}
	
	@Override
	public void addUser(User user) {
		this.userDao.addUser(user);
	}
	
	@Override
	public User getUser(String userId) {
		return this.userDao.getUser(userId);
	}
	
	@Override
	public List<User> getUsers() {
		return this.userDao.getUsers();
	}
	
	@Override
	public void updateUser(User user) {
		this.userDao.updateUser(user);
	}
	
	@Override
	public void deleteUser(User user) {
		this.userDao.deleteUser(user);
	}
}
