package kr.board.web;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.board.domain.Board;
import kr.board.mapper.BoardMapper;

@Controller
public class BoardController {
	
	@Autowired
	private BoardMapper mapper;
	//1. 게시판리스트를 보여주라는 요청을 받아서 -> DB에서 가져오는일
	// HandlerMapping
	@RequestMapping("/boardList.do")
	public String boardList(Model model) {
		
		List<Board> list = mapper.boardList();
		model.addAttribute("list", list);
		//	    뷰의 논리적인 이름 --ViewResolver-->	뷰의 물리적인 이름(경로)
		return "boardList"; // ->/WEB-INF/views/boardList.jsp
	}
	@RequestMapping(value = "/boardInsert.do", method=RequestMethod.GET)
	public String boardInsertGet() {
		return "boardInsertForm"; // forward
		
	}
	//글쓰기요청을 처리하는 부분
	@RequestMapping(value = "boardInsert.do", method = RequestMethod.POST) // form의 parameter3개가 넘어온다(title,contents,writer)
	public String boardInsetPost(Board vo) {  
		mapper.boardInsert(vo); //저장
		// forward, redirect
		return "redirect:/boardList.do"; // /WEB-INF/views/boardList.do.jsp
	}
	@RequestMapping("/boardContent.do/{idx}")
	public String boardContent(@PathVariable("idx") int idx, Model model) { //?idx=8
		Board vo=mapper.boardContent(idx);
		model.addAttribute("vo",vo);
		return "boardContent";
	}
	@RequestMapping("/boardDelete.do/{idx}")
	public String boardDelete(@PathVariable("idx") int idx) {  // ?idx=10
		mapper.boardDelete(idx);
		return "redirect:/boardList.do";
	}
	
	@RequestMapping(value="/boardUpdate.do/{idx}", 
			method= RequestMethod.GET) 
		public String boardUpdateGet(@PathVariable("idx") int idx, Model model) {
			Board vo=mapper.boardContent(idx);
			model.addAttribute("vo",vo);
			return "boardUpdateForm"; // boardUpdateForm.jsp
		}
	@RequestMapping(value="/boardUpdate.do", 
			method= RequestMethod.POST) 
	public String boardUpdatePost(Board vo) {
		mapper.boardUpdate(vo);	
		return "redirect:/boardList.do";
	}
	
	
}