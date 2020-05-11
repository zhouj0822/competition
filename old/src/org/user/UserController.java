package org.user;

import org.docshare.log.Log;
import org.docshare.mvc.Controller;
import org.docshare.mvc.except.NullParamException;
import org.docshare.orm.DBTool;
import org.docshare.orm.LasyList;
import org.docshare.orm.Model;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;






public class UserController extends Controller{
	public void Topp(){
		DBTool tool = Model.tool("news");

		LasyList list1 = tool.all().limit(0, 6);
		list1 = tool.all().eq("sortid","1");

		put("news1", list1);


		LasyList list2 = tool.all().limit(0, 6);
		list2 = tool.all().eq("sortid","2");

		put("news2", list2);


		LasyList list3 = tool.all().limit(0, 6);
		list3 = tool.all().eq("sortid","3");

		put("news3", list3);
		render();
	}
	public void Topp1(){
		int id = paramInt("id");
//		//��ѯ�鼮��Ϣ
		Model news = T("news").get(id);
		put("news",news);

	
		render();


	}

	public void baoming(){

		DBTool tool = Model.tool("news");

		LasyList list2 = tool.all().limit(0, 30);
		list2 = tool.all().eq("sortid","2");

		put("news2", list2);
		render();
	}
	public void past(){
		DBTool tool = Model.tool("news");

		LasyList list3 = tool.all().limit(0, 30);
		list3 = tool.all().eq("sortid","3");

		put("news3", list3);
		render();
	}
	public void gonggao(){
		DBTool tool = Model.tool("news");

		LasyList list1 = tool.all().limit(0, 30);
		list1 = tool.all().eq("sortid","1");

		put("news1", list1);
		render();
	}
	public void dongtai(){
		DBTool tool = Model.tool("news");

		LasyList list2 = tool.all().limit(0, 30);
		list2 = tool.all().eq("sortid","2");

		put("news2", list2);

		render();
	}
	public void shequ(){

		DBTool tool = Model.tool("shequ");

		LasyList list = tool.all().limit(0, 30);
		

		put("shequ", list);
        render();
	}



	public void zhuce(){

		DBTool tool = Model.tool("user");
		//�����ύ����
		if(isPost()){ //isPost
			Model m = Model.tool("user").create(); //�����µ�
			Log.d(m);
			paramToModel(m);
			tool.save(m);
			put("msg","��ӳɹ�");
			jump("/user/login");

		}

		//��ʾ����
		render();
	}

	
	//123
	public void login(){ //��½������?
		if(isPost()){
			String userid = param("userid");
			String password = param("password");
			System.out.println("userid = "+userid +",password = "+password);
			Model m = Model.tool("user").all().eq("userid", userid).eq("password", password).one();
			if(m == null){
				put("msg","������¼������");
			}else if("tch".equals(m.get("rank"))){//�ж�Ȩ��
				sess("uid",m.get("userid"));//��session�д洢����
				sess("rank",m.get("rank"));
				sess("id",m.get("id"));
				jump("/manager/top"); //response.sendRedirect(teacher.jsp)
				return;
			}else if("stu".equals(m.get("rank"))){//�ж�Ȩ��
				sess("uid",m.get("userid"));//��session�д洢����
				sess("rank",m.get("rank"));
				jump("/user/baoming"); ////response.sendRedirect(admin.jsp)
				return;
				
			}
			
		}
		render();
	}
	
	

//123


		   


	/**
	 * ��������
	 */
	public void post(){
		DBTool tool = Model.tool("shequ");
		//�����ύ����
		if(isPost()){ //isPost
			Model m = Model.tool("shequ").create(); //�����µ�
			
			paramToModel(m);
			m.put("userid", sess("uid"));
			m.put("xtm", new Date());
			Log.d(m);
			tool.save(m);
			put("msg","��ӳɹ�");
			// ����Ժ���ת��ҳ�� /user/shequ
			//jump("/news/success");
			jump("/user/shequ");
		}else {
			//��ʾ����
			render();
		}

		
	}
	public void post1(){
		int id = paramInt("id");
//		//��ѯ�鼮��Ϣ
		Model shequ = T("shequ").get(id);
		put("shequ",shequ);

	
		render();


	}

	public void sorry(){


	
		render();


	}




	public void index() throws NullParamException{
	        String str = sessStr("uid");
     		DBTool tool = Model.tool("user");
	        Model mm = Model.tool("user").get("userid",str);
	        System.out.println(mm);
	        put("mmm",mm);
			//�����ύ����
			if(isPost()){ //isPost
				Model m = tool.get(param("id"));
				m.put("userid", sess("uid"));
				Log.d(m);
				paramToModel(m);

				tool.save(m);
				put("msg","�޸ĳɹ�");
				
				String id = param("id");
				//checkNull("id", id);
				Model m1 = T("user").get(id);
				put("user",m1);
				jump("Topp");
			}

			//��ʾ����
			
			render();

		}

	
	public void edit() throws NullParamException{
		DBTool tool = Model.tool("user");
		//�����ύ����
		if(isPost()){ //isPost
			Model m = tool.get(param("id"));
			Log.d(m);
			paramToModel(m);
			tool.save(m);
			put("msg","�޸ĳɹ�");
		}

		//��ʾ����
		String id = param("id");
		checkNull("id", id);
		Model m = T("user").get(id);
		put("user",m);
		render();

	}


}


