# Instagram-DB-Clone

Creating a schema to replicate a base level Instagram Database. This will have the lines of code for creation of various tables and a description of it's schema


## Schema

To describe the schema , initially we will be having a table of **USERS** with 3 values  i.e ,
id username , created_at (timestamp of when the user created his/her *Instagram* account) 
. The *id* will be a primary key in this table.

Now next we will be creating the **Photos** table and figuring out its schema. We should have
a number for the number of photos posted which will be given by an *id*. Also we will 
have a row for *image_url* , *timestamp* , *created_at* as a timestamp for when the photo was uploaded.
The *user_id* will be a foreign key referencing *id* from the **USERS** table.


![foto1](https://user-images.githubusercontent.com/80326355/179740844-fec02f7d-be64-4385-8bca-560d52594c48.jpg)


Then we move on the **Comments** part of our schema. Here we have to realise that a comment can be done by the same person on multiple posts and also that each posts will have multiple comments. This this table will have a many to many relationship. Thus we will need two foreign keys with columns named as *photo_id* and *user_id* referencing columns as shown in the depiction below. They are also unique to each photo.


![foto2](https://user-images.githubusercontent.com/80326355/179741475-d016389a-f9fc-4253-9f62-36ab6877e538.jpg)


Now when we consider the **Likes** table we dont need a unique id , but we do need to make sure that the number of likes a post can recieve is limited to one per account. This can be done using the primary keyword for the *photo_id* and the *user_id*



![foto3](https://user-images.githubusercontent.com/80326355/179744130-bf7441cc-ba03-423c-bbfc-f1800a564e47.jpg)


Now defining the **Follows** table , we need not have any sort of unique id but will need to reference the keys using the foreign key.


![foto4](https://user-images.githubusercontent.com/80326355/179744733-6039ff27-29b2-42bc-bb01-a1386143d96a.jpg)


Now coming up with a schema for Hashtags is a unique challenge within itself , and one can come up with multiple solutions for implementing this , but we will have to weigh in on their advantages and disadvantages. So here one solution is to make tables of *photos* , *tags* and *photo_tag*. This will help us form unlimited number of tags for a post and also add additional information. But the disadvantages lie in the fact that more work will be required when insertion/updation like operations are performed.

![foto5](https://user-images.githubusercontent.com/80326355/179745461-826f3ccf-2485-49f0-9a92-15e246ef2998.jpg)



