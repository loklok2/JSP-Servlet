package fileupload;

public class MyFileDTO {
	private String idx;
	private String title;
	private String cate;
	private String ofile;
	private String sfile;
	private String postdate;
	//alt + shift+ s = 게터 세터 투스트링
	
	public String getIdx() {
		return idx;
	}
	@Override
	public String toString() {
		return "MyFileDTO [idx=" + idx + ", title=" + title + ", cate=" + cate + ", ofile=" + ofile + ", sfile=" + sfile
				+ ", postdate=" + postdate + "]";
	}
	public void setIdx(String idx) {
		this.idx = idx;
	}
	public String getTitle() {
		return title;
	}
	public String getCate() {
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	public String getOfile() {
		return ofile;
	}
	public void setOfile(String ofile) {
		this.ofile = ofile;
	}
	public String getSfile() {
		return sfile;
	}
	public void setSfile(String sfile) {
		this.sfile = sfile;
	}
	public String getPostdate() {
		return postdate;
	}
	public void setPostdate(String postdate) {
		this.postdate = postdate;
	}
	public void setTitle(String title) {
		this.title = title;
	}

}
