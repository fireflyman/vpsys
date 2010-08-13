class Viper < ActiveRecord::Base
    named_scope :reward, :select => "id,cname,point",:limit=> 10,:order =>"point DESC"
    named_scope :latest, :select => "id,cname,updated_at",:limit=> 10,:order =>"updated_at DESC"
    named_scope :hot, :select => "id,cname,tolamount",:limit=> 10,:order =>"tolamount DESC"
   # named_scope :luckguy, :select => "id,cname,bdate",:limit=> 10,:order =>"bdate DESC"
end
