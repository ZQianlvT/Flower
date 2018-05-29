package orion_pax.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import orion_pax.entity.Discussion;
import orion_pax.entity.Reply;
import orion_pax.entity.User;


import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("/discussion")
public class DiscussionController extends BaseController {
    @Autowired
    HttpSession session;

    @RequestMapping("/continueDiscussion")
    public String continueDiscussion(Map<String,Object> map ,Discussion discussion){
        //获取当前用户的信息
        User currUser = (User) session.getAttribute("currUser");
        discussion.setuId(currUser.getId());
        discussion.setStatus(0);
        System.out.println("++++++++++++++++++++"+discussion+"++++++++++++++++++++++++++++");
        List<Discussion> discussionList = discussionService.select(discussion);
        map.put("discussionList",discussionList);
        map.put("pId",discussion.getpId());
        System.out.println("++++++++++++++++++++"+discussionList+"++++++++++++++++++++++++++++");
        return "forward:/WEB-INF/jsp/discussion/continueDiscussion.jsp";
    }

    @RequestMapping("/overDiscussion")
    public String overDiscussion(Map<String,Object> map ,Discussion discussion){
        //获取当前用户的信息
        User currUser = (User) session.getAttribute("currUser");
        discussion.setuId(currUser.getId());
        System.out.println("********************************"+discussion+"++++++++++++++++++++++++++++");
        discussion.setStatus(1);
        List<Discussion> discussionList = discussionService.select(discussion);
        map.put("discussionList",discussionList);
        map.put("pId",discussion.getpId());
        System.out.println("________________________________________"+discussionList+"++++++++++++++++++++++++++++");
        return "forward:/WEB-INF/jsp/discussion/overDiscussion.jsp";
    }

    @RequestMapping("/detailDiscussion")
    public String detailDiscussion(Map<String,Object> map,Discussion discussion){
        //调用Service显示所有评论信息
        System.out.println("11111111111122222222222222"+discussion);
        discussion = discussionService.getDiscussionDetail(discussion);
        discussion.setStartUser(discussionService.getByPK(discussion).getStartUser());
        map.put("currDiscussion",discussion);
        System.out.println("*233333333333333333333333333333"+discussion);
        return "forward:/WEB-INF/jsp/discussion/detailDiscussion.jsp";
    }
    @RequestMapping("/addDiscussion")
    public String addDiscussion(Discussion discussion){
        //获取当前用户信息
        User currUser = (User) session.getAttribute("currUser");
        discussion.setuId(currUser.getId());
        discussion.setStatus(0);
        Date currDate =new Date();
        discussion.setStartTime(currDate);
        discussion.setId(UUID.randomUUID().toString().replace("-",""));
        System.out.println("222222222222222"+discussion);
        discussionService.insert(discussion);
        System.out.println("11111111111"+discussion);
        return "/discussion/continueDiscussion";
    }
    @RequestMapping("/addReply")
    public String addReply(Reply reply){
        //获取并封装相关信息
        User currUser = (User) session.getAttribute("currUser");
        reply.setuId(currUser.getId());
        reply.setReplyTime(new Date());
        reply.setId(UUID.randomUUID().toString().replace("-",""));
        System.out.println("0000000000000000000000"+reply);
        //调用Service方法添加
        discussionService.insertReply(reply);
        System.out.println("zzzzzzzzzzzzzzzzzzzzzzzzzzzz"+reply);
        return "/discussion/detailDiscussion?id="+reply.getdId();
    }
    @RequestMapping("/closeDiscussion")
    public String closeDiscussion(Discussion discussion){
        //获取要修改的讨论discussion的id
        System.out.println("qqqqqqqqqqqqqqqqqqqqqqqq"+discussion.getId());
        //调用Service修改Status状态
        discussionService.updateByPK(discussion);
        System.out.println("sssssssssssssssssssssssss"+discussion);
        return "/discussion/continueDiscussion";
    }
    @RequestMapping("/openDiscussion")
    public String openDiscussion(Discussion discussion){
        //调用Service修改Status状态
        discussionService.openDiscussion(discussion);
        System.out.println("66666666666666666666666s"+discussion);
        return "/discussion/overDiscussion";
    }
}
