USE [ELearning]
GO
INSERT [dbo].[Instructors] ([Id], [Name], [Title], [AvatarUrl], [Biography]) VALUES (N'028c1ea3-b334-49fc-a7ea-24be8dc11742', N'Alice Johnson', N'Senior Fullstack Developer', N'1.jpg', N'Alice has 12+ years of experience in web development, specializing in React and .NET.')
INSERT [dbo].[Instructors] ([Id], [Name], [Title], [AvatarUrl], [Biography]) VALUES (N'342ce20b-6156-4d08-9db6-1be55e0ee216', N'Emily Brown', N'UI/UX Designer & Product Strategist', N'2.jpg', N'Emily has designed intuitive user experiences for startups and enterprises for over a decade.')
INSERT [dbo].[Instructors] ([Id], [Name], [Title], [AvatarUrl], [Biography]) VALUES (N'5738f7e7-876a-4785-82af-845f9d1c1228', N'Michael Lee', N'Software Engineer & C# Expert', N'3.jpg', N'Michael specializes in C# development with over 8 years in the software industry.')
INSERT [dbo].[Instructors] ([Id], [Name], [Title], [AvatarUrl], [Biography]) VALUES (N'd7e9c649-041e-4ba4-8a88-c78cf553adee', N'Sarah Williams', N'Data Scientist & AI Specialist', N'4.jpg', N'Sarah has worked with leading tech companies, focusing on AI, machine learning, and data visualization.')
GO
INSERT [dbo].[Courses] ([Id], [Title], [Description], [Category], [Level], [Hours], [Price], [InstructorId], [ImageUrl], [AboutContent]) VALUES (N'acd49198-0bb5-4625-854f-a8bbf0a5ca04', N'Fullstack Web Development Bootcamp', N'Master front-end and back-end technologies to become a fullstack web developer.', N'Web Development', N'Beginner', 40, CAST(99.99 AS Decimal(18, 2)), N'028c1ea3-b334-49fc-a7ea-24be8dc11742', N'1.png', N'This bootcamp is designed for beginners who want to kickstart a career in fullstack web development.')
INSERT [dbo].[Courses] ([Id], [Title], [Description], [Category], [Level], [Hours], [Price], [InstructorId], [ImageUrl], [AboutContent]) VALUES (N'ae20e102-73c9-4d9d-846c-fe889149addd', N'Data Science with Python', N'A comprehensive guide to data analysis, visualization, and machine learning with Python.', N'Data Science', N'Intermediate', 35, CAST(89.99 AS Decimal(18, 2)), N'd7e9c649-041e-4ba4-8a88-c78cf553adee', N'2.jpg', N'This course is tailored for developers and analysts eager to dive into data science using Python.')
INSERT [dbo].[Courses] ([Id], [Title], [Description], [Category], [Level], [Hours], [Price], [InstructorId], [ImageUrl], [AboutContent]) VALUES (N'e84e9be4-e6e5-4d58-a7fb-96f6da8e95bb', N'C# and Object-Oriented Programming', N'Learn C# fundamentals and master Object-Oriented Programming concepts.', N'Programming', N'Intermediate', 25, CAST(59.99 AS Decimal(18, 2)), N'5738f7e7-876a-4785-82af-845f9d1c1228', N'3.jpg', N'A practical course for developers who want to deepen their understanding of C# and OOP.')
INSERT [dbo].[Courses] ([Id], [Title], [Description], [Category], [Level], [Hours], [Price], [InstructorId], [ImageUrl], [AboutContent]) VALUES (N'ec50ac3a-3add-492c-aa98-4f10eec1123f', N'UI/UX Design Principles', N'Learn the essential principles of user interface and user experience design.', N'Design', N'Beginner', 20, CAST(49.99 AS Decimal(18, 2)), N'342ce20b-6156-4d08-9db6-1be55e0ee216', N'4.jpg', N'This course is perfect for aspiring designers wanting to build intuitive and beautiful digital products.')
GO
SET IDENTITY_INSERT [dbo].[CourseSections] ON 

