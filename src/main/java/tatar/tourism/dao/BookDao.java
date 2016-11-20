package tatar.tourism.dao;

import tatar.tourism.pojo.*;

import java.sql.SQLException;
import java.util.List;

public interface BookDao {

    void create(Book book);
    Book read(int key);
    Book read();
    void delete(Book book);
    List<Book> getAll() throws SQLException;
}
