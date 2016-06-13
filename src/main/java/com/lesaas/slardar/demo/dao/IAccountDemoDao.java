package com.lesaas.slardar.demo.dao;

import java.util.List;
import java.util.Map;

import com.lesaas.slardar.base.util.MyBatisRepository;
import com.lesaas.slardar.demo.pageModel.AccountPageModel;


/**
 * 
 * @author ysc
 *
 */
@MyBatisRepository
public interface IAccountDemoDao {

	/**
	 * 获取数据列表
	 * @param param
	 * @return
	 */
	public List<AccountPageModel> getAccountList(Map<String,Object> param); 
}
