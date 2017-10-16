package org.kpu.academy.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.kpu.academy.domain.AttendanceVO;
import org.kpu.academy.domain.Criteria;
import org.kpu.academy.domain.LectureVO;
import org.kpu.academy.domain.TakeCourseVO;
import org.springframework.stereotype.Repository;

@Repository
public class LectureDAOImpl implements LectureDAO {

	@Inject
	SqlSession session;
	
	private static final String namespace = "org.kpu.academy.mapper.LectureMapper";
	
	@Override
	public void create(LectureVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace + ".create", vo);
	}

	@Override
	public LectureVO read(Integer lno) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".read", lno);
	}

	@Override
	public void update(LectureVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(Integer lno) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace + ".delete", lno);
	}

	@Override
	public List<LectureVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".listAll");
	}
	
	@Override
	public List<LectureVO> listPage(Criteria cri) throws Exception {
		return session.selectList(namespace + ".listPage", cri);
	}
	
	@Override
	public List<LectureVO> listPageByUno(Criteria cri, int uno) throws Exception {
		Map<String, Object> params = new HashMap<>();
		params.put("pageStart", cri.getPageStart());
		params.put("perPageNum", cri.getPerPageNum());
		params.put("uno", uno);
		
		return session.selectList(namespace + ".listPageByUno", params);
	}
	
	@Override
	public int listCount() throws Exception {
		return session.selectOne(namespace + ".listCount");
	}
	
	@Override
	public int listCountByUno(int uno) throws Exception {
		return session.selectOne(namespace + ".listCountByUno", uno);
	}
	
	@Override
	public List<LectureVO> listPageByUnoForStudent(Criteria cri, int uno) throws Exception {
		Map<String, Object> params = new HashMap<>();
		params.put("pageStart", cri.getPageStart());
		params.put("perPageNum", cri.getPerPageNum());
		params.put("uno", uno);
		
		return session.selectList(namespace + ".listPageByUnoForStudent", params);
	}
	
	@Override
	public int listCountByUnoForStudent(int uno) throws Exception {
		return session.selectOne(namespace + ".listCountByUnoForStudent", uno);
	}
	
	@Override
	public void sCreate(TakeCourseVO vo) throws Exception {
		session.insert(namespace + ".sCreate", vo);
	}
	
	@Override
	public TakeCourseVO sRead(Integer lno, Integer uno) throws Exception {
		Map<String, Integer> params = new HashMap<>();
		params.put("lno", lno);
		params.put("uno", uno);
		
		return session.selectOne(namespace + ".sRead", params);
	}
	
	@Override
	public void sUpdate(TakeCourseVO vo) throws Exception {
		session.update(namespace + ".sUpdate", vo);
	}
	
	@Override
	public void sDelete(Integer lno, Integer uno) throws Exception {
		Map<String, Integer> params = new HashMap<>();
		params.put("lno", lno);
		params.put("uno", uno);
		
		session.delete(namespace + ".sDelete", params);
	}
	
	@Override
	public List<TakeCourseVO> sList(Criteria cri, Integer lno) throws Exception {
		Map<String, Integer> params = new HashMap<>();
		params.put("pageStart", cri.getPageStart());
		params.put("perPageNum", cri.getPerPageNum());
		params.put("lno", lno);
		
		return session.selectList(namespace + ".sList", params);
	}
	
	@Override
	public int sListCount(Integer lno) throws Exception {
		return session.selectOne(namespace + ".sListCount", lno);
	}
	
	@Override
	public void aCreate(AttendanceVO vo) throws Exception {
		session.insert(namespace + ".aCreate", vo);
	}
	
	@Override
	public AttendanceVO aRead(Integer ano) throws Exception {	
		return session.selectOne(namespace + ".aRead", ano);
	}
	
	@Override
	public void aUpdate(AttendanceVO vo) throws Exception {
		session.update(namespace + ".aUpdate", vo);
	}
	
	@Override
	public void aDelete(Integer ano) throws Exception {
		session.delete(namespace + ".aDelete", ano);
	}
	
	@Override
	public List<AttendanceVO> aList(Integer lno, Integer uno) throws Exception {
		Map<String, Integer> params = new HashMap<>();
		params.put("lno", lno);
		params.put("uno", uno);
		
		return session.selectList(namespace + ".aList", params);
	}
}
