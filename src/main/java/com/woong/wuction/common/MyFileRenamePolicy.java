package com.woong.wuction.common;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.oreilly.servlet.multipart.FileRenamePolicy;

public class MyFileRenamePolicy implements FileRenamePolicy {

	@Override
	public File rename(File imgFile) {
		
		String originName = imgFile.getName();
		
		// 1) 파일 업로드 시간 (년월일시분초)
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
				
		// 2) 5자리 랜덤값 : Math.random()
		int randNum = (int)(Math.random() * 90000 + 10000);		// 12123
				
		// 3) 원본 파일의 확장자
		//    문자열.substring(마지막 .의 위치)
		//    				 -> 문자열.lastIndexOf(찾을문자열) => 마지막 위치
		String ext = originName.substring( originName.lastIndexOf(".") ); // => .jpg
				
		String changeName = currentTime + randNum + ext;	// -> 024091206000013123.jpg
				
		return new File(imgFile.getParent(), changeName);	// new File(원본파일 디렉토리, 변경할 파일명)
				
	}

}
