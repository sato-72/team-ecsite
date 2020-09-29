package jp.co.internous.grapes.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.internous.grapes.model.domain.MstCategory;
import jp.co.internous.grapes.model.domain.MstProduct;
import jp.co.internous.grapes.model.form.SearchForm;
import jp.co.internous.grapes.model.mapper.MstCategoryMapper;
import jp.co.internous.grapes.model.mapper.MstProductMapper;
import jp.co.internous.grapes.model.session.LoginSession;

@Controller
@RequestMapping("/grapes")
public class IndexController {
	
	@Autowired
	private LoginSession loginSession;
	
	@Autowired
	MstCategoryMapper mstCategoryMapper;
	
	@Autowired
	MstProductMapper mstProductMapper;
	
	@RequestMapping("/")
	public String index(Model m) {
		
		//未ログイン状態、かつ仮ユーザーIDを保持していない場合
		if (!loginSession.getLogined() && loginSession.getTmpUserId() == 0) {
			//仮ユーザーID（負の9桁のランダムな数字）を作成
			int tmpUserId = (int)(Math.random() * 1000000000 * -1);
			// 仮ユーザーIDが9桁になるまで10倍する
			while (tmpUserId > -100000000) {
				tmpUserId *= 10;
			}
			//sessionに保持
			loginSession.setTmpUserId(tmpUserId);
		}
		
		// カテゴリーを取得
		List<MstCategory> categoryList = mstCategoryMapper.find();
		
		// 商品情報を取得
		List<MstProduct> productsList = mstProductMapper.find();
		
		m.addAttribute("categorys",categoryList);
		//初期表示のため、カテゴリーは選択されていない状態にする
		m.addAttribute("selected", 0);
		m.addAttribute("products",productsList);
		m.addAttribute("loginSession",loginSession);
		return "index";
	}

	@RequestMapping("/searchItem")
	public String search(SearchForm f,Model m) {
		List<MstProduct> productsList;
		
		//検索ワードを編集（全角スペース→半角スペース。2個以上の半角スペース→1個の半角スペース。先頭と末尾のスペースを削除。）
		String keywords = f.getKeywords().replaceAll("　", " ").replaceAll("\\s{2,}", " ").trim();
		//トップページで検索されたものがDBに存在するかチェック
		if (f.getCategory() == 0) {
			//カテゴリー未選択、検索ワード入力の場合（検索ワードをスペース区切りで分割）
			productsList = mstProductMapper.findByProductName(keywords.split(" "));
		} else {
			//カテゴリー選択、検索ワード未入力or入力の場合（検索ワードをスペース区切りで分割）
			productsList = mstProductMapper.findByCategoryIdAndProductName(f.getCategory(), keywords.split(" "));
		}
		
		// カテゴリーを取得
		List<MstCategory> categoryList = mstCategoryMapper.find();
		
		m.addAttribute("keywords", keywords);
		//カテゴリーを選択されている状態にする
		m.addAttribute("selected", f.getCategory()); 
		m.addAttribute("categorys", categoryList); 
		m.addAttribute("products", productsList);
		m.addAttribute("loginSession",loginSession);
		
		return "index";
	}
}