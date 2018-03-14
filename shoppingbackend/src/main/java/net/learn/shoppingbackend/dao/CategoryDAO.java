package net.learn.shoppingbackend.dao;

import java.util.List;

import net.learn.shoppingbackend.dto.Category;

public interface CategoryDAO {

	List<Category> list();
	Category get(int id);
}
