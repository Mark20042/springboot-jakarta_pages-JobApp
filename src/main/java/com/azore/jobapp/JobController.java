package com.azore.jobapp;


import com.azore.jobapp.model.JobPost;
import com.azore.jobapp.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class JobController {


    @Autowired
    private JobService service;

    @GetMapping({"/", "/home"})
    public String home() {
        return "home";
    }

    @GetMapping("/addjob")
    public String addJob() {
        return "addjob";
    }

    @PostMapping("/handleform")
    public String handleForm(JobPost jobPost, RedirectAttributes redirectAttributes)
    {
        service.addJob(jobPost);
        redirectAttributes.addFlashAttribute("postedJob", jobPost);
        return "redirect:/success";
    }

    @GetMapping("/success")
    public String success(Model model) {
        if (!model.containsAttribute("postedJob")) {
            return "redirect:/viewalljobs";
        }
        return "success";
    }

    @GetMapping("/viewalljobs")
    public String viewAllJobs(Model model) {
        model.addAttribute("jobPosts", service.getAllJobs());
        return "viewalljobs";
    }

}
