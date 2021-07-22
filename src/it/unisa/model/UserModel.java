package it.unisa.model;

import java.sql.SQLException;
import java.util.Collection;

public interface UserModel {
	public void doSave(UserBean user) throws SQLException;

	public boolean doDelete(String username) throws SQLException;

	public UserBean doRetrieveByKey(String username) throws SQLException;
	
	public Collection<UserBean> doRetrieveAll() throws SQLException;
}