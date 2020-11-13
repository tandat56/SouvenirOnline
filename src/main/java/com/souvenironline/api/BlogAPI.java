package com.souvenironline.api;

import com.souvenironline.dto.BlogDTO;
import com.souvenironline.service.IBlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController(value = "blogAPIOfAdmin")
public class BlogAPI {

    @Autowired
    private IBlogService blogService;

    @PostMapping("/api/blog")
    public BlogDTO createBlog(@RequestBody BlogDTO blogDTO){
        return blogService.save(blogDTO);
    }
    @PutMapping("/api/blog")
    public BlogDTO updateBlog(@RequestBody BlogDTO updateBlog){
        return blogService.save(updateBlog);
    }

    @DeleteMapping("/api/blog")
    public void deleteBlog(long[] ids){
        blogService.delete(ids);
    }
    @GetMapping("/api/blog")
    public List<BlogDTO> getBlog() {
        return blogService.findAll();
    }
}