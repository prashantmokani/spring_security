package in.prashant.springsecurity.controller;

import in.prashant.springsecurity.entities.User;
import in.prashant.springsecurity.services.SecurityService;
import in.prashant.springsecurity.services.UserService;
import in.prashant.springsecurity.services.UserServicesImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
@Slf4j
public class UserController {

    @Autowired
    private BCryptPasswordEncoder encoder;

    @Autowired
    private UserServicesImpl userServices;

    @Autowired
    private SecurityService securityService;

    @RequestMapping("/")
    public String showLoginPage(){
        return "login";
    }

    @RequestMapping(value = "/userRegistration", method = RequestMethod.POST)
    public String register(@ModelAttribute User user) {
        user.setPassword(encoder.encode(user.getPassword()));
        userServices.saveUser(user);
        return "redirect:/";
    }

    @RequestMapping("/showRegistration")
    public String showRegPage(){
        return "registerUser";
    }

    @RequestMapping(value = "/authUser", method = RequestMethod.POST)
    public String loginUser(@RequestParam String email, @RequestParam String password, ModelMap modelMap)
    {


        boolean loginResponse = securityService.login(email, password);

        if (loginResponse) {
            log.debug("Inside The loginresponse");
            return "redirect:restricted";
        }
        else {
            modelMap.addAttribute("errorMsg", "Invalid Username or Password please try again");
            return "redirect:/";
        }
    }

    @RequestMapping("/restricted")
    public String showRestrictedPage(){
        return "restrictedPage";
    }

    @GetMapping("admin/adminPage")
    public String showAdminPage(){
        return "adminPage";
    }

    @GetMapping("/client/clientPage")
    public String showClientPage(){
        return "clientPage";
    }


}
