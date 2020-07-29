package mybatis;

import java.util.ArrayList;
import java.util.List;

import model.ReplyDataBean;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import model.BoardDataBean;

@Component
public class BoardDao{

    String namespace = "mybatis.Board";
    
    @Autowired
	public AbstractRepository ar;

    private BoardDao() {};

    //admin --- 2020.04.16 ---
    public List<BoardDataBean> getBoardList(BoardDataBean boardDataBean){
        SqlSession sqlSession = ar.getSqlSessionFactory().openSession();
        List<BoardDataBean> noticeList = new ArrayList<BoardDataBean>();
        try {
            noticeList = sqlSession.selectList(namespace + ".getBoardList", boardDataBean);
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return noticeList;
    }

    public BoardDataBean getTotalRows(BoardDataBean boardDataBean){
        SqlSession sqlSession = ar.getSqlSessionFactory().openSession();
        List<BoardDataBean> registeredBoardList;
        registeredBoardList = sqlSession.selectList(namespace+".getTotalRows", boardDataBean);
        boardDataBean.setTotal_rows(registeredBoardList.size());
        return boardDataBean;
    }

    public void insertNoticeData(BoardDataBean boardDataBean) {
        SqlSession sqlSession = ar.getSqlSessionFactory().openSession();
//        System.out.println("의심증상 : "+sqlSession.selectOne(namespace+".getMaxBoardNumber").getClass().getMethod("getPage_num"));//가져오네요 ㅎㅎ
        boardDataBean.setBoard_number(sqlSession.selectOne(namespace+".getMaxBoardNumber"));
        System.out.println(boardDataBean);
        boardDataBean.setBoard_number(boardDataBean.getBoard_number()+1);
        sqlSession.insert(namespace+".setNoticeData", boardDataBean);
        sqlSession.commit();
    }

    public void insertReplyData(ReplyDataBean replyDataBean) {
        SqlSession sqlSession = ar.getSqlSessionFactory().openSession();;
        sqlSession.insert(namespace+".setReplyData", replyDataBean);
        sqlSession.commit();
    }
    //admin --- 2020.04.16 ---

}
