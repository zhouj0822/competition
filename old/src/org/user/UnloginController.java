package org.user;

import org.docshare.log.Log;
import org.docshare.mvc.Controller;
import org.docshare.mvc.except.NullParamException;
import org.docshare.orm.DBTool;
import org.docshare.orm.LasyList;
import org.docshare.orm.Model;

public class UnloginController extends Controller{
	public void Top(){
		//DBTool tool = Model.tool("news");
				String id = param("id");
				Model news = T("news").get(id);
				put("news",news);
				

				
				LasyList list1 = Model.tool("news").all().eq("sortid","1").limit(0, 2);
				put("news1", list1);
			
				LasyList list2 = Model.tool("news").all().eq("sortid","2").limit(0, 2);
				put("news2", list2);
				
				LasyList list3 = Model.tool("news").all().eq("sortid","3").limit(0, 2);
				put("news3", list3);
				//
				if(isPost()){
					String str = param("title");
					sess("keyword",str);		
					
					jump("/unlogin/Top11");
					return;
			 	}

				render();
			}

		


	public void Top1(){

		int id = paramInt("id");
//		//查询书籍信息
		Model news = T("news").get(id);
		put("news",news);
//		//插叙张姐信息
//		LasyList list4 = T("news").all().eq("newsid", id).orderby("cid", true);
//		put("list4",list4);
//
//		render();
	
		render();


	}

	public void Top11(){


		String str = sessStr("keyword");
		
		LasyList list4 = Model.tool("news").all().like("title", str).limit(3);
		put("news4", list4);
	
		render();


	}
	}

