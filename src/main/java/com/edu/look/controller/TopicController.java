package com.edu.look.controller;


import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.edu.look.pojo.Comment;
import com.edu.look.pojo.Topic;
import com.edu.look.service.ICommentService;
import com.edu.look.service.ITopicService;

@Controller
@RequestMapping("topic")
public class TopicController {

	@Autowired
	ITopicService topicservice;
	
	@Autowired
	ICommentService commentservice;
	
	//发布论坛
	@RequestMapping(value="addtopic.htm",method=RequestMethod.POST)
	public String addTopic(String sid,String tname,String tcontent,MultipartFile file,String ttype,HttpServletRequest request){
		System.out.println("----------------");
		System.out.println(sid+","+tname+","+tcontent+","+file+","+ttype);
		System.out.println("----------------");
		
		if(sid.isEmpty()){
			request.setAttribute("flag1", "false");
			return "forward:/login.jsp";
		}else{
			SimpleDateFormat dateFormater = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
			Date date=new Date();
			String ttime = dateFormater.format(date);
			
			String path = request.getSession().getServletContext().getRealPath("/photo");  
	        String tphoto = file.getOriginalFilename();
        	tphoto = "../photo/" + tphoto;
	        File dir = new File(path, tphoto);  
	        if(!dir.exists()){  
	            dir.mkdirs();  
	        }  
	        try {
				file.transferTo(dir);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  
        
			System.out.println("----------------");
			System.out.println(sid+","+tname+","+tcontent+","+tphoto+","+ttime+","+ttype);
			System.out.println("----------------");
			topicservice.addTopic(sid,tname, tcontent, tphoto, ttime, ttype);
			return getAllTopic(request);//TODO
		}
		
	}
	
			//所有话ti
			@RequestMapping(value="alltopic.htm",method=RequestMethod.GET)
			public String getAllTopic(HttpServletRequest req){
				List<Topic> topicalllist;
				List<Topic> topicjinrilist;
				topicalllist = topicservice.getAllTopic();
				topicjinrilist = topicservice.getJinriTopic();
				String gonggao = topicservice.gonggaocount();
				String retie = topicservice.retiecount();
				String fenxiang = topicservice.fenxiangcount();
				String wendao = topicservice.wendacount();
				String yuanwang = topicservice.yuanwangcount();
				String xueche = topicservice.xuechecount();
				List<Topic> liulanlist = topicservice.getLiulanTopic();
				
				req.setAttribute("topicalllist", topicalllist);
				req.setAttribute("topicjinrilist", topicjinrilist);
				req.setAttribute("gonggao", gonggao);
				req.setAttribute("retie", retie);
				req.setAttribute("fenxiang", fenxiang);
				req.setAttribute("wendao", wendao);
				req.setAttribute("yuanwang", yuanwang);
				req.setAttribute("xueche", xueche);
				req.setAttribute("liulanlist", liulanlist);
				
				System.out.println("---------------------1");
				System.out.println(topicalllist);
				System.out.println("---------------------1");
				System.out.println(topicjinrilist);
				
				System.out.println("---------------------2");
				System.out.println(gonggao+"-"+retie+"-"+fenxiang+"-"+wendao+"-"+yuanwang+"-"+xueche+"-");
				System.out.println("---------------------2");
				return "topic";
				
			}
	
			
		//社区公告
		@RequestMapping(value="getgonggaotopic.htm",method=RequestMethod.GET)
		public String getGonggaoTopic(HttpServletRequest req){
			List<Topic> topiclist;
			topiclist = topicservice.getGonggaoTopic();
			String count = topicservice.gonggaocount();
			req.setAttribute("type", "社区公告");
			req.setAttribute("count", count);
			req.setAttribute("topiclist", topiclist);
			return "getgonggaotopic";
			
		}
		//热帖榜
		@RequestMapping(value="getrentietopic.htm",method=RequestMethod.GET)
		public String getRentieTopic(HttpServletRequest req){
			List<Topic> topiclist;
			topiclist = topicservice.getRentieTopic();
			String count = topicservice.retiecount();
			req.setAttribute("type", "热帖榜");
			req.setAttribute("count", count);
			req.setAttribute("topiclist", topiclist);
			return "getrentietopic";
					
		}
		//分享会
		@RequestMapping(value="getfenxiangtopic.htm",method=RequestMethod.GET)
		public String getFenxiangTopic(HttpServletRequest req){
			List<Topic> topiclist;
			topiclist = topicservice.getFenxiangTopic();
			String count = topicservice.fenxiangcount();
			req.setAttribute("type", "分享会");
			req.setAttribute("count", count);
			req.setAttribute("topiclist", topiclist);
			return "getfenxiangtopic";
					
		}
		//问答榜
				@RequestMapping(value="getwendatopic.htm",method=RequestMethod.GET)
				public String getWendaTopic(HttpServletRequest req){
					List<Topic> topiclist;
					topiclist = topicservice.getWendaTopic();
					String count = topicservice.wendacount();
					req.setAttribute("type", "问答榜");
					req.setAttribute("count", count);
					req.setAttribute("topiclist", topiclist);
					return "getwendatopic";
							
				}
				//愿望墙
				@RequestMapping(value="getyuanwangtopic.htm",method=RequestMethod.GET)
				public String getYuanwangTopic(HttpServletRequest req){
					List<Topic> topiclist;
					topiclist = topicservice.getYuanwangTopic();
					String count = topicservice.yuanwangcount();
					req.setAttribute("type", "愿望墙");
					req.setAttribute("count", count);
					req.setAttribute("topiclist", topiclist);
					return "getyuanwangtopic";
							
				}
				//学车趣事
				@RequestMapping(value="getxuechetopic.htm",method=RequestMethod.GET)
				public String getXuecheTopic(HttpServletRequest req){
					List<Topic> topiclist;
					topiclist = topicservice.getXuecheTopic();
					String count = topicservice.xuechecount();
					req.setAttribute("type", "学车趣事");
					req.setAttribute("count", count);
					req.setAttribute("topiclist", topiclist);
					return "getxuechetopic";
							
				}
		
		//具体话题
		@RequestMapping(value="getonetopic.htm",method=RequestMethod.GET)
		public String getOneTopic(String tid,HttpServletRequest req){
			List<Topic> onetopiclist;
			List<Comment> commentlist;
			topicservice.lookTopic(tid);//浏览+1
			onetopiclist = topicservice.getOneTopic(tid);
			commentlist = commentservice.getAllComment(tid);//所有tid评论
			req.setAttribute("commentlist", commentlist);
			req.setAttribute("onetopiclist", onetopiclist);
			return "getonetopic";
		}
		
		@RequestMapping(value="gettopic.htm",method=RequestMethod.POST)
		public String getTopic(String tid,HttpServletRequest req){
			//req.getAttribute(tid);
			return getOneTopic(tid,req);
		}
		
		//点赞
		@RequestMapping(value="dianzan.htm",method=RequestMethod.GET)
		public String dianzan(String tid,HttpServletRequest req){
			topicservice.dianzanTopic(tid);
			return getOneTopic(tid,req);
		}
}
