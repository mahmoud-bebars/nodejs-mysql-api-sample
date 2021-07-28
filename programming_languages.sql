-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 27, 2021 at 11:47 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `programming_languages`
--

CREATE TABLE `programming_languages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `released_year` int(11) NOT NULL,
  `githut_rank` int(11) DEFAULT NULL,
  `pypl_rank` int(11) DEFAULT NULL,
  `tiobe_rank` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `programming_languages`
--

INSERT INTO `programming_languages` (`id`, `name`, `released_year`, `githut_rank`, `pypl_rank`, `tiobe_rank`, `created_at`, `updated_at`, `description`) VALUES
(1, 'JavaScript', 1995, 1, 3, 7, '2021-06-01 11:53:18', '2021-07-27 08:36:58', 'JavaScript, often abbreviated as JS, is a programming language that conforms to the ECMAScript specification. JavaScript is high-level, often just-in-time compiled, and multi-paradigm. It has curly-bracket syntax, dynamic typing, prototype-based object-orientation, and first-class functions.'),
(2, 'Python', 1991, 2, 1, 3, '2021-06-01 11:53:18', '2021-07-27 08:37:19', 'Python is an interpreted high-level general-purpose programming language. Python\'s design philosophy emphasizes code readability with its notable use of significant indentation. Its language constructs as well as its object-oriented approach aim to help programmers write clear, logical code for small and large-scale projects.'),
(3, 'Java', 1995, 3, 2, 2, '2021-06-01 11:53:18', '2021-07-27 08:38:11', 'Java is a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible. It is a general-purpose programming language intended to let application developers write once, run anywhere, meaning that compiled Java code can run on all platforms that support Java without the need for recompilation.'),
(4, 'TypeScript', 2012, 7, 10, 42, '2021-06-01 11:53:18', '2021-07-27 08:38:36', 'TypeScript is a programming language developed and maintained by Microsoft. It is a strict syntactical superset of JavaScript and adds optional static typing to the language. TypeScript is designed for the development of large applications and transcompiles to JavaScript'),
(5, 'C#', 2000, 9, 4, 5, '2021-06-01 11:53:18', '2021-07-27 08:38:39', 'C# is a general-purpose, multi-paradigm programming language encompassing static typing, strong typing, lexically scoped, imperative, declarative, functional, generic, object-oriented, and component-oriented programming disciplines'),
(6, 'PHP', 1995, 8, 6, 8, '2021-06-01 11:53:18', '2021-07-27 08:38:57', 'PHP is a general-purpose scripting language geared towards web development. It was originally created by Danish-Canadian programmer Rasmus Lerdorf in 1994. The PHP reference implementation is now produced by The PHP Group. PHP originally stood for Personal Home Page, but it now stands for the recursive initialism PHP: Hypertext Preprocessor'),
(7, 'C++', 1985, 5, 5, 4, '2021-06-01 11:53:18', '2021-07-27 08:39:13', 'C++ is a general-purpose programming language created by Bjarne Stroustrup as an extension of the C programming language, or \"C with Classes\". The language has expanded significantly over time, and modern C++ now has object-oriented, generic, and functional features in addition to facilities for low-level memory manipulation.'),
(8, 'C', 1972, 10, 5, 1, '2021-06-01 11:53:18', '2021-07-27 08:39:29', 'C is a general-purpose, procedural computer programming language supporting structured programming, lexical variable scope, and recursion, with a static type system. By design, C provides constructs that map efficiently to typical machine instructions.'),
(9, 'Ruby', 1995, 6, 15, 15, '2021-06-01 11:53:18', '2021-07-27 08:39:51', 'Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro \"Matz\" Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection and just-in-time compilation.'),
(10, 'R', 1993, 33, 7, 9, '2021-06-01 11:53:18', '2021-07-27 08:40:12', 'R is a programming language and free software environment for statistical computing and graphics supported by the R Core Team and the R Foundation for Statistical Computing. The R language is widely used among statisticians and data miners for developing statistical software and data analysis.'),
(11, 'Objective-C', 1984, 18, 8, 18, '2021-06-01 11:53:18', '2021-07-27 08:40:55', 'Objective-C is a general-purpose, object-oriented programming language that adds Smalltalk-style messaging to the C programming language. Originally developed by Brad Cox and Tom Love in the early 1980s, it was selected by NeXT for its NeXTSTEP operating system.'),
(12, 'Swift', 2015, 16, 9, 13, '2021-06-01 11:53:18', '2021-07-27 08:40:57', 'Swift is a general-purpose, multi-paradigm, compiled programming language developed by Apple Inc. and the open-source community. First released in 2014, Swift was developed as a replacement for Apple\'s earlier programming language Objective-C, as Objective-C had been largely unchanged since the early 1980s and lacked modern language features.'),
(13, 'Kotlin', 2011, 15, 12, 40, '2021-06-01 11:53:18', '2021-07-27 08:41:13', 'Kotlin is a cross-platform, statically typed, general-purpose programming language with type inference. Kotlin is designed to interoperate fully with Java, and the JVM version of Kotlin\'s standard library depends on the Java Class Library, but type inference allows its syntax to be more concise.'),
(14, 'Go', 2009, 4, 13, 14, '2021-06-01 11:53:18', '2021-07-27 08:41:25', 'Go is a statically typed, compiled programming language designed at Google by Robert Griesemer, Rob Pike, and Ken Thompson. Go is syntactically similar to C, but with memory safety, garbage collection, structural typing, and CSP-style concurrency.'),
(15, 'Rust', 2010, 14, 16, 26, '2021-06-01 11:53:18', '2021-07-27 08:41:40', 'Rust is a multi-paradigm, high-level, general-purpose programming language designed for performance and safety, especially safe concurrency. Rust is syntactically similar to C++, but can guarantee memory safety by using a borrow checker to validate references.'),
(16, 'Scala', 2004, 11, 17, 34, '2021-06-01 11:53:18', '2021-07-27 08:41:56', 'Scala is a strong statically typed general-purpose programming language which supports both object-oriented programming and functional programming. Designed to be concise, many of Scala\'s design decisions are aimed to address criticisms of Java. Scala source code can be compiled to Java bytecode and run on a Java virtual machine.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `programming_languages`
--
ALTER TABLE `programming_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_name_unique` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `programming_languages`
--
ALTER TABLE `programming_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
