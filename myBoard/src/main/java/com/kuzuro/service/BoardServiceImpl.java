package com.kuzuro.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kuzuro.domain.BoardVO;
import com.kuzuro.domain.Criteria;
import com.kuzuro.domain.ReplyVO;
import com.kuzuro.domain.SearchCriteria;
import com.kuzuro.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO dao;

	// 작성 
	@Override
	public void write(BoardVO vo) throws Exception {
		dao.write(vo);		
	}
	
	// 조회
	@Override
	public BoardVO read(int bno) throws Exception {
		return dao.read(bno);
	}
	
	// 수정 
	@Override
	public void update(BoardVO vo) throws Exception {
		dao.update(vo);
	}

	// 삭제
	@Override
	public void delete(int bno) throws Exception {
		dao.delete(bno);		
	}
 
	// 목록
	@Override
	public List<BoardVO> list() throws Exception {
		return dao.list();
	}
 
	// 목록 + 페이징
	@Override
	public List<BoardVO> listPage(Criteria cri) throws Exception {
		return dao.listPage(cri);
	}

	// 게시물 총 갯수 
	@Override
	public int listCount() throws Exception {
		return dao.listCount();
	}

	// 목록 + 페이징 + 검색
	@Override
	public List<BoardVO> listSearch(SearchCriteria scri) throws Exception {
		return dao.listSearch(scri);
	}

	// 검색 결과 갯수
	@Override
	public int countSearch(SearchCriteria scri) throws Exception {
		return dao.countSearch(scri);
	}

	@Override
	public List<ReplyVO> readReply(int bno) throws Exception {
		return dao.readReply(bno);
	}
 
} 