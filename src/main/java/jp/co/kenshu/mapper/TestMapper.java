package jp.co.kenshu.mapper;

import java.util.List;

import jp.co.kenshu.dto.TestDto;
import jp.co.kenshu.entity.Test;

public interface TestMapper {

	//ユーザーidで該当ユーザーの情報を取得
	Test getTest(int id);

	//全てのユーザー情報を取得
	List<Test> getTestAll();

	//登録
	int insertTest(TestDto dto);

	//削除
	int deleteTest(int id);

	//更新
	int updateTest(TestDto dto);

}
