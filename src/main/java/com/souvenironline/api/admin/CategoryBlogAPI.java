package com.souvenironline.api.admin;

import com.souvenironline.dto.CategoryBlogDTO;
import com.souvenironline.service.ICategoryBlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.Map;

@RestController(value = "categoryBlogAPI")
public class CategoryBlogAPI {

    @Autowired
    private ICategoryBlogService categoryBlogService;

    @PostMapping("/api/category-blog")
    public CategoryBlogDTO createCategoryBlog(@RequestBody CategoryBlogDTO categoryBlogDTO){
        return categoryBlogService.save(categoryBlogDTO);
    }
    @PutMapping("/api/category-blog")
    public CategoryBlogDTO updateCategoryBlog(@RequestBody CategoryBlogDTO updateCategoryBlog){
        return categoryBlogService.save(updateCategoryBlog);
    }

    @DeleteMapping("/api/category-blog")
    public void deleteCategoryBlog(long[] ids){
        categoryBlogService.delete(ids);
    }
    @GetMapping("/api/category-blog")
    public Map<String,String > getCategoryBlog(){
        return categoryBlogService.findAll();
    }
}
