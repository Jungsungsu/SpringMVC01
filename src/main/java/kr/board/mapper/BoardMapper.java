package kr.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;

import kr.board.domain.Board;

// JDBC -> CRUD
// 1. Java+SQL 혼합된 형태 : 유지보수가 어렵다
// 2. 개발 생산성이 떨어진다. : 어렵고, 개발속도가 느리다.
// MyBatis Framework : http://mybatis.org
// Spring JPA
public interface BoardMapper {
	// 1. 접속기능(X)
	// 2. 게시판리스트 가져오는 기능
	public List<Board> boardList(); // 추상메서드 -> SQL(select ~)
	public void boardInsert(Board vo); // SQL(insert~)
	public Board boardContent(int idx); // SQL(select ~ where idx=8)
	
	@Delete("delete from board where idx=#{idx}")
	public void boardDelete(int idx); // SQL(delete~ )
	
	public void boardUpdate(Board vo); //SQL(update~ )
	
}