INSERT [dbo].[CourseSections] ([Id], [Title], [LectureCount], [DurationMinutes], [CourseId]) VALUES (5, N'Frontend Development', 10, 600, N'acd49198-0bb5-4625-854f-a8bbf0a5ca04')
INSERT [dbo].[CourseSections] ([Id], [Title], [LectureCount], [DurationMinutes], [CourseId]) VALUES (6, N'Backend with .NET Core', 8, 480, N'acd49198-0bb5-4625-854f-a8bbf0a5ca04')
INSERT [dbo].[CourseSections] ([Id], [Title], [LectureCount], [DurationMinutes], [CourseId]) VALUES (7, N'Deployment & DevOps', 5, 300, N'acd49198-0bb5-4625-854f-a8bbf0a5ca04')
INSERT [dbo].[CourseSections] ([Id], [Title], [LectureCount], [DurationMinutes], [CourseId]) VALUES (8, N'C# Basics', 6, 360, N'e84e9be4-e6e5-4d58-a7fb-96f6da8e95bb')
INSERT [dbo].[CourseSections] ([Id], [Title], [LectureCount], [DurationMinutes], [CourseId]) VALUES (9, N'OOP Principles', 7, 420, N'e84e9be4-e6e5-4d58-a7fb-96f6da8e95bb')
INSERT [dbo].[CourseSections] ([Id], [Title], [LectureCount], [DurationMinutes], [CourseId]) VALUES (10, N'Practical Projects', 3, 180, N'e84e9be4-e6e5-4d58-a7fb-96f6da8e95bb')
INSERT [dbo].[CourseSections] ([Id], [Title], [LectureCount], [DurationMinutes], [CourseId]) VALUES (11, N'Python for Data Science', 9, 540, N'ae20e102-73c9-4d9d-846c-fe889149addd')
INSERT [dbo].[CourseSections] ([Id], [Title], [LectureCount], [DurationMinutes], [CourseId]) VALUES (12, N'Data Visualization Techniques', 6, 360, N'ae20e102-73c9-4d9d-846c-fe889149addd')
INSERT [dbo].[CourseSections] ([Id], [Title], [LectureCount], [DurationMinutes], [CourseId]) VALUES (13, N'Intro to Machine Learning', 7, 420, N'ae20e102-73c9-4d9d-846c-fe889149addd')
INSERT [dbo].[CourseSections] ([Id], [Title], [LectureCount], [DurationMinutes], [CourseId]) VALUES (14, N'Foundations of UI/UX', 5, 300, N'ec50ac3a-3add-492c-aa98-4f10eec1123f')
INSERT [dbo].[CourseSections] ([Id], [Title], [LectureCount], [DurationMinutes], [CourseId]) VALUES (15, N'Wireframing & Prototyping', 7, 420, N'ec50ac3a-3add-492c-aa98-4f10eec1123f')
INSERT [dbo].[CourseSections] ([Id], [Title], [LectureCount], [DurationMinutes], [CourseId]) VALUES (16, N'Design Tools & Case Studies', 6, 360, N'ec50ac3a-3add-492c-aa98-4f10eec1123f')
SET IDENTITY_INSERT [dbo].[CourseSections] OFF
GO
SET IDENTITY_INSERT [dbo].[QuizQuestions] ON 

INSERT [dbo].[QuizQuestions] ([Id], [QuestionText], [CorrectOptionId], [CourseId]) VALUES (1, N'Which language is used for styling web pages?', 2, N'acd49198-0bb5-4625-854f-a8bbf0a5ca04')
INSERT [dbo].[QuizQuestions] ([Id], [QuestionText], [CorrectOptionId], [CourseId]) VALUES (2, N'Which HTTP method is commonly used to retrieve data?', 6, N'acd49198-0bb5-4625-854f-a8bbf0a5ca04')
INSERT [dbo].[QuizQuestions] ([Id], [QuestionText], [CorrectOptionId], [CourseId]) VALUES (3, N'Which keyword is used to create a new object in C#?', 11, N'e84e9be4-e6e5-4d58-a7fb-96f6da8e95bb')
INSERT [dbo].[QuizQuestions] ([Id], [QuestionText], [CorrectOptionId], [CourseId]) VALUES (4, N'Which of these is an example of encapsulation?', 14, N'e84e9be4-e6e5-4d58-a7fb-96f6da8e95bb')
INSERT [dbo].[QuizQuestions] ([Id], [QuestionText], [CorrectOptionId], [CourseId]) VALUES (5, N'Which Python library is primarily used for data manipulation?', 18, N'ae20e102-73c9-4d9d-846c-fe889149addd')
INSERT [dbo].[QuizQuestions] ([Id], [QuestionText], [CorrectOptionId], [CourseId]) VALUES (6, N'Which of these is a supervised learning algorithm?', 22, N'ae20e102-73c9-4d9d-846c-fe889149addd')
INSERT [dbo].[QuizQuestions] ([Id], [QuestionText], [CorrectOptionId], [CourseId]) VALUES (7, N'Which principle focuses on keeping interfaces simple and user-friendly?', 27, N'ec50ac3a-3add-492c-aa98-4f10eec1123f')
INSERT [dbo].[QuizQuestions] ([Id], [QuestionText], [CorrectOptionId], [CourseId]) VALUES (8, N'Which tool is widely used for collaborative interface design?', 30, N'ec50ac3a-3add-492c-aa98-4f10eec1123f')
SET IDENTITY_INSERT [dbo].[QuizQuestions] OFF
GO
SET IDENTITY_INSERT [dbo].[Whats] ON 

