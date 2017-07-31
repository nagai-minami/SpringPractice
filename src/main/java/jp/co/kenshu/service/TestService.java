package jp.co.kenshu.service;

import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jp.co.kenshu.dto.TestDto;
import jp.co.kenshu.entity.Test;
import jp.co.kenshu.mapper.TestMapper;

@Service
public class TestService {

	@Autowired
	private TestMapper testMapper;

	public TestDto getTest(Integer id){
		TestDto dto = new TestDto();
		Test entity = testMapper.getTest(id);
		BeanUtils.copyProperties(entity,dto);
		return dto;
	}


	public List<TestDto> getTestAll(){

		//mapperから取得した結果をListに詰める
		List<Test> testList = testMapper.getTestAll();

		//画面に表示するためにDtoに詰めるがBeanUtils.copyPropertiesが簡単に使えない…
		//リストに詰められたentityをDtoに詰めなおす作業⇒convertToDtoメソッド
		List<TestDto> resultList = convertToDto(testList);
		return resultList;
	}


	//リストに詰められたentityをDtoに詰めなおす
	private List<TestDto> convertToDto(List<Test> testList){

		List<TestDto> resultList = new LinkedList<TestDto>();
		for(Test entity : testList){
			TestDto dto = new TestDto();
			BeanUtils.copyProperties(entity, dto);
			resultList.add(dto);
		}
		return resultList;
	}

	//登録
	public int insertTest(TestDto dto) {
	    //int count = testMapper.insertTest(name);
		//return count;

		int count = testMapper.insertTest(dto);
		return count;
	}

	//削除
	public int deleteTest(int id) {
		int count = testMapper.deleteTest(id);
		return count;
	}

	//更新
	public int updateTest(TestDto dto) {
		int count = testMapper.updateTest(dto);
		return count;
	}
}
