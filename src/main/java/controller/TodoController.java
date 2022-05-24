package controller;

import java.io.IOException;

import dao.TodoRepository;
import dto.Todo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// ��Ĺ�� ��Ʈ�ѷ��� ���縦 ����
@WebServlet(name = "TodoController", 
	urlPatterns = {"/addTodo.do", "/toggleTodo.do", "/removeTodo.do", "/todos"})
public class TodoController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = -5789298759459019056L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String command = req.getRequestURI().substring(req.getContextPath().length());
		
		TodoRepository repository = TodoRepository.getInstance();
		if (command.equals("/todos")) {
			// repository => Json
			resp.setHeader("Access-Control-Allow-Headers", "Content-Type");
			resp.setHeader("Access-Control-Allow-Origin", "*");
			resp.setContentType("application/json");
			resp.getWriter().print("{ \"id\": 0, \"task\": \"����\" }");		
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// ��û �ּ� (���� ��� processAddTodo.do)
		String command = req.getRequestURI().substring(req.getContextPath().length());
		
		TodoRepository repository = TodoRepository.getInstance(); // ������ ��ü ���
		
		if (command.equals("/addTodo.do")) {
			String task = req.getParameter("task");
			Todo todo = new Todo(task);
			repository.addTodo(todo);
			
		} else if (command.equals("/toggleTodo.do")) {
			long id = Long.parseLong(req.getParameter("id"));
			repository.toggle(id);
			
		} else if (command.equals("/removeTodo.do")) {
			long id = Long.parseLong(req.getParameter("id"));
			repository.remove(id);
		}
				
		req.getSession().setAttribute("todos", repository.getTodos());
		
		// �����̷�Ʈ�ϸ鼭 �ּ�â���� ���� �� ��
		req.getRequestDispatcher("todolist.jsp").forward(req, resp);
	}
}