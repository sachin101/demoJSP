package com.example.demo.controller;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.test.web.servlet.MockMvc;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@WebMvcTest(DemoController.class)
class DemoControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @Test
    void home_ShouldReturnIndexView() throws Exception {
        mockMvc.perform(get("/demo/"))
                .andExpect(status().isOk())
                .andExpect(view().name("index"))
                .andExpect(model().attributeExists("message"))
                .andExpect(model().attributeExists("version"));
    }

    @Test
    void products_ShouldReturnProductsView() throws Exception {
        mockMvc.perform(get("/demo/products"))
                .andExpect(status().isOk())
                .andExpect(view().name("products"))
                .andExpect(model().attributeExists("products"));
    }

    @Test
    void about_ShouldReturnAboutView() throws Exception {
        mockMvc.perform(get("/demo/about"))
                .andExpect(status().isOk())
                .andExpect(view().name("about"))
                .andExpect(model().attributeExists("appName"))
                .andExpect(model().attributeExists("description"))
                .andExpect(model().attributeExists("technologies"));
    }
}
