package kimkwangsoo.book.user.service;

import java.util.List;

import kimkwangsoo.book.user.domain.User;

public interface UserService {
	User getUser(String userId);
	List<User> getUsers();
	void addUser(User user);
	void updateUser(User user);
	void deleteUser(int userNum);
}