INSERT [dbo].[Whats] ([Id], [Content], [CourseId]) VALUES (10, N'Build responsive websites with HTML, CSS, and JavaScript', N'acd49198-0bb5-4625-854f-a8bbf0a5ca04')
INSERT [dbo].[Whats] ([Id], [Content], [CourseId]) VALUES (11, N'Develop backend APIs using .NET Core', N'acd49198-0bb5-4625-854f-a8bbf0a5ca04')
INSERT [dbo].[Whats] ([Id], [Content], [CourseId]) VALUES (12, N'Deploy applications to the cloud', N'acd49198-0bb5-4625-854f-a8bbf0a5ca04')
INSERT [dbo].[Whats] ([Id], [Content], [CourseId]) VALUES (13, N'Understand C# syntax and data types', N'e84e9be4-e6e5-4d58-a7fb-96f6da8e95bb')
INSERT [dbo].[Whats] ([Id], [Content], [CourseId]) VALUES (14, N'Apply OOP principles like inheritance and polymorphism', N'e84e9be4-e6e5-4d58-a7fb-96f6da8e95bb')
INSERT [dbo].[Whats] ([Id], [Content], [CourseId]) VALUES (15, N'Build small-scale applications with C#', N'e84e9be4-e6e5-4d58-a7fb-96f6da8e95bb')
INSERT [dbo].[Whats] ([Id], [Content], [CourseId]) VALUES (16, N'Perform data analysis using Python libraries', N'ae20e102-73c9-4d9d-846c-fe889149addd')
INSERT [dbo].[Whats] ([Id], [Content], [CourseId]) VALUES (17, N'Visualize data with Matplotlib and Seaborn', N'ae20e102-73c9-4d9d-846c-fe889149addd')
INSERT [dbo].[Whats] ([Id], [Content], [CourseId]) VALUES (18, N'Build machine learning models with Scikit-Learn', N'ae20e102-73c9-4d9d-846c-fe889149addd')
INSERT [dbo].[Whats] ([Id], [Content], [CourseId]) VALUES (19, N'Understand key UI/UX principles and methodologies', N'ec50ac3a-3add-492c-aa98-4f10eec1123f')
INSERT [dbo].[Whats] ([Id], [Content], [CourseId]) VALUES (20, N'Design user-centric wireframes and prototypes', N'ec50ac3a-3add-492c-aa98-4f10eec1123f')
INSERT [dbo].[Whats] ([Id], [Content], [CourseId]) VALUES (21, N'Master tools like Figma and Adobe XD', N'ec50ac3a-3add-492c-aa98-4f10eec1123f')
SET IDENTITY_INSERT [dbo].[Whats] OFF
GO
SET IDENTITY_INSERT [dbo].[QuizOptions] ON 

INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (1, N'HTML', 1)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (2, N'CSS', 1)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (3, N'JavaScript', 1)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (4, N'C#', 1)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (5, N'POST', 2)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (6, N'GET', 2)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (7, N'PUT', 2)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (8, N'DELETE', 2)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (9, N'create', 3)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (10, N'class', 3)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (11, N'new', 3)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (12, N'object', 3)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (13, N'Using public fields in a class', 4)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (14, N'Hiding internal details using properties', 4)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (15, N'Deriving one class from another', 4)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (16, N'Using interfaces', 4)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (17, N'NumPy', 5)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (18, N'Pandas', 5)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (19, N'Matplotlib', 5)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (20, N'Seaborn', 5)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (21, N'K-Means Clustering', 6)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (22, N'Linear Regression', 6)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (23, N'PCA', 6)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (24, N'Apriori Algorithm', 6)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (25, N'Aesthetic Usability', 7)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (26, N'Hick''s Law', 7)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (27, N'KISS Principle', 7)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (28, N'Fitts''s Law', 7)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (29, N'Photoshop', 8)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (30, N'Figma', 8)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (31, N'Illustrator', 8)
INSERT [dbo].[QuizOptions] ([Id], [Text], [QuizQuestionId]) VALUES (32, N'After Effects', 8)
SET IDENTITY_INSERT [dbo].[QuizOptions] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([Id], [Name], [Email], [Password]) VALUES (1, N'Abdellah Jorf', N'Abdellah@gmail.com', N'Abdellah@gmail.com')
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
