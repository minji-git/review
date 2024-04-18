package com.project2.vo;

import java.sql.Date;

public class ReviewVO {
	private int rNo;
	private int mNo;
	private int aNo;
	private String rNick;
	private String rTitle;
	private String rContent;
	private Date rDate;
	private int rRec;
	public int getrNo() {
		return rNo;
	}
	public void setrNo(int rNo) {
		this.rNo = rNo;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public int getaNo() {
		return aNo;
	}
	public void setaNo(int aNo) {
		this.aNo = aNo;
	}
	public String getrNick() {
		return rNick;
	}
	public void setrNick(String rNick) {
		this.rNick = rNick;
	}
	public String getrTitle() {
		return rTitle;
	}
	public void setrTitle(String rTitle) {
		this.rTitle = rTitle;
	}
	public String getrContent() {
		return rContent;
	}
	public void setrContent(String rContent) {
		this.rContent = rContent;
	}
	public Date getrDate() {
		return rDate;
	}
	public void setrDate(Date rDate) {
		this.rDate = rDate;
	}
	public int getrRec() {
		return rRec;
	}
	public void setrRec(int rRec) {
		this.rRec = rRec;
	}
	
	@Override
	public String toString() {
		return "ReviewVO [rNo=" + rNo + ", mNo=" + mNo + ", aNo=" + aNo + ", rNick=" + rNick + ", rTitle=" + rTitle
				+ ", rContent=" + rContent + ", rDate=" + rDate + ", rRec=" + rRec + "]";
	}
}
