use role sysadmin;
create warehouse snowpark_etl_wh 
    with 
    warehouse_size = 'medium' 
    warehouse_type = 'standard' 
    auto_suspend = 60 
    auto_resume = true 
    min_cluster_count = 1
    max_cluster_count = 1 
    scaling_policy = 'standard';


create user snowpark_user 
  password = 'Test@12$4' 
  comment = 'this is a s snowpark user' 
  default_role = sysadmin
  default_secondary_roles = ('ALL')
  must_change_password = false;


grant role sysadmin to user snowpark_user_01;
grant USAGE on warehouse snowpark_etl_wh_01 to role sysadmin;
