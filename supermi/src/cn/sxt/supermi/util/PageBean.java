package cn.sxt.supermi.util;
/**
 * 分页工具类
 * @author Allen-wen
 *
 */
public class PageBean {
	//当前页
	Integer currentPage = 1;
	//每页显示的记录数
	Integer maxResult = 5;
	//总记录数
	long count ;
	
	Integer pageCount;
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
	public long getCount() {
		return count;
	}
	public void setCount(long count) {
		this.count = count;
	}
	public Integer getPageCount() {
		return pageCount;
	}
	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}
	
	
}
