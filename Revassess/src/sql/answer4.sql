/**
 * prompt: Write a query that will obtain the owner’s username, as well as the
 * category name, questions, and answers of flashcard contained within the study
 * set with and id of 4.
 */
 
 SELECT (username, categoryName, question, answer)
 	FROM User_Problem_4
 	INNER JOIN User_Study_Set ON User_Problem_4.username = User_Study_Set.username
 	WHERE Id = 4;