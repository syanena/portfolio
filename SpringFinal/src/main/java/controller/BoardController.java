package controller;

import model.ReplyDataBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.BoardDataBean;
import service.BoardService;

@Controller
@RequestMapping("/board/")
public class BoardController {

    @Autowired
    BoardService service;

    //admin --- 2020.04.16 ---
    @RequestMapping(value = "list")
    public String gotoNoticeAndContactList(@ModelAttribute("listPageData") BoardDataBean boardDataBean, ModelMap modelMap){
        System.out.println(boardDataBean.getBoard_category());
        return service.gotoNoticeAndContactList(boardDataBean, modelMap);
    }

    @RequestMapping(method = RequestMethod.GET, value = "register_notice")
    public String gotoRegisterNoticeForm(){
        return service.gotoRegisterNoticeForm();
    }

    @RequestMapping(method = RequestMethod.POST, value = "registered_notice")
    public String gotoRegisteredNotice(@ModelAttribute("registeredNoticeData")BoardDataBean boardDataBean, ModelMap modelMap) {
        System.out.println(boardDataBean);
        return service.gotoRegisteredNotice(boardDataBean, modelMap);
    }

    @RequestMapping(method = RequestMethod.GET, value = "register_reply")
    public String gotoRegisterReplyForm(@ModelAttribute("categoryData")ReplyDataBean replyDataBean, ModelMap modelMap){
        return service.gotoRegisterReplyForm(replyDataBean,modelMap);
    }

    @RequestMapping(method = RequestMethod.POST, value = "registered_reply")
    public String gotoList(@ModelAttribute("registeredNoticeData")ReplyDataBean replyDataBean, ModelMap modelMap) {
        System.out.println(replyDataBean);
        return service.gotoRegisteredReply(replyDataBean, modelMap);
    }
    //admin --- 2020.04.16 ---
}
