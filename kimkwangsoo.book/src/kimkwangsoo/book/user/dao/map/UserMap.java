package kimkwangsoo.book.user.dao.map;

import java.util.List;

import kimkwangsoo.book.user.domain.User;

public interface UserMap {
	User getUser(String userId);
	List<User> getUsers();
	void addUser(User user);
	void updateUser(User user);
	void deleteUser(int userNum);
}
