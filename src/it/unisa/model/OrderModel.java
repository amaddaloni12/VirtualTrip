package it.unisa.model;

import java.sql.SQLException;
import java.util.Collection;

public interface OrderModel {
	public void doSave(OrderBean order) throws SQLException;

	public boolean doDelete(int code) throws SQLException;

	public OrderBean doRetrieveByKey(int code) throws SQLException;
	
	public Collection<OrderBean> doRetrieveAll(String order) throws SQLException;
}