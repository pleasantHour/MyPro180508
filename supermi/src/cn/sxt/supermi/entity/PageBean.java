package cn.sxt.supermi.entity;

import java.util.List;

/**
 * 页面分页实体
 *
 */
public class PageBean<T> {
	private Integer currentPage = 0;//默认第一页
	private Integer maxResult = 2;//每页最大显示条数
	private Integer totalPage;//总页数
	private Integer count;//查询数据总条数
	private Integer page;//页面发过来的页码
	private List<T> tableList;//表数据
	
	
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getMaxResult() {
		return maxResult;
	}
	public void setMaxResult(Integer maxResult) {
		this.maxResult = maxResult;
	}
	public Integer getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public List<T> getTableList() {
		return tableList;
	}
	public void setTableList(List<T> tableList) {
		this.tableList = tableList;
	}
	
}
