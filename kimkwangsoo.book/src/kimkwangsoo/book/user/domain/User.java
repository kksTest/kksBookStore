package kimkwangsoo.book.user.domain;

import java.sql.Date;

public class User {
	private String userId;
	private String userPwd;
	private String userName;
	private String userEmail;
	private String userTel;
	private String userAddress;
	private Date userBirth;
	private Date userReg;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserTel() {
		return userTel;
	}

	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	
	public Date getUserBirth() {
		return userBirth;
	}

	public void setUserBirth(Date userBirth) {
		this.userBirth = userBirth;
	}
	
	public Date getUserReg() {
		return userReg;
	}

	public void setUserReg(Date userReg) {
		this.userReg = userReg;
	}

	public String toString() {
		return userId + " " + userPwd + " " + userName;
	}
}
