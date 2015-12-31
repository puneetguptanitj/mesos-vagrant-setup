-- Query to visualize table
insert into app_center_visualizations values (1,
'{
    "db_table_name":"${db_table_name}",
    "vizType":"table",
    "version":"1.0",
    "title":"Data from ${db_table_name}"
}');
