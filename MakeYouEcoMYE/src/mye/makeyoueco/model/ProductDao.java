package mye.makeyoueco.model;

import java.awt.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductDao {

	private static final String TABLE_NAME = "product";

	private Connection connection;

	private String query;
	private PreparedStatement preparedStatement;
	private ResultSet rs;

	public ProductDao(Connection connection) {
		this.connection = connection;
	}

	public ArrayList<Product> doRetrieveAll(String order) {

		ArrayList<Product> products = new ArrayList<Product>();

		try {

			query = "SELECT * FROM " + ProductDao.TABLE_NAME;

			if (order != null && !order.equals("")) {
				query += " ORDER BY " + order;
			}

			preparedStatement = connection.prepareStatement(query);

			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				Product bean = new Product();

				bean.setId(rs.getInt("ID"));
				bean.setName(rs.getString("NAME"));
				bean.setDescription(rs.getString("DESCRIPTION"));
				bean.setPrice(rs.getDouble("PRICE"));
				bean.setWeight(rs.getFloat("WEIGHT"));
				bean.setImage(rs.getString("IMAGE"));
				bean.setQuantity(rs.getInt("QUANTITY"));
				bean.setIva(rs.getInt("IVA"));

				products.add(bean);
			}

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return products;
	}

	public ArrayList<Cart> getCartProducts(ArrayList<Cart> cartList) {

		ArrayList<Cart> products = new ArrayList<>();
		try {
			if (cartList.size() > 0) {
				for (Cart item : cartList) {
					query = "SELECT * FROM " + ProductDao.TABLE_NAME + " WHERE ID=?";
					preparedStatement = this.connection.prepareStatement(query);
					preparedStatement.setInt(1, item.getId());
					rs = preparedStatement.executeQuery();
					while (rs.next()) {
						Cart row = new Cart();
						row.setId(rs.getInt("ID"));
						row.setName(rs.getString("NAME"));
						row.setPrice(rs.getDouble("PRICE") * item.getQuantity());
						row.setQuantity(item.getQuantity());

						products.add(row);
					}

				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return products;
	}
	
	
	public double getTotalCartPrice(ArrayList<Cart> cartList) {
        double sum = 0;
        try {
            if (cartList.size() > 0) {
                for (Cart item : cartList) {
                    query = "SELECT PRICE FROM " + ProductDao.TABLE_NAME + " WHERE ID=?";
                    preparedStatement = this.connection.prepareStatement(query);
                    preparedStatement.setInt(1, item.getId());
                    rs = preparedStatement.executeQuery();
                    while (rs.next()) {
                        sum+=rs.getDouble("price")*item.getQuantity();
                    }

                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return sum;
    }
}
