package org.user;

import org.docshare.log.Log;
import org.docshare.mvc.Controller;
import org.docshare.mvc.except.NullParamException;
import org.docshare.orm.DBTool;
import org.docshare.orm.LasyList;
import org.docshare.orm.Model;

public class NewsController extends Controller {
	public void top(){
		DBTool tool = Model.tool("news");
		LasyList list = tool.all().limit(0, 30);
		put("news", list);
		render();
	}
	
	public void edit() throws NullParamException{
		DBTool tool = Model.tool("news");
		//处理提交数据
		if(isPost()){ //isPost
			Model m = tool.get(param("id"));
			Log.d(m);
			paramToModel(m);
			tool.save(m);
			put("msg","修改成功");
		}

		//显示数据
		String id = param("id");
		checkNull("id", id);
		Model m = T("news").get(id);
		put("news",m);
		render();

	}


	public void del(){
		
		Model m = T("news").get(param("id"));
		m.remove();
		jump("index");
	
}
	  public  void  add(){
			
			 
		  DBTool tool = Model.tool("news");
			//处理提交数据
			if(isPost()){ //isPost
				Model m = Model.tool("news").create(); //创建新的
				Log.d(m);
				paramToModel(m);
				tool.save(m);
				put("msg","添加成功");
				jump("ok");
			    
			}

			//显示数据
			render();
		 }
	  public void ok(){
		  render();
	  }

	  public void addzs(){
		 
		  DBTool tool = Model.tool("news");
		  if(isPost()){ //isPost
				Model n = Model.tool("news").create(); //创建新的
				Log.d(n);
				paramToModel(n);
				tool.save(n);
				put("msg","添加成功");
				jump("ok");
			    
			}
		  render();
		  
	  }


}
