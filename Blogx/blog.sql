-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2020 at 05:14 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `views`, `image`, `body`, `published`, `created_at`, `updated_at`) VALUES
(1, 1, '5 Habits that can improve your life', '5-habits-that-can-improve-your-life', 0, 'w.jpg', '<ol>\r\n	<li><strong>Know thyself:&nbsp;</strong>Use the last ten minutes before sleep to reflect on your day. Just do a mental evaluation of your performance at work, school, etc. Ask yourself what motivated you to do the things you did during the day; how you could have acted differently to get a better outcome. This way, you&#39;ll understand yourself more. You will know your strengths and your weaknesses, and know which challenges to tackle and which to save your energy and walk away from.\r\n	<p>&nbsp;</p>\r\n	</li>\r\n	<li><strong>Reading:&nbsp;</strong>&nbsp;Those who read every day have an almost unfair advantage. Imagine sucking up information that is the result of an author&#39;s years of efforts and lifetime experience expressed with utmost care and edited multiple times. Well, it&#39;s only unfair for those who don&#39;t read. Reading boosts your vocabulary; and the more words you know, the more depth you are able to perceive in things. The more the world speaks to you. You also learn to look at things from different perspectives.&nbsp;\r\n	<p>&nbsp;</p>\r\n	</li>\r\n	<li><strong>The challenge to love:&nbsp;</strong>That is mankind&#39;s greatest need; to love and to be loved. That&#39;s right. To love some other person is a very deep human need. But the world has gone crazy. We envy, hate, fight and even kill each other in pursuit of power, influence, wealth, etc. But our desire for these things can never be satiated. So challenge yourself each day to genuinely love somebody. Your love should be expressed with gestures like a gift or a note or anything to let the person know that you love them and you wish them well; they need the love and they need also to know that somebody actually cares for them.\r\n	<p>&nbsp;</p>\r\n	</li>\r\n	<li><strong>Keeping a journal:&nbsp;</strong>This point is closely connected with the first point. keep a journal to record some of your peculiar experiences as you walk through life. Your experiences are great wealth. You will always need to draw upon your past experiences in order to make better decisions in the present and more accurately predict the future based on your current actions and decision.&nbsp;\r\n	<p>&nbsp;</p>\r\n	</li>\r\n	<li><strong>Health:&nbsp;</strong>This body that carries us is not a machine. It is also fragile. Health is not the absence of disease. Some people only consult their doctors when they feel pain. Others only do a morning jog in the periods when they feel they are overweight. The thing is, all your efforts in cultivating the other habits in order to live an amazing life can be reduced to nothing in one day if you don&#39;t take your health seriously.</li>\r\n</ol>\r\n', 1, '2020-12-20 06:59:53', '2020-12-20 06:59:50'),
(2, 1, '10 daily habits that drain our energy', '10-daily-habits-that-drain-our-energy', 0, 'dailyhabits.jpg', '&lt;ol&gt;\r\n	&lt;li&gt;&lt;strong&gt;Decisions&lt;/strong&gt;: I used to think Mark Zuckerberg&amp;rsquo;s practice of wearing the same t-shirt every day in order to minimize the number of decisions he&amp;#39;ll make per day was really crazy, until the day I decided to screen everything that went into my stomach. Staying alone and having to prepare my own food myself, I found myself wondering for hours what I was going to eat. I started having fantasies of never having to bother what I would eat.&lt;/li&gt;\r\n	&lt;li&gt;&lt;strong&gt;Pleasing people:&lt;/strong&gt;&amp;nbsp;You can&amp;#39;t please everybody all the time. It is simply not possible and you&amp;#39;ll wear yourself out trying to do so. Accept this and you&amp;#39;ve lifted a huge burden from off your chest.&lt;/li&gt;\r\n	&lt;li&gt;&lt;strong&gt;Pursuits:&amp;nbsp;&lt;/strong&gt;It&amp;#39;s a paradox of life: the things you chase will elude you. But remain grateful and satisfied where you are and with what you have, and those very things will throw themselves at you.&lt;/li&gt;\r\n	&lt;li&gt;&lt;strong&gt;Temperament:&amp;nbsp;&lt;/strong&gt;Some people are introverts and require tremendous amounts of energy for even a small conversion, talk less of parties and crowded places. These places drain them a lot.&lt;/li&gt;\r\n	&lt;li&gt;&lt;strong&gt;Poor information diet:&lt;/strong&gt;&amp;nbsp;Some people absorb more information than their brains can properly digest. They are everywhere. Quora. Medium. Reddit. You name it. Worst is the way they absorb it - in a haste; not even paying attention to the credibility of the author; always in a haste to move on to the next answer or blog post. The truth is, there&amp;#39;s a lot of garbage out there, and reading at such a frantic pace doesn&amp;#39;t give you the time to reflect on the answer and probably fishing out a flaw in the author&amp;#39;s ideas. What is important is not how much you read. It&amp;#39;s how deep you read.&lt;/li&gt;\r\n	&lt;li&gt;&lt;strong&gt;A job you hate:&amp;nbsp;&lt;/strong&gt;When you are doing something you love, there is often a surge of energy even at your most physically down moments that you often wonder where it comes from. The reverse is the case when you are working at a job you hate. You feel your energy drained right from when the rays of the morning sun announce Monday morning.&lt;/li&gt;\r\n	&lt;li&gt;&lt;strong&gt;Lack of proper rest/sleep:&lt;/strong&gt;&amp;nbsp;When you don&amp;#39;t get enough sleep, you are not your strongest; you go through your entire day with half your energy. There&amp;#39;s no way your productivity isn&amp;#39;t affected by this - unless you work overtime to make it up, which leaves you with less time to sleep, and the cycle continues. I call that slavery.&lt;/li&gt;\r\n	&lt;li&gt;&lt;strong&gt;Lurking anxieties:&lt;/strong&gt;&amp;nbsp;Don&amp;#39;t always take your ugly feelings for granted. Don&amp;#39;t blame them on your busy, exhausting day. Here&amp;#39;s how I bust the sources of my anxieties: I ask myself a few questions:&amp;nbsp;&lt;em&gt;why am I feeling this way? At what point during my day, week or month did I start feeling this way? What were the events, people surrounding me at the time I started feeling this way?&lt;/em&gt;&amp;nbsp;At this point I already know the source of my anxiety and therefore can easily address it. Like they say,&amp;nbsp;&lt;em&gt;To kill a beast you have to say its name.&amp;nbsp;&lt;/em&gt;You have to know what it is you&amp;#39;re up against.&lt;/li&gt;\r\n	&lt;li&gt;&lt;strong&gt;Deadlines:&lt;/strong&gt;&amp;nbsp;Deadlines can be thrilling sometimes. They provide a working condition - a mix of pressure and passion - that usually rouse our genius. But there&amp;#39;s the other side of deadlines. Ever felt hopelessly stuck on a time-limited project with high stakes? Time flies but the project doesn&amp;#39;t seem to be going anywhere. No progress at all. That&amp;#39;s the kind I&amp;#39;m talking about.&lt;/li&gt;\r\n	&lt;li&gt;&lt;strong&gt;Negativity:&amp;nbsp;&lt;/strong&gt;Hanging around people who see only the bad side of every situation; always computing the worst possible outcome in any event. If you are not keen you will not notice this. You will only feel increasingly discouraged and disempowered.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n\r\n&lt;p&gt;Our feelings usually hold the answers we seek. The solution lies in self-awareness (see point 8). You have to pause every once in a while and ask yourself how you&amp;#39;re doing and adjust accordingly.&lt;/p&gt;\r\n', 1, '2020-12-20 07:01:07', '2020-12-20 07:01:07'),
(3, 1, 'What is the Difference Between Front End, Back End, and Full Stack Developer', 'what-is-the-difference-between-front-end-back-end-and-full-stack-developer', 0, 'coaching-coders-coding-7374 (2).jpg.2019-09-17.1568716434.jpg', '&lt;h1&gt;What is the Difference Between Front End, Back End, and Full Stack Developer&lt;/h1&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;There are over 1.9 billion active websites on the Internet. Business owners realize that appealing to modern consumers is only possible with an online presence. This presence can be created with tools like websites or apps. Getting these tools constructed is only possible when using reputable and experienced developers.&lt;/p&gt;\r\n\r\n&lt;p&gt;Most business owners fail to realize there are different types of web developers out there. Understanding what makes these developers different can help an individual hire the best one to fit their needs.&lt;/p&gt;\r\n\r\n&lt;p&gt;The following are some of the things you need to know about the difference between a front-end, a back-end and a full-stack developer.&lt;/p&gt;\r\n\r\n&lt;h2&gt;A Front-End Developer Focuses on the Visual Aspects of a Website&lt;/h2&gt;\r\n\r\n&lt;p&gt;The first thing you will notice when logging onto a particular website is how it looks. Designing the visible parts of a website is the main job of a front-end developer. These developers also oversee how a particular website interacts with various browsers used by consumers. A front-end developer uses a number of tools and programming languages to bring a website to life.&lt;/p&gt;\r\n\r\n&lt;h3&gt;HTML is the Backbone of the Internet&lt;/h3&gt;\r\n\r\n&lt;p&gt;While most people have heard of hypertext markup language or HTML for short, many individuals don&amp;rsquo;t know what it is used for. Nearly all of the websites you visit online are made with HTML. In short, HTML takes care of all of the content and structure a website needs to operate correctly.&lt;/p&gt;\r\n\r\n&lt;h3&gt;CSS Controls the Look of the Website&lt;/h3&gt;\r\n\r\n&lt;p&gt;Once the basic HTML infrastructure is in place, front end developers will use cascading style sheets or CSS to create a unique look for the site. With the power of CSS, developers are able to control the background images, colors and fonts used on a website. In the past, front-end developers would only use HTML and CSS to complete a website.&lt;/p&gt;\r\n\r\n&lt;p&gt;However, modern front-end developers use JavaScript to create more interactivity and complex animations for websites. With the power of JavaScript, front-end developers are able to create content that engages and entertains consumers.&lt;/p&gt;\r\n\r\n&lt;h3&gt;The interactivity Factor&lt;/h3&gt;\r\n\r\n&lt;p&gt;The key component of a successful website or web-based app is interactivity and responsiveness. Modern consumers want to post content to their favorite website or ask questions to a business via online chat. The only way to provide consumers with this level of interactivity is by working with a knowledgeable front-end developer.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;The developer will use JavaScript and a variety of frameworks like VueJS to bring your vision of an interactive website to life.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;h2&gt;The Nuts and Bolts of a Website are Built By the Back-End Developer&lt;/h2&gt;\r\n\r\n&lt;p&gt;While the front-end developer handles all of the visible parts of the website, a back-end developer focuses on the rarely seen aspects of the website. The backend is basically the part that powers what the user sees. It is the part that stores all data provided by the user and then retrieves it, processes it and then displays it when it is needed. This data can come from a database or be fetched from some third party service.&lt;/p&gt;\r\n\r\n&lt;p&gt;In order to do their job, a back-end developer has to use a number of programming languages like PHP, Python and Ruby.&lt;/p&gt;\r\n\r\n&lt;h3&gt;Most Clients Want a Particular Programming Language&lt;/h3&gt;\r\n\r\n&lt;p&gt;Business owners and entrepreneurs in need of a back-end developer will usually want them&amp;nbsp;&lt;a href=&quot;https://skillcrush.com/2016/03/22/be-a-successful-web-designer/&quot;&gt;proficient in one programming language&lt;/a&gt;. For years, Python has been one of the most popular and widely used languages for the development of back-end website infrastructure.&lt;/p&gt;\r\n\r\n&lt;p&gt;Recently, even JavaScript is being used on the backend to power websites using NodeJS frameworks such as ExpressJS. This comes with many advantages like easy scalability and the fact that some developers can easily be competent Full Stack developers since they only have to use the same language (JavaScript) on both the frontend and the backend. This saves them the time, and business owners the investment of learning an additional language for the backend.&lt;/p&gt;\r\n\r\n&lt;h3&gt;Back-End and Front-End Developers Work Together&lt;/h3&gt;\r\n\r\n&lt;p&gt;One of the biggest concerns a back-end developer has is making sure their code provides functionality to a website or app. The only way to find and correct issues during this development process is by working closely with front-end developers.&lt;/p&gt;\r\n\r\n&lt;p&gt;In some cases, these developers will work together to create a&amp;nbsp;&lt;a href=&quot;https://www.daniweb.com/programming/computer-science/tutorials/520314/how-to-make-quality-voronoi-diagrams&quot;&gt;Voronoi diagram&lt;/a&gt;. These diagrams help them visualize the data being used in the program, which allows them to avoid overloading the infrastructure.&lt;/p&gt;\r\n\r\n&lt;p&gt;With the right code implementation, back-end developers are able to receive data from the user. This code is developed using a server-side programming language. Storing this data is essential when trying to get to consumers better or make using a website easier for them.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;h2&gt;A Full-Stack Developer is the Best of Both Worlds&lt;/h2&gt;\r\n\r\n&lt;p&gt;In short, a full-stack developer is an individual who works on both front-end and back-end development. Generally, a full-stack developer will work on building a site&amp;rsquo;s user interface or even the databases. In some instances, these developers will work hand in hand with the client to ensure they fully grasp what their needs are.&lt;/p&gt;\r\n\r\n&lt;h3&gt;The Skills a Full-Stack Developer Needs&lt;/h3&gt;\r\n\r\n&lt;p&gt;Being a successful full-stack developer will require a person to have skills like:&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;An in-depth understanding of JavaScript, HTML and CSS.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;Being proficient in a backend language like Python, PHP, etc is a must.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;Attention to detail and the ability to manage a team of developers is a plus.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;As you can see, a full-stack developer has to be extremely experienced and hardworking to be successful in this role.&lt;/p&gt;\r\n\r\n&lt;h2&gt;Continuously Learning New Skills is a Must For a New Developer&lt;/h2&gt;\r\n\r\n&lt;p&gt;Having success in the world of web development is no easy task. A person will have to focus on honing their existing skills and learning new ones to stay competitive in this industry.&amp;nbsp;&lt;/p&gt;\r\n', 1, '2020-12-20 07:02:26', '2020-12-20 07:02:26'),
(4, 1, 'Second post on LifeBlog', 'second-post-on-lifeblog', 0, 'w.jpg', '&lt;p&gt;Life is beautiful&lt;/p&gt;\r\n', 1, '2020-12-20 07:02:57', '2020-12-20 07:02:57');

-- --------------------------------------------------------

--
-- Table structure for table `post_topic`
--

CREATE TABLE `post_topic` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_topic`
--

INSERT INTO `post_topic` (`id`, `post_id`, `topic_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `slug`) VALUES
(1, 'Inspiration', 'inspiration'),
(2, 'Motivation', 'motivation'),
(3, 'Technology', 'technology');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Author','Admin') DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `role`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Darshan', 'dx23@gmail.com', 'Admin', '5f4dcc3b5aa765d61d8327deb882cf99', '2020-11-18 07:22:58', '2020-11-18 07:22:58'),
(2, 'Suresh', 'dx12@gmail.com', 'Author', '5f4dcc3b5aa765d61d8327deb882cf99', '2020-12-20 06:58:05', '2020-12-20 06:58:05'),
(3, 'raju', 'dx13@gmail.com', 'Author', '5f4dcc3b5aa765d61d8327deb882cf99', '2020-12-20 06:58:23', '2020-12-20 06:58:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post_topic`
--
ALTER TABLE `post_topic`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_id` (`post_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post_topic`
--
ALTER TABLE `post_topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `post_topic`
--
ALTER TABLE `post_topic`
  ADD CONSTRAINT `post_topic_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `post_topic_ibfk_2` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
