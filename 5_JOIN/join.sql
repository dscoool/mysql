USE dataeng;
SELECT * FROM topic INNER JOIN author ON topic.author_id = author.aid;

SELECT * FROM topic LEFT JOIN author ON topic.author_id = author.aid;
SELECT * FROM topic RIGHT JOIN author ON topic.author_id = author.aid;

SELECT * FROM topic CROSS JOIN author;