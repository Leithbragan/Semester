package tatar.tourism.dao;

import tatar.tourism.pojo.Book;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MySqlBookDao extends MySqlDao implements BookDao {

    @Override
    public void create(Book book) {

    }

    @Override
    public Book read(int key) {
        String sql = "SELECT * FROM book WHERE id=?";
        Connection con = getConnection();
        PreparedStatement stm = null;
        Book book = new Book();

        try {
            stm = con.prepareStatement(sql);
            stm.setInt(1, key);
            ResultSet rs = stm.executeQuery();
            while (rs.next()
                    ) {
                book.setId(rs.getInt("id"));
                book.setName(rs.getString("name"));
                book.setAuthor(rs.getString("author"));
                book.setGener(rs.getString("gener"));
                book.setPrice(rs.getInt("price"));
                book.setDescription(rs.getString("description"));
                book.setEdition(rs.getInt("edition"));
                book.setPages(rs.getInt("pages"));
                book.setWeight(rs.getInt("weight"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                stm.close();
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return book;
    }

    @Override
    public Book read() {
        return null;
    }


    @Override
    public void delete(Book book) {

    }

    public List<Book> getAll() {
        String sql = "SELECT * FROM book;";
        List<Book> list = new ArrayList<>();
        Connection con = getConnection();
        PreparedStatement stm;

        try {
            stm = con.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            Book book;
            while (rs.next()) {
                book = new Book();
                book.setId(rs.getInt("id"));
                book.setName(rs.getString("name"));
                book.setAuthor(rs.getString("author"));
                book.setGener(rs.getString("gener"));
                book.setPrice(rs.getInt("price"));
                book.setDescription(rs.getString("description"));
                list.add(book);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }

}
