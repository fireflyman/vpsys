#require 'rmmseg'
#require 'rmmseg/ferret'
class Viper < ActiveRecord::Base
     #……………………………………………………其他实现………………………………………………………………
  #如果想重新建立索引，只需要删除对应的文件夹，并重启服务,也可以使用Model.rebuild_index方法
  #=======================搜索部分=====================
=begin
  acts_as_ferret({
      :fields => {
        :title => {
          :store => :yes,
          :boost=> 20 #设置权重
        },
        :body => {
          :boost=> 1,
          :store => :yes,
          :term_vector => :with_positions_offsets
        },
        :author => {:store => :yes},
        :created_at_s => {:index => :untokenized,:store => :yes},
        :updated_at_s => {:index => :untokenized,:store => :yes}
      },
      :store_class_name=>true,
      :analyzer => RMMSeg::Ferret::Analyzer.new
    })
  def created_at_s
    created_at.to_s(:db)
  end
 
  def updated_at_s
    updated_at.to_s(:db)
  end
 
  def body
    first_post.body
  end
=end
#……………………………………………………其他实现………………………………………………………………
    named_scope :reward, :select => "id,cname,point",:limit=> 10,:order =>"point DESC"
    named_scope :latest, :select => "id,cname,updated_at",:limit=> 10,:order =>"updated_at DESC"
    named_scope :hot, :select => "id,cname,tolamount",:limit=> 10,:order =>"tolamount DESC"
   # named_scope :luckguy, :select => "id,cname,bdate",:limit=> 10,:order =>"bdate DESC"
#======================計時器問題=============================



end
