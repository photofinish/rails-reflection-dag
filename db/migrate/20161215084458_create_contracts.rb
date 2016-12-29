class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
    	t.string 		:compact_no #合同编号
			t.string 		:customer_id #客户信息
			t.string 		:compact_attribute #合同性质
			t.datetime 	:signed_date  #签约日期
			t.datetime 	:effective_time  #有效日期
			t.decimal 	:deposit_line #保证金额度
			t.integer 	:deposit_return_times  #保证金返还倍数
			t.string 		:compact_task #合同任务
			t.string 		:compactor #签约人
			t.integer 	:return_policy_id #返利政策
			t.integer 	:compact_return_mode_id #合同返还方式
			t.string 		:return_mode #返利方式
			t.integer 	:platform_id #平台
			t.integer 	:customer_classify_id #客户归类
			t.decimal 	:performance_deposit #履约保证金
			t.decimal   :decoration_subsidy_standard # 装修补贴标准
			t.decimal   :sum_subsidy # 补贴合计
			t.string   	:decoration_subsidy_return_mode # 装修补贴返还方式
			t.string   	:decoration_subsidy_return_date # 装修补贴返还期限
			t.string 		:deposit_return_mode #保证金返还方式
			t.decimal 	:lease_area #租赁面积
			t.integer 	:purpose_id #用途
			t.decimal 	:rental_unit_price  #租金单价
			t.decimal 	:monthly #月租金
			t.string 		:rent_change_note #租金变动说明
			t.decimal   :property_management_fee #物业管理费单价
			t.decimal   :monthly_management_fee #月管理费
			t.integer 	:rent_way #交租方式
			t.string 		:party_a #甲方
			t.string 		:party_a_contact  #甲方联系人
			t.string 		:party_a_contact  #甲方联系人
			t.string 		:party_a_mobile  #甲方联系电话
			t.string 		:party_b #乙方
			t.string 		:party_b_contact #乙方联系人
			t.string 		:party_b_mobile  #乙方联系电话
			t.string 		:product_brand #委托产品品牌
			t.string 		:category     #产品归类
			t.integer   :performance_deposit_return_id #履约保证金返利
			t.integer   :ad_return_id #广告返利
			t.integer   :material_return_id	#物料返利
			# t.decimal 	:recoup_funds     #回笼金
			# t.decimal 	:sales           #销售额
			# t.decimal 	:return_rates    #返还利率
			t.integer 	:contract_type_id #合同类型
			t.integer 	:applicant_id #申请人
			t.datetime 	:apply_time #申请时间
			t.integer 	:status, default: 0 
			t.boolean 	:active, default: true #合同有效性
			t.text 			:remark #补充说明

      t.timestamps null: false
    end
  end
end
