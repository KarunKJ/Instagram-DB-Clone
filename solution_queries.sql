use instagram1;
show tables;


-- finding the 5 oldest users
select username from users order by created_at asc limit 5;

-- figuring out what day of the week most users register on to do an ad campaign
select dayname(created_at) , count(dayname(created_at)) from users group by dayname(created_at) ;

select * from photos;

-- finding out inactive users
select username from users
left join photos 
on users.id = photos.user_id
where photos.id is null;

-- checking out who got the most like photo
SELECT 
    username,
    photos.id,
    photos.image_url, 
    COUNT(*) AS total
FROM photos
INNER JOIN likes
    ON likes.photo_id = photos.id
INNER JOIN users
    ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;

-- how many times does each user post 
select * from users;
select * from photos;
select username , count(user_id) from users 
left join photos 
on users.id = photos.user_id
group by username;

-- find out the most common hastags posted
select * from tags;
select * from photo_tags;

select tag_name , count(tag_name) as num from tags
inner join photo_tags
on photo_tags.tag_id = tags.id
group by tag_name
order by num desc limit 5;

-- finding out the bot accounts
select * from users;
select * from likes;
SELECT username, 
       Count(*) AS num_likes 
FROM   users 
       INNER JOIN likes 
               ON users.id = likes.user_id 
GROUP  BY likes.user_id 
HAVING num_likes = (SELECT Count(*) 
                    FROM   photos); 
