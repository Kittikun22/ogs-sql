"# ogs-sql" 
<br>
ข้อ 3.1 => SELECT CONCAT(users.name_prefix, ' ', users.first_name, ' ', users.last_name) AS fullname,  start_date, end_date, room_name FROM bookings INNER JOIN rooms ON bookings.rooms_id = rooms.id INNER JOIN users ON bookings.users_id = users.id
<br>
<br>
ข้อ 3.2 => SELECT CONCAT(users.name_prefix, ' ', users.first_name, ' ', users.last_name) AS fullname,  start_date, end_date, room_name FROM bookings INNER JOIN rooms ON bookings.rooms_id = rooms.id INNER JOIN users ON bookings.users_id = users.id WHERE start_date <= '2021-09-02 19:00:59'  AND end_date >= '2021-09-02 15:00:00';
