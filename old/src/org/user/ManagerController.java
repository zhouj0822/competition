package org.user;

import java.util.Date;

import org.docshare.log.Log;
import org.docshare.mvc.Controller;
import org.docshare.orm.DBTool;
import org.docshare.orm.LasyList;
import org.docshare.orm.Model;

public class ManagerController extends Controller{
	public void top(){
		render();
	}
	public void sorry(){
		render();
	}
	public void addgame(){
		

		DBTool tool = Model.tool("game");
		//处理提交数据
		if(isPost()){ //isPost
			Model m = Model.tool("game").create(); //创建新的
			
			paramToModel(m);
			m.put("userid", sess("uid"));
			m.put("tm", new Date());
			Log.d(m);
			tool.save(m);
			put("msg","添加成功");
			jump("/news/ok");
		}else {
			//显示数据
			render();
		}
	}
	public void addshenqing(){
		DBTool tool = Model.tool("shenqing");
		if(isPost()){
		Model m1 = tool.get("place",param("place"));
		Model m2 = tool.get("tm",param("tm"));
		   if(m1==null && m2==null){
		     Model m = Model.tool("shenqing").create();

		            paramToModel(m);
		            Log.d(m);
	           	   tool.save(m);
		//sess("success","申请成功");
		           jump("/news/ok");
		           return;
		}
		  else{
		     put("unsuccess","申请不成功");
		     }
		}
	   
		render();
	

	}

public void index(){
	
	
	render();
}
public void shequ(){
	
	DBTool tool = Model.tool("shequ");
	LasyList list = tool.all().limit(0, 30);
	put("shequ", list);
		render();
   }

public void xinxi(){
	render();
}

public void addzhidao(){
	  DBTool tool = Model.tool("zhidao");
	//处理提交数据
	if(isPost()){ //isPost
		Model m = Model.tool("zhidao").create(); //创建新的
		Log.d(m);
		paramToModel(m);
		tool.save(m);
		put("msg","添加成功");
		jump("/news/success");
}
	render();
}

	public void Manager(){
		if(isPost()){
			String usr=param("uname");
			String pwd=param("pwd");
			//数据库查询
			LasyList list  = Model.tool("manager") //获取dbtool对象
					.all() //获取lasylist对象
					.eq("mname", usr) //等式条件
					.eq("mpwd", pwd); 
					Model m = list.one();
					if(m==null){
						put("msg", "用户名或密码错误");
					}else{
						sess("uid",usr);
						jump("manage");
						return;
					}
		}
		render();
		
	}
	public void game(){
		DBTool tool = Model.tool("game");

		LasyList list = tool.all().limit(0, 30);
		

		put("game", list);
        render();
	}
	public void editpost(){
		

		DBTool tool = Model.tool("shequ");
		//处理提交数据
		if(isPost()){ //isPost
			Model m = tool.get(paramInt("id"));
			Log.d(m);
			paramToModel(m);
			tool.save(m);
			put("msg","修改成功");
		}

		//显示数据
		Integer userid = paramInt("id");
                put("id",tool.get(userid));
		render();

	   }
	public void del(){
		Integer id = paramInt("id");
		Model.tool("shequ").del(id);
		jump("/manager/shequ");
		
		
	}
		
	}
	
	

