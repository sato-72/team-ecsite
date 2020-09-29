package jp.co.internous.grapes.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import jp.co.internous.grapes.model.domain.MstCategory;

@Mapper
public interface MstCategoryMapper {
	
	//カテゴリーを取得
	@Select("SELECT * FROM mst_category")
	List<MstCategory> find();
}