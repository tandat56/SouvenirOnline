package com.souvenironline.api.admin;

import com.souvenironline.dto.BlogDTO;
import com.souvenironline.service.admin.IBlogAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


@RestController(value = "blogAPIOfAdmin")
public class BlogAPI {

    @Autowired
    private IBlogAdminService blogService;

    @PostMapping("/api/blog")
    public BlogDTO createBlog(@RequestBody BlogDTO blogDTO) {
        return blogService.save(blogDTO);
    }

    @PutMapping("/api/blog")
    public BlogDTO updateBlog(@RequestBody BlogDTO updateBlog) {
        return blogService.save(updateBlog);
    }

    @DeleteMapping("/api/blog")
    public void deleteBlog(@RequestBody long[] ids) {
        blogService.delete(ids);
    }
}
