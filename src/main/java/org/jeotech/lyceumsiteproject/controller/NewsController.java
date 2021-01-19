package org.jeotech.lyceumsiteproject.controller;

import org.jeotech.lyceumsiteproject.repository.NewsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NewsController {
    @Autowired
    private NewsRepository newsRepository;

    @RequestMapping(value = "/news", method = RequestMethod.GET)
    public String printNews(Model model) {
        model.addAttribute("newsList", newsRepository.findAll());
        return "news";
    }
}
