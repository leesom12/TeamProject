package common;

import java.text.SimpleDateFormat;
import java.util.Date;

public class CommonUtil {
	
	//자료실 첨부검토
			public static String getFile_dir_pds(){
				String pdsDir ="E:/track_jsh/work_project/web_homepage_jsl/WebContent/attach/pds/";
				
				return pdsDir;	
			}
	
	
	//뉴스 첨부검토
		public static String getFile_dir_news(){
			String newsDir ="E:/track_jsh/work_project/web_homepage_jsl/WebContent/attach/news/";
			
			return newsDir;	
		}
	
	//공지사항 첨부검토
	public static String getFile_dir_notice(){
		String noticeDir ="E:/track_jsh/work_project/web_homepage_jsl/WebContent/attach/notice/";
		
		return noticeDir;	
	}
	
	//오늘날짜
	public static String getToday(){
		Date time = new Date();
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
		String today = format1.format(time);
		return today;
	}
	 
	// 오늘 날짜 시분초 
	public static String getTodayTime(){
	   Date time = new Date();
	   SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	   String today = format.format(time);
	   return today;
	}
		
}
