-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2021 at 06:19 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jayabaya`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE `chat_message` (
  `chat_message_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `chat_message` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class_stream`
--

CREATE TABLE `class_stream` (
  `id` int(11) NOT NULL,
  `course` varchar(55) NOT NULL,
  `classID` int(11) NOT NULL,
  `userID` varchar(255) NOT NULL,
  `konten` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'b32db400-098b-473a-bb5c-4def2d806a35', 'database', 'default', '{\"uuid\":\"b32db400-098b-473a-bb5c-4def2d806a35\",\"displayName\":\"App\\\\Mail\\\\SendOTP\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:16:\\\"App\\\\Mail\\\\SendOTP\\\":27:{s:9:\\\"recipient\\\";a:2:{s:5:\\\"email\\\";s:17:\\\"xegalol@gmail.com\\\";s:3:\\\"otp\\\";s:8:\\\"tf7aSiEg\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:17:\\\"xegalol@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 'ErrorException: Undefined index: konten in C:\\xampp\\htdocs\\Email\\app\\Mail\\SendOTP.php:31\nStack trace:\n#0 C:\\xampp\\htdocs\\Email\\app\\Mail\\SendOTP.php(31): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined index...\', \'C:\\\\xampp\\\\htdocs...\', 31, Array)\n#1 [internal function]: App\\Mail\\SendOTP->build()\n#2 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#3 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(165): Illuminate\\Container\\Container->call(Array)\n#8 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(178): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#11 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#12 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#13 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#18 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#22 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(87): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(60): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#26 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#27 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(406): Illuminate\\Queue\\Jobs\\Job->fire()\n#28 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(307): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(116): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(100): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#32 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#33 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#34 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#35 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#36 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#37 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#38 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#39 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Command\\Command.php(258): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(920): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(266): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(142): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\xampp\\htdocs\\Email\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 {main}', '2020-10-14 05:13:43'),
(2, '82bd3a5d-3eda-4192-be17-403dffca87f7', 'database', 'default', '{\"uuid\":\"82bd3a5d-3eda-4192-be17-403dffca87f7\",\"displayName\":\"App\\\\Mail\\\\SendOTP\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:16:\\\"App\\\\Mail\\\\SendOTP\\\":27:{s:9:\\\"recipient\\\";a:2:{s:5:\\\"email\\\";s:17:\\\"xegalol@gmail.com\\\";s:3:\\\"otp\\\";s:8:\\\"ssG5w3tK\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:17:\\\"xegalol@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 'ErrorException: Undefined index: konten in C:\\xampp\\htdocs\\Email\\app\\Mail\\SendOTP.php:31\nStack trace:\n#0 C:\\xampp\\htdocs\\Email\\app\\Mail\\SendOTP.php(31): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined index...\', \'C:\\\\xampp\\\\htdocs...\', 31, Array)\n#1 [internal function]: App\\Mail\\SendOTP->build()\n#2 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#3 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(165): Illuminate\\Container\\Container->call(Array)\n#8 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(178): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#11 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#12 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#13 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#18 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#22 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(87): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(60): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#26 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#27 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(406): Illuminate\\Queue\\Jobs\\Job->fire()\n#28 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(307): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(116): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(100): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#32 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#33 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#34 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#35 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#36 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#37 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#38 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#39 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Command\\Command.php(258): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(920): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(266): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(142): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\xampp\\htdocs\\Email\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 {main}', '2020-10-14 05:13:44'),
(3, 'c5693b3f-e1d1-4b5f-9a95-7eb556a1320c', 'database', 'default', '{\"uuid\":\"c5693b3f-e1d1-4b5f-9a95-7eb556a1320c\",\"displayName\":\"App\\\\Mail\\\\SendOTP\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:16:\\\"App\\\\Mail\\\\SendOTP\\\":27:{s:9:\\\"recipient\\\";a:2:{s:5:\\\"email\\\";s:17:\\\"xegalol@gmail.com\\\";s:3:\\\"otp\\\";s:8:\\\"nFvWS3oZ\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:17:\\\"xegalol@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 'ErrorException: Undefined index: konten in C:\\xampp\\htdocs\\Email\\app\\Mail\\SendOTP.php:31\nStack trace:\n#0 C:\\xampp\\htdocs\\Email\\app\\Mail\\SendOTP.php(31): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined index...\', \'C:\\\\xampp\\\\htdocs...\', 31, Array)\n#1 [internal function]: App\\Mail\\SendOTP->build()\n#2 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#3 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(165): Illuminate\\Container\\Container->call(Array)\n#8 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(178): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#11 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#12 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#13 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#18 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#22 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(87): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(60): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#26 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#27 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(406): Illuminate\\Queue\\Jobs\\Job->fire()\n#28 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(307): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(116): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(100): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#32 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#33 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#34 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#35 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#36 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#37 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#38 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#39 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Command\\Command.php(258): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(920): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(266): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(142): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\xampp\\htdocs\\Email\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 {main}', '2020-10-14 05:13:45'),
(4, '6db6ceeb-6c49-4369-86a2-e96022624cb0', 'database', 'default', '{\"uuid\":\"6db6ceeb-6c49-4369-86a2-e96022624cb0\",\"displayName\":\"App\\\\Mail\\\\SendOTP\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:16:\\\"App\\\\Mail\\\\SendOTP\\\":27:{s:9:\\\"recipient\\\";a:2:{s:5:\\\"email\\\";s:17:\\\"xegalol@gmail.com\\\";s:3:\\\"otp\\\";s:8:\\\"6hfoEUep\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:17:\\\"xegalol@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 'ErrorException: Undefined index: konten in C:\\xampp\\htdocs\\Email\\app\\Mail\\SendOTP.php:31\nStack trace:\n#0 C:\\xampp\\htdocs\\Email\\app\\Mail\\SendOTP.php(31): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined index...\', \'C:\\\\xampp\\\\htdocs...\', 31, Array)\n#1 [internal function]: App\\Mail\\SendOTP->build()\n#2 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#3 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(165): Illuminate\\Container\\Container->call(Array)\n#8 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(178): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#11 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#12 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#13 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#18 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#22 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(87): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(60): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#26 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#27 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(406): Illuminate\\Queue\\Jobs\\Job->fire()\n#28 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(307): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(116): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(100): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#32 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#33 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#34 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#35 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#36 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#37 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#38 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#39 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Command\\Command.php(258): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(920): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(266): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(142): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\xampp\\htdocs\\Email\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 {main}', '2020-10-14 05:13:46');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(5, 'bc31a3f7-9e33-4bcb-a7ef-f56943071c9a', 'database', 'default', '{\"uuid\":\"bc31a3f7-9e33-4bcb-a7ef-f56943071c9a\",\"displayName\":\"App\\\\Mail\\\\SendOTP\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:16:\\\"App\\\\Mail\\\\SendOTP\\\":27:{s:9:\\\"recipient\\\";a:2:{s:5:\\\"email\\\";s:17:\\\"xegalol@gmail.com\\\";s:3:\\\"otp\\\";s:8:\\\"boBzNCGL\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:17:\\\"xegalol@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 'ErrorException: Undefined index: konten in C:\\xampp\\htdocs\\Email\\app\\Mail\\SendOTP.php:31\nStack trace:\n#0 C:\\xampp\\htdocs\\Email\\app\\Mail\\SendOTP.php(31): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined index...\', \'C:\\\\xampp\\\\htdocs...\', 31, Array)\n#1 [internal function]: App\\Mail\\SendOTP->build()\n#2 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#3 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(165): Illuminate\\Container\\Container->call(Array)\n#8 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(178): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#11 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#12 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#13 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#18 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#22 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(87): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(60): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#26 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#27 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(406): Illuminate\\Queue\\Jobs\\Job->fire()\n#28 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(307): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(116): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(100): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#32 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#33 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#34 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#35 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#36 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#37 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#38 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#39 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Command\\Command.php(258): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(920): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(266): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(142): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\xampp\\htdocs\\Email\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 {main}', '2020-10-14 05:13:47'),
(6, 'd34fa518-a053-4f84-b8e4-29e25cf2f1da', 'database', 'default', '{\"uuid\":\"d34fa518-a053-4f84-b8e4-29e25cf2f1da\",\"displayName\":\"App\\\\Mail\\\\SendOTP\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:16:\\\"App\\\\Mail\\\\SendOTP\\\":27:{s:9:\\\"recipient\\\";a:2:{s:5:\\\"email\\\";s:17:\\\"xegalol@gmail.com\\\";s:3:\\\"otp\\\";s:8:\\\"WrKkYjW6\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:17:\\\"xegalol@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 'ErrorException: Undefined index: konten in C:\\xampp\\htdocs\\Email\\app\\Mail\\SendOTP.php:31\nStack trace:\n#0 C:\\xampp\\htdocs\\Email\\app\\Mail\\SendOTP.php(31): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined index...\', \'C:\\\\xampp\\\\htdocs...\', 31, Array)\n#1 [internal function]: App\\Mail\\SendOTP->build()\n#2 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#3 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(165): Illuminate\\Container\\Container->call(Array)\n#8 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(178): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#11 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#12 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#13 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#18 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#22 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(87): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(60): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#26 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#27 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(406): Illuminate\\Queue\\Jobs\\Job->fire()\n#28 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(307): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(116): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(100): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#32 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#33 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#34 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#35 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#36 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#37 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#38 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#39 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Command\\Command.php(258): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(920): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(266): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(142): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\xampp\\htdocs\\Email\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 {main}', '2020-10-14 05:13:48'),
(7, '21691e4e-2276-4b19-855b-f85e2d65e988', 'database', 'default', '{\"uuid\":\"21691e4e-2276-4b19-855b-f85e2d65e988\",\"displayName\":\"App\\\\Mail\\\\SendOTP\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:16:\\\"App\\\\Mail\\\\SendOTP\\\":27:{s:9:\\\"recipient\\\";a:2:{s:5:\\\"email\\\";s:17:\\\"xegalol@gmail.com\\\";s:3:\\\"otp\\\";s:8:\\\"h7Fij51t\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:17:\\\"xegalol@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 'ErrorException: Undefined index: konten in C:\\xampp\\htdocs\\Email\\app\\Mail\\SendOTP.php:31\nStack trace:\n#0 C:\\xampp\\htdocs\\Email\\app\\Mail\\SendOTP.php(31): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined index...\', \'C:\\\\xampp\\\\htdocs...\', 31, Array)\n#1 [internal function]: App\\Mail\\SendOTP->build()\n#2 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#3 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(165): Illuminate\\Container\\Container->call(Array)\n#8 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(178): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#11 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#12 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#13 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#18 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#22 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(87): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(60): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#26 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#27 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(406): Illuminate\\Queue\\Jobs\\Job->fire()\n#28 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(307): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(116): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(100): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#32 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#33 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#34 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#35 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#36 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#37 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#38 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#39 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Command\\Command.php(258): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(920): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(266): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(142): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\xampp\\htdocs\\Email\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 {main}', '2020-10-14 05:13:49'),
(8, 'af259287-af31-438e-bf27-32d90ba9700c', 'database', 'default', '{\"uuid\":\"af259287-af31-438e-bf27-32d90ba9700c\",\"displayName\":\"App\\\\Mail\\\\KirimEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:19:\\\"App\\\\Mail\\\\KirimEmail\\\":27:{s:9:\\\"recipient\\\";a:3:{s:5:\\\"email\\\";s:17:\\\"xegalol@gmail.com\\\";s:6:\\\"subjek\\\";s:3:\\\"otp\\\";s:6:\\\"konten\\\";s:5:\\\"12451\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:17:\\\"xegalol@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 'Swift_TransportException: Connection could not be established with host smtp.gmail.com :stream_socket_client(): php_network_getaddresses: getaddrinfo failed: This is usually a temporary error during hostname resolution and means that the local server did not receive a response from an authoritative server.  in C:\\xampp\\htdocs\\Email\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php:269\nStack trace:\n#0 [internal function]: Swift_Transport_StreamBuffer->{closure}(2, \'stream_socket_c...\', \'C:\\\\xampp\\\\htdocs...\', 272, Array)\n#1 C:\\xampp\\htdocs\\Email\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php(272): stream_socket_client(\'tcp://smtp.gmai...\', 0, \'php_network_get...\', 30, 4, Resource id #675)\n#2 C:\\xampp\\htdocs\\Email\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php(58): Swift_Transport_StreamBuffer->establishSocketConnection()\n#3 C:\\xampp\\htdocs\\Email\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(143): Swift_Transport_StreamBuffer->initialize(Array)\n#4 C:\\xampp\\htdocs\\Email\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#5 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#6 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#7 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(177): Illuminate\\Mail\\Mailer->send(\'email_format\', Array, Object(Closure))\n#8 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(178): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#11 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#12 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#13 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#18 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#22 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(87): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(60): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#26 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#27 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(406): Illuminate\\Queue\\Jobs\\Job->fire()\n#28 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(307): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(116): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(100): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#32 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#33 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#34 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#35 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#36 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#37 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#38 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#39 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Command\\Command.php(258): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(920): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(266): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(142): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\xampp\\htdocs\\Email\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 {main}', '2020-10-14 05:13:53');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(9, 'd4689c8f-8c44-4eec-b985-e3d1bc0f9e8d', 'database', 'default', '{\"uuid\":\"d4689c8f-8c44-4eec-b985-e3d1bc0f9e8d\",\"displayName\":\"App\\\\Mail\\\\KirimEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:19:\\\"App\\\\Mail\\\\KirimEmail\\\":27:{s:9:\\\"recipient\\\";a:3:{s:5:\\\"email\\\";s:17:\\\"xegalol@gmail.com\\\";s:6:\\\"subjek\\\";s:17:\\\"One-time Password\\\";s:6:\\\"konten\\\";s:6:\\\"mK0lgk\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:17:\\\"xegalol@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 'Swift_TransportException: Connection could not be established with host smtp.gmail.com :stream_socket_client(): php_network_getaddresses: getaddrinfo failed: This is usually a temporary error during hostname resolution and means that the local server did not receive a response from an authoritative server.  in C:\\xampp\\htdocs\\Email\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php:269\nStack trace:\n#0 [internal function]: Swift_Transport_StreamBuffer->{closure}(2, \'stream_socket_c...\', \'C:\\\\xampp\\\\htdocs...\', 272, Array)\n#1 C:\\xampp\\htdocs\\Email\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php(272): stream_socket_client(\'tcp://smtp.gmai...\', 0, \'php_network_get...\', 30, 4, Resource id #675)\n#2 C:\\xampp\\htdocs\\Email\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php(58): Swift_Transport_StreamBuffer->establishSocketConnection()\n#3 C:\\xampp\\htdocs\\Email\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(143): Swift_Transport_StreamBuffer->initialize(Array)\n#4 C:\\xampp\\htdocs\\Email\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#5 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#6 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#7 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(177): Illuminate\\Mail\\Mailer->send(\'email_format\', Array, Object(Closure))\n#8 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(178): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#11 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#12 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#13 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#18 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#22 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(87): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(60): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#26 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#27 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(406): Illuminate\\Queue\\Jobs\\Job->fire()\n#28 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(307): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(116): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(100): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#32 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#33 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#34 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#35 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#36 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#37 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#38 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#39 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Command\\Command.php(258): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(920): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(266): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(142): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\xampp\\htdocs\\Email\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 {main}', '2020-10-14 05:13:53'),
(10, 'f2adfec4-dd39-497b-8885-bc4dacb53d0e', 'database', 'default', '{\"uuid\":\"f2adfec4-dd39-497b-8885-bc4dacb53d0e\",\"displayName\":\"App\\\\Mail\\\\KirimEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:19:\\\"App\\\\Mail\\\\KirimEmail\\\":27:{s:9:\\\"recipient\\\";a:3:{s:5:\\\"email\\\";s:17:\\\"xegalol@gmail.com\\\";s:6:\\\"subjek\\\";s:17:\\\"One-time Password\\\";s:6:\\\"konten\\\";s:6:\\\"mK0lgk\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:17:\\\"xegalol@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 'Swift_TransportException: Connection could not be established with host smtp.gmail.com :stream_socket_client(): php_network_getaddresses: getaddrinfo failed: This is usually a temporary error during hostname resolution and means that the local server did not receive a response from an authoritative server.  in C:\\xampp\\htdocs\\Email\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php:269\nStack trace:\n#0 [internal function]: Swift_Transport_StreamBuffer->{closure}(2, \'stream_socket_c...\', \'C:\\\\xampp\\\\htdocs...\', 272, Array)\n#1 C:\\xampp\\htdocs\\Email\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php(272): stream_socket_client(\'tcp://smtp.gmai...\', 0, \'php_network_get...\', 30, 4, Resource id #675)\n#2 C:\\xampp\\htdocs\\Email\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\StreamBuffer.php(58): Swift_Transport_StreamBuffer->establishSocketConnection()\n#3 C:\\xampp\\htdocs\\Email\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(143): Swift_Transport_StreamBuffer->initialize(Array)\n#4 C:\\xampp\\htdocs\\Email\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#5 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#6 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#7 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(177): Illuminate\\Mail\\Mailer->send(\'email_format\', Array, Object(Closure))\n#8 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(178): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#10 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#11 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#12 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#13 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#18 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#22 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(87): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(60): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#26 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#27 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(406): Illuminate\\Queue\\Jobs\\Job->fire()\n#28 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(307): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(116): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(100): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#32 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#33 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#34 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#35 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#36 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#37 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#38 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#39 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Command\\Command.php(258): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(920): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(266): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\xampp\\htdocs\\Email\\vendor\\symfony\\console\\Application.php(142): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\xampp\\htdocs\\Email\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\xampp\\htdocs\\Email\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 {main}', '2020-10-14 05:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"03bf7db5-994e-463a-a498-3a4aacaa0a2f\",\"displayName\":\"App\\\\Mail\\\\KirimEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:19:\\\"App\\\\Mail\\\\KirimEmail\\\":27:{s:9:\\\"recipient\\\";a:3:{s:5:\\\"email\\\";s:13:\\\"xxx@gmail.com\\\";s:6:\\\"konten\\\";s:6:\\\"XdilPv\\\";s:4:\\\"nama\\\";s:5:\\\"mamat\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:13:\\\"xxx@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1603271436, 1603271436),
(2, 'default', '{\"uuid\":\"8581557f-d72f-4508-a91b-d7e8c0ce5d94\",\"displayName\":\"App\\\\Mail\\\\KirimEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:19:\\\"App\\\\Mail\\\\KirimEmail\\\":27:{s:9:\\\"recipient\\\";a:3:{s:5:\\\"email\\\";s:15:\\\"murid@gmail.com\\\";s:6:\\\"konten\\\";s:6:\\\"AxNojo\\\";s:4:\\\"nama\\\";s:5:\\\"murid\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:15:\\\"murid@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1603352579, 1603352579),
(3, 'default', '{\"uuid\":\"e52dc168-65a4-4efb-9ba0-f20e8b49b73e\",\"displayName\":\"App\\\\Mail\\\\KirimEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:19:\\\"App\\\\Mail\\\\KirimEmail\\\":27:{s:9:\\\"recipient\\\";a:3:{s:5:\\\"email\\\";s:16:\\\"murid1@gmail.com\\\";s:6:\\\"konten\\\";s:6:\\\"VKoK2k\\\";s:4:\\\"nama\\\";s:14:\\\"zega febrianto\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:16:\\\"murid1@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1603512880, 1603512880),
(4, 'default', '{\"uuid\":\"faf67c1b-5780-4948-abf0-a6665c69386e\",\"displayName\":\"App\\\\Mail\\\\KirimEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:19:\\\"App\\\\Mail\\\\KirimEmail\\\":27:{s:9:\\\"recipient\\\";a:3:{s:5:\\\"email\\\";s:17:\\\"murid13@gmail.com\\\";s:6:\\\"konten\\\";s:6:\\\"7Jlxmw\\\";s:4:\\\"nama\\\";s:14:\\\"zega febrianto\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:17:\\\"murid13@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1603514559, 1603514559),
(5, 'default', '{\"uuid\":\"31fb2eb5-663c-42be-8332-9c50e9ece707\",\"displayName\":\"App\\\\Mail\\\\KirimEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:19:\\\"App\\\\Mail\\\\KirimEmail\\\":27:{s:9:\\\"recipient\\\";a:3:{s:5:\\\"email\\\";s:17:\\\"murid13@gmail.com\\\";s:6:\\\"konten\\\";s:6:\\\"7JtN8F\\\";s:4:\\\"nama\\\";s:14:\\\"zega febrianto\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:17:\\\"murid13@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1603516780, 1603516780),
(6, 'default', '{\"uuid\":\"65da27ab-d6b5-4d36-96b2-93c1f22952c8\",\"displayName\":\"App\\\\Mail\\\\KirimEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:19:\\\"App\\\\Mail\\\\KirimEmail\\\":27:{s:9:\\\"recipient\\\";a:3:{s:5:\\\"email\\\";s:15:\\\"siswa@gmail.com\\\";s:6:\\\"konten\\\";s:6:\\\"12LY1f\\\";s:4:\\\"nama\\\";s:5:\\\"siswa\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:15:\\\"siswa@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1603517232, 1603517232),
(7, 'default', '{\"uuid\":\"6e176beb-9d0a-437d-af77-9ed030a66c26\",\"displayName\":\"App\\\\Events\\\\SendCourseMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:28:\\\"App\\\\Events\\\\SendCourseMessage\\\":2:{s:8:\\\"response\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611814373, 1611814373),
(8, 'default', '{\"uuid\":\"c92a1414-22fb-4cc0-bb75-2d7b89379db5\",\"displayName\":\"App\\\\Events\\\\SendCourseMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:28:\\\"App\\\\Events\\\\SendCourseMessage\\\":2:{s:8:\\\"response\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611814410, 1611814410),
(9, 'default', '{\"uuid\":\"66d652c7-ff86-485b-8a28-b2577d236e42\",\"displayName\":\"App\\\\Events\\\\SendCourseMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:28:\\\"App\\\\Events\\\\SendCourseMessage\\\":2:{s:8:\\\"response\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611814458, 1611814458),
(10, 'default', '{\"uuid\":\"cbf18235-0153-4799-bc4d-3e181d346791\",\"displayName\":\"App\\\\Events\\\\SendCourseMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:28:\\\"App\\\\Events\\\\SendCourseMessage\\\":2:{s:8:\\\"response\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611814662, 1611814662),
(11, 'default', '{\"uuid\":\"31aa8270-80c9-4bef-b843-504bd32b85ed\",\"displayName\":\"App\\\\Events\\\\SendCourseMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:28:\\\"App\\\\Events\\\\SendCourseMessage\\\":2:{s:8:\\\"response\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611814736, 1611814736),
(12, 'default', '{\"uuid\":\"062fbcee-9abe-4eb9-8706-d21715a59a1b\",\"displayName\":\"App\\\\Events\\\\SendCourseMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:28:\\\"App\\\\Events\\\\SendCourseMessage\\\":2:{s:8:\\\"response\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611814852, 1611814852),
(13, 'default', '{\"uuid\":\"078bab4a-8f88-4aa4-bb10-2b1d95f227cc\",\"displayName\":\"App\\\\Events\\\\SendCourseMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:28:\\\"App\\\\Events\\\\SendCourseMessage\\\":2:{s:8:\\\"response\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611814875, 1611814875),
(14, 'default', '{\"uuid\":\"d4896faa-7bad-4c31-83a0-96912ccba716\",\"displayName\":\"App\\\\Events\\\\SendCourseMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:28:\\\"App\\\\Events\\\\SendCourseMessage\\\":2:{s:8:\\\"response\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611814936, 1611814936),
(15, 'default', '{\"uuid\":\"c6daa041-0793-475d-9ee5-557f50856d87\",\"displayName\":\"App\\\\Events\\\\SendCourseMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:28:\\\"App\\\\Events\\\\SendCourseMessage\\\":2:{s:8:\\\"response\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611815002, 1611815002),
(16, 'default', '{\"uuid\":\"79f449b6-5d4d-40b0-95c2-935dfbc8bf49\",\"displayName\":\"App\\\\Events\\\\SendCourseMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:28:\\\"App\\\\Events\\\\SendCourseMessage\\\":2:{s:8:\\\"response\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611815055, 1611815055),
(17, 'default', '{\"uuid\":\"93a8b537-07dc-48d8-a1b2-d89da99c5c9b\",\"displayName\":\"App\\\\Events\\\\SendCourseMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:28:\\\"App\\\\Events\\\\SendCourseMessage\\\":2:{s:8:\\\"response\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611815088, 1611815088),
(18, 'default', '{\"uuid\":\"8142ca84-95d2-461e-a878-55d4ba889db6\",\"displayName\":\"App\\\\Events\\\\SendCourseMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:28:\\\"App\\\\Events\\\\SendCourseMessage\\\":2:{s:8:\\\"response\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611815094, 1611815094),
(19, 'default', '{\"uuid\":\"ad00bf0c-3a84-452c-a5f8-3fa1949971c3\",\"displayName\":\"App\\\\Events\\\\SendCourseMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:28:\\\"App\\\\Events\\\\SendCourseMessage\\\":2:{s:8:\\\"response\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611815499, 1611815499),
(20, 'default', '{\"uuid\":\"a55091a7-6e46-49cb-8055-90237bbad5e4\",\"displayName\":\"App\\\\Events\\\\SendCourseMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:28:\\\"App\\\\Events\\\\SendCourseMessage\\\":2:{s:8:\\\"response\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611815532, 1611815532),
(21, 'default', '{\"uuid\":\"16f827a2-3995-46be-9846-0cd237b78da9\",\"displayName\":\"App\\\\Events\\\\SendCourseMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:28:\\\"App\\\\Events\\\\SendCourseMessage\\\":2:{s:8:\\\"response\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611815550, 1611815550),
(22, 'default', '{\"uuid\":\"5f60f3f4-99d7-43c1-9fe7-77c96bb0b026\",\"displayName\":\"App\\\\Events\\\\SendCourseMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:28:\\\"App\\\\Events\\\\SendCourseMessage\\\":2:{s:8:\\\"response\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611815556, 1611815556),
(23, 'default', '{\"uuid\":\"a1024e95-1051-4b11-8dc0-88bebe0d8dd4\",\"displayName\":\"App\\\\Events\\\\SendCourseMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:28:\\\"App\\\\Events\\\\SendCourseMessage\\\":2:{s:8:\\\"response\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611815592, 1611815592),
(24, 'default', '{\"uuid\":\"d208dd12-0fe7-40cd-8413-3059d94215e2\",\"displayName\":\"App\\\\Events\\\\SendCourseMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:28:\\\"App\\\\Events\\\\SendCourseMessage\\\":2:{s:8:\\\"response\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611815654, 1611815654),
(25, 'default', '{\"uuid\":\"077c4253-cc5e-4a39-be5b-4aed6cc7062d\",\"displayName\":\"App\\\\Events\\\\SendCourseMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:28:\\\"App\\\\Events\\\\SendCourseMessage\\\":2:{s:8:\\\"response\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611815682, 1611815682),
(26, 'default', '{\"uuid\":\"da6b2541-275c-48fc-9d42-a363f592c132\",\"displayName\":\"App\\\\Events\\\\SendCourseMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:28:\\\"App\\\\Events\\\\SendCourseMessage\\\":2:{s:8:\\\"response\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611815804, 1611815804),
(27, 'default', '{\"uuid\":\"2fe640ab-3c97-492b-ac29-582819299fe1\",\"displayName\":\"App\\\\Events\\\\SendClassMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:27:\\\"App\\\\Events\\\\SendClassMessage\\\":2:{s:8:\\\"response\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611816285, 1611816285),
(28, 'default', '{\"uuid\":\"00d9d583-1077-4e51-b686-64017b5dc986\",\"displayName\":\"App\\\\Events\\\\SendMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\SendMessage\\\":2:{s:4:\\\"data\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611817271, 1611817271),
(29, 'default', '{\"uuid\":\"5bcb276f-d924-4815-995a-da32474cbae2\",\"displayName\":\"App\\\\Events\\\\SendMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\SendMessage\\\":2:{s:4:\\\"data\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611817298, 1611817298),
(30, 'default', '{\"uuid\":\"28e304f2-9057-41ea-8362-fae2bdd9eef1\",\"displayName\":\"App\\\\Events\\\\SendMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\SendMessage\\\":2:{s:4:\\\"data\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611817479, 1611817479),
(31, 'default', '{\"uuid\":\"8e8dbcce-557f-4de1-853b-970595ed54fa\",\"displayName\":\"App\\\\Events\\\\SendMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\SendMessage\\\":2:{s:4:\\\"data\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611817519, 1611817519),
(32, 'default', '{\"uuid\":\"44e3bedb-75f6-428c-a315-44afdd63a7d3\",\"displayName\":\"App\\\\Events\\\\SendMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\SendMessage\\\":2:{s:4:\\\"data\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611817588, 1611817588),
(33, 'default', '{\"uuid\":\"dfdc01ef-a80d-401d-9faa-89b780c95683\",\"displayName\":\"App\\\\Events\\\\SendMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\SendMessage\\\":2:{s:4:\\\"data\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611817651, 1611817651),
(34, 'default', '{\"uuid\":\"cf8ae878-0eba-49df-a475-cb486f9fb16a\",\"displayName\":\"App\\\\Events\\\\SendMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\SendMessage\\\":2:{s:4:\\\"data\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611817721, 1611817721),
(35, 'default', '{\"uuid\":\"d824a8e4-afa6-4fa0-864a-25fc8643b38c\",\"displayName\":\"App\\\\Events\\\\SendMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\SendMessage\\\":2:{s:4:\\\"data\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611817730, 1611817730),
(36, 'default', '{\"uuid\":\"fd5e7caf-b6b1-41b8-9499-0f9836399025\",\"displayName\":\"App\\\\Events\\\\SendMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\SendMessage\\\":2:{s:4:\\\"data\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611817798, 1611817798),
(37, 'default', '{\"uuid\":\"ed6bd8ca-106e-458d-9d5c-7398c712f860\",\"displayName\":\"App\\\\Events\\\\SendMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\SendMessage\\\":2:{s:4:\\\"data\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611818011, 1611818011),
(38, 'default', '{\"uuid\":\"6312fc84-595c-42ec-ab69-f3942ac24a44\",\"displayName\":\"App\\\\Events\\\\SendMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\SendMessage\\\":2:{s:4:\\\"data\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611818265, 1611818265),
(39, 'default', '{\"uuid\":\"7ac45ac0-4260-40c3-afca-b832063c9e62\",\"displayName\":\"App\\\\Events\\\\SendMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\SendMessage\\\":2:{s:4:\\\"data\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611818321, 1611818321),
(40, 'default', '{\"uuid\":\"43b3a69b-8868-43b9-931f-daf7fd8fbd6d\",\"displayName\":\"App\\\\Events\\\\SendMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":11:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\SendMessage\\\":2:{s:4:\\\"data\\\";s:7:\\\"success\\\";s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1611818523, 1611818523);

-- --------------------------------------------------------

--
-- Table structure for table `landing_page`
--

CREATE TABLE `landing_page` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `caption` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `product_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`) VALUES
(1, 'Printer', 2000000),
(2, 'Lampu', 10000),
(3, 'Lampu', 20000),
(4, 'mm', 1010),
(5, 'mm', 1010),
(6, 'Kopyah', 30000),
(7, 'Baterai', 2500),
(8, 'KOKO', 14000);

-- --------------------------------------------------------

--
-- Table structure for table `tblabsen`
--

CREATE TABLE `tblabsen` (
  `id` int(11) NOT NULL,
  `UserID` varchar(255) NOT NULL,
  `materiID` int(11) NOT NULL,
  `timeOnScreen` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblabsen`
--

INSERT INTO `tblabsen` (`id`, `UserID`, `materiID`, `timeOnScreen`, `created_at`) VALUES
(1, 'u6KIKFhsAsKB', 21, 26, '2021-01-16 05:57:23'),
(2, 'u6KIKFhsAsKB', 17, 60, '2021-01-16 07:18:39'),
(3, 'u6KIKFhsAsKB', 25, 19, '2021-01-17 04:22:47'),
(4, 'u6KIKFhsAsKB', 27, 582, '2021-01-17 08:11:23'),
(5, 'u6KIKFhsAsKB', 20, 76, '2021-01-18 05:01:24'),
(6, 'u6KIKFhsAsKB', 23, 29, '2021-01-18 06:19:55'),
(7, 'u6KIKFhsAsKB', 26, 1, '2021-01-18 08:34:16'),
(8, 'uaYyJDuCSTIA', 27, 22, '2021-01-19 09:33:30'),
(9, 'StpJGu1cgFvk', 27, 71, '2021-01-21 07:18:09'),
(10, 'uaYyJDuCSTIA', 20, 0, '2021-01-22 06:39:31'),
(11, 'u6KIKFhsAsKB', 22, 1, '2021-01-22 07:03:33'),
(12, 'u6KIKFhsAsKB', 24, 1, '2021-01-22 07:03:41'),
(13, 'xW44aO', 25, 0, '2021-01-28 07:40:51'),
(14, 'xW44aO', 27, 15, '2021-01-28 07:43:08'),
(15, 'xW44aO', 20, 1, '2021-01-28 09:15:14'),
(16, 'RbebFd01PQFE', 17, 3, '2021-01-28 09:31:43'),
(17, 'u6KIKFhsAsKB', 28, 40, '2021-02-08 06:16:55'),
(18, 'xW44aO', 23, 7, '2021-02-16 07:12:24'),
(20, 'xW44aO', 26, 6, '2021-02-16 07:26:54'),
(21, 'xW44aO', 17, 7, '2021-02-16 07:54:55'),
(22, 'xW44aO', 28, 5, '2021-02-19 07:37:35'),
(23, 'uaYyJDuCSTIA', 17, 41, '2021-07-14 08:30:55'),
(24, '1kJWyrcsLucWv6ZU', 20, 16, '2021-07-22 06:56:56'),
(25, '1kJWyrcsLucWv6ZU', 23, 0, '2021-07-22 07:33:17'),
(26, '1kJWyrcsLucWv6ZU', 27, 21, '2021-07-22 07:33:22'),
(27, 'pv2uu9B7vjCbVcgc', 27, 46, '2021-07-22 08:56:46');

-- --------------------------------------------------------

--
-- Table structure for table `tblactivitytype`
--

CREATE TABLE `tblactivitytype` (
  `id` int(11) NOT NULL,
  `activity_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblactivitytype`
--

INSERT INTO `tblactivitytype` (`id`, `activity_type`) VALUES
(1, 'Mengirim tugas'),
(2, 'Mengerjakan Quiz'),
(3, 'Daftar Kursus'),
(4, 'Daftar Akun'),
(5, 'Membatalkan pengumpulan tugas'),
(6, 'Melakukan pembayaran '),
(7, 'Pendaftaran diverifikasi '),
(8, 'Memperbarui pembayaran'),
(9, 'Menyelesaikan materi');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminEmail` varchar(200) NOT NULL,
  `AdminPassword` varchar(200) NOT NULL,
  `salt` varchar(25) DEFAULT NULL,
  `AdminName` varchar(200) NOT NULL,
  `AdminImage` varchar(200) DEFAULT NULL,
  `AdminContactNo` varchar(20) NOT NULL,
  `AdminLevel` tinyint(4) NOT NULL DEFAULT 1,
  `AddedByAdminID` int(11) NOT NULL,
  `AdminStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminEmail`, `AdminPassword`, `salt`, `AdminName`, `AdminImage`, `AdminContactNo`, `AdminLevel`, `AddedByAdminID`, `AdminStatus`, `created_at`, `updated_at`) VALUES
(2, 'rafli.student@gmail.com', '$2y$10$FyF3ia5v6ehSCZbefYsBcuHTjRmJpkundtFREpciPtuFxRpk14VQG', '', 'AAA', '2.jpg', '7412589632', 1, 1, 1, '2018-03-01 14:17:18', '2020-08-26 08:07:45'),
(3, 'randombox38@gmail.com', '$2y$10$VnnfYKxLU973RSPQd/TKCOYfLIjnQ4wYOPtJv.EQ9UsSf4Y1gadJS', '', 'Zega Febrianto', 'ecfdfb1d9b5b5c739fd9ef947fc4b2e7.jpg', '90237', 1, 2, 1, '2020-05-06 13:31:20', '2020-08-26 08:07:45'),
(4, 'xegalol@gmail.com', '$2y$10$1xdWPrugviOihYGb8BTaT.cnd3mrDToljsEep4Tenz7pSDYdHn0TG', NULL, 'zega', NULL, '081252867991', 2, 3, 1, '2020-10-26 07:29:33', '2020-10-26 07:29:33'),
(5, 'admin@admin.com', '$2y$10$VnnfYKxLU973RSPQd/TKCOYfLIjnQ4wYOPtJv.EQ9UsSf4Y1gadJS', NULL, 'zega', NULL, '081252867991', 1, 3, 1, '2020-10-26 09:29:44', '2020-10-26 09:29:44'),
(6, 'randombox8@gmail.com', '$2y$10$Ru5Wmx7O../N1oo6vKaUmO5sZDm1.lHmOU5AM0Y4mOJUNGofGoq8K', NULL, 'admin2', NULL, '1231231231', 1, 3, 1, '2021-02-01 06:20:11', '2021-02-01 06:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbladminnotification`
--

CREATE TABLE `tbladminnotification` (
  `AdminNotificationID` int(11) NOT NULL,
  `AdminNotificationContent` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `AdminNotificationRedirect` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SenderUserID` int(11) NOT NULL,
  `IsRead` tinyint(4) NOT NULL DEFAULT 0,
  `AdminNotificationStatus` tinyint(4) NOT NULL DEFAULT 0,
  `CreatedDateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbladminnotification`
--

INSERT INTO `tbladminnotification` (`AdminNotificationID`, `AdminNotificationContent`, `AdminNotificationRedirect`, `SenderUserID`, `IsRead`, `AdminNotificationStatus`, `CreatedDateTime`) VALUES
(1, 'trial', '/admin/article/11', 1, 1, 0, '2018-04-22 12:31:58'),
(2, 'trial2', '/admin/article/12', 2, 1, 0, '2018-04-22 12:48:51');

-- --------------------------------------------------------

--
-- Table structure for table `tblarticle`
--

CREATE TABLE `tblarticle` (
  `ArticleID` int(11) NOT NULL,
  `ArticleTitle` varchar(500) NOT NULL,
  `ArticleContent` varchar(30000) NOT NULL,
  `ArticleImage` varchar(200) NOT NULL DEFAULT 'default.jpg',
  `AddedByAdminID` int(11) NOT NULL,
  `ArticleStatus` tinyint(4) NOT NULL DEFAULT 0,
  `CreatedDateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `UpdatedDateTime` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblarticle`
--

INSERT INTO `tblarticle` (`ArticleID`, `ArticleTitle`, `ArticleContent`, `ArticleImage`, `AddedByAdminID`, `ArticleStatus`, `CreatedDateTime`, `UpdatedDateTime`) VALUES
(1, 'Xiomi', '<div class=\"entry_content\">\r\n<h3><b>Xiaomi Mi Mix 3S Tidbits: Bottom Front-Facing Camera, </b></h3><h3>Wireless Charging, ARCore Support\r\nXiaomi Mi Mix 2S Tidbits</h3>\r\n<p>First of all, if there was any doubt that the Mi Mix 2S would offer dual cameras or “AI features”, let this image put those doubts to rest.</p>\r\n<p><img class=\"size-large wp-image-210758 aligncenter\" src=\"https://www1-lw.xda-cdn.com/files/2018/03/Xiaomi-Mi-Mix-2S-Camera-Watermark-1024x231.png\" alt=\"Xiaomi Mi Mix 2S Camera Watermark\" width=\"900\" height=\"203\" srcset=\"https://www1-lw.xda-cdn.com/files/2018/03/Xiaomi-Mi-Mix-2S-Camera-Watermark-1024x231.png 1024w, https://www1-lw.xda-cdn.com/files/2018/03/Xiaomi-Mi-Mix-2S-Camera-Watermark-300x68.png 300w, https://www1-lw.xda-cdn.com/files/2018/03/Xiaomi-Mi-Mix-2S-Camera-Watermark-768x173.png 768w, https://www1-lw.xda-cdn.com/files/2018/03/Xiaomi-Mi-Mix-2S-Camera-Watermark.png 1200w\" sizes=\"(max-width: 900px) 100vw, 900px\"></p>\r\n<p>The above is the phone’s camera watermark (I’ve disabled the transparency to make it easier to see), which proudly shows off the fact that not only will the device have dual cameras, but it will have an “AI Dual Camera.” Whatever that’s supposed to mean.</p>\r\n<h3>Design</h3>\r\n<p>Anyways, the fact that the phone will offer dual cameras and especially “AI features” has never really been in doubt given the many teasers that Xiaomi has been posting online. What&nbsp;<em>has</em> been in doubt is the phone’s design. Reproduced below is the most widely circulated <strong>alleged</strong> render of the Mi Mix 2S.</p>\r\n<div id=\"attachment_209658\" style=\"max-width: 510px\" class=\"wp-caption aligncenter\"><img class=\"size-full wp-image-209658\" src=\"https://www1-lw.xda-cdn.com/files/2018/02/Xiaomi-Mi-Mix-2S-1.jpg\" alt=\"xiaomi mi mix 2s\" width=\"500\" height=\"625\" srcset=\"https://www1-lw.xda-cdn.com/files/2018/02/Xiaomi-Mi-Mix-2S-1.jpg 500w, https://www1-lw.xda-cdn.com/files/2018/02/Xiaomi-Mi-Mix-2S-1-240x300.jpg 240w\" sizes=\"(max-width: 500px) 100vw, 500px\"><p class=\"wp-caption-text\">Alleged Design of the Mi Mix 2S.&nbsp;Source:&nbsp;<a href=\"https://www.weibo.com/2117681714/G2sHBsbRa?ref=home&amp;rid=4_0_8_2669678691131414039&amp;type=comment#_rnd1518287454887\">Weibo</a></p></div>\r\n<p>What is most striking about this render is the notch in the top right corner of the display that appears to house the front-facing camera: a design that eschews the <a href=\"https://www.xda-developers.com/android-display-notch-discussion/\">recent notch trend</a> from smartphones <a href=\"https://www.xda-developers.com/mobile-world-congress-2018-discussion/\">announced during Mobile World Congress</a>. At the time of our previous report, we did not have any evidence one way or another to discount the validity of this render, however, that has changed with the latest firmware files we have obtained.</p>\r\n<p>The feature image at the top of this page is a still image showing off what I initially believed to be a generic image of a Xiaomi device featuring wireless charging, but given the bottom placement of the front-facing camera, it’s possible that this design is of the Mi Mix 2S (which unsurprisingly would mean it looks very similar to the Mi Mix 2). Below, I have embedded the help video that MIUI will show to the user when they have trouble aligning the device with the Qi wireless charging pad.</p>\r\n<div style=\"width: 790px;\" class=\"wp-video\"><!--[if lt IE 9]><script>document.createElement(\'video\');</script><![endif]-->\r\n<h3>ARCore Support</h3>\r\n<p>After a brief stint with <a href=\"https://www.xda-developers.com/project-tango-dead-google-arcore/\">Project Tango</a>, Google’s ARCore is here to bring augmented reality to millions of Android devices. The company <a href=\"https://www.xda-developers.com/google-lens-arcore-augmented-reality/\">recently announced</a> that they would be bringing ARCore 1.0 to devices such as the <a href=\"https://forum.xda-developers.com/galaxy-s7\">Galaxy S7</a>/S7 Edge, LG V30/V30+ (on <a href=\"https://www.xda-developers.com/lg-g6-lg-v30-update-android-oreo/\">Oreo</a>), the ASUS Zenfone AR, and the <a href=\"https://forum.xda-developers.com/oneplus-5\">OnePlus 5</a>. Furthermore, Google announced partnerships with many companies to ensure that upcoming smartphones would support ARCore out of the box. One of those companies is Xiaomi, and it appears that the Mi Mix 2S will support the augmented reality platform at launch.</p>\r\n<p><img class=\"aligncenter size-large wp-image-210778\" src=\"https://www1-lw.xda-cdn.com/files/2018/03/watermarked_Xiaomi-Mi-Mix-2S-ARCore-1024x45.png\" alt=\"Xiaomi Mi Mix 2S ARCore\" width=\"900\" height=\"40\" srcset=\"https://www1-lw.xda-cdn.com/files/2018/03/watermarked_Xiaomi-Mi-Mix-2S-ARCore-1024x45.png 1024w, https://www1-lw.xda-cdn.com/files/2018/03/watermarked_Xiaomi-Mi-Mix-2S-ARCore-300x13.png 300w, https://www1-lw.xda-cdn.com/files/2018/03/watermarked_Xiaomi-Mi-Mix-2S-ARCore-768x34.png 768w, https://www1-lw.xda-cdn.com/files/2018/03/watermarked_Xiaomi-Mi-Mix-2S-ARCore.png 1193w\" sizes=\"(max-width: 900px) 100vw, 900px\"></p>\r\n<p>That’s all of the information we have to share at this time. If we find out more, we will keep you updated on the XDA Portal. Follow our new <a href=\"https://www.xda-developers.com/tag/exclusive/\">Exclusive tag</a>&nbsp;to catch these posts as soon as they go live!</p>\r\n<p class=\"clear:both;\">\r\n</p><div class=\"et_social_inline et_social_mobile_on et_social_inline_bottom\">\r\n<div class=\"et_social_networks et_social_autowidth et_social_slide et_social_rectangle et_social_left et_social_no_animation et_social_outer_dark\">\r\n\r\n</div>\r\n</div><span class=\"et_social_bottom_trigger\"></span>												</div>                      </div>', '3f2514f961105bdcf716b5adfa555cd6.jpg', 13, 0, '2018-04-07 17:36:12', '2018-04-19 12:46:35'),
(2, 'Mobile', 'iPhone is the best Smart PHone among all the mobiles afcasd adc asd ad sad sa dasfdasfas fafafasfas afdasdfasdf afasf asfasdasd fasdfasdasd asdsadsadas dasdsads adasdsad sadsadasd sadasdsa dasdasdsa dadcassd sadasdsa dsadsadsa dsadasdsad adsadsa dsadasdsa dasdsad sadasdsad sadsad sadsadasfa fasdfdsfv gsge grgv dgsdggv fwfeSFWsf sfsFAFCSASF AFDSF DSFSDFSD VSDGSDFG SGSFG FSGFSGVSD FSDGDS GSGSGDSG SGDFG FDFGF G FHFHAFSHFSGSBGS FGDS FJHDS FH SDF ASKF DS FJ DSJF KJDS FKJ DSJKF SJDKF KJBDSFKJBSDKJFSKJDFBJKDSBFDSKJJ SDF SDFBSD FSD GFKJD SFKJ DSJG JSD GKJ SDJG DSLJ GS GL SDLG LSDG LSD GLJ DSGLJ SDLG LD GKL DSLJG JSDLG JKSDG JS GKJDS GKJDS GKJ SKJG KSJD GJDS KJG SDKJG SKJJG DSKJ GKJD GKJDS GKJ DKJS GJKDS GKJ DSGKJ SDJG DSKJG JDSG JKDS GJKDS GKJSD GKJDS GJK SDJKG SKJDG KJSD GKJSD GKJD GKJ DSGKJ SDKJG SDJKG DSKJG DSGKJDS ', '2.jpg', 13, 0, '2018-03-06 17:37:47', '2018-04-19 12:46:37'),
(3, 'Laptop', 'Lenovo is the best brand in all the laptops', '3.jpg', 1, 0, '2018-03-06 17:37:47', '2018-04-19 12:46:55'),
(4, ';Hello', '<h1><u>Some </u><b>Content <font size=\"3\"><i>ggg </i></font></b><font size=\"3\"><i></i></font></h1>', '5.jpg', 1, 1, '2018-03-07 14:02:27', '2020-05-04 20:22:08'),
(5, 'helloooo', '<h1><u>jbjbjbSome&nbsp;</u><img src=\"https://i.imgur.com/bbkchl5.png\" style=\"font-size: 14px;\" width=\"38\"><b style=\"color: inherit;\">Content </b><i style=\"color: inherit;\">Here</i></h1><div><img src=\"https://i.imgur.com/hFuPel7.jpg\" width=\"200\"><u style=\"font-size: 36px;\">Some&nbsp;</u><span style=\"font-size: 36px; font-weight: 700;\">Content&nbsp;</span><i style=\"font-size: 36px;\">Here</i><img src=\"https://i.imgur.com/dEPAbLh.jpg\" width=\"100\"></div><div><i><br></i></div>', '4.jpg', 1, 1, '2018-03-07 14:04:34', '2018-04-19 12:46:47'),
(6, 'Hellllllloooo333', '<h1><u>Some </u><b>Content </b><i>Here</i></h1><div><img src=\"https://i.imgur.com/LT1ZR7b.png\" width=\"15\"><i><br></i></div><div>hello bello</div>', '7.jpg', 1, 1, '2018-03-07 15:22:44', '2018-04-13 14:22:13'),
(7, 'Mobiles', '<h1><u>iPhone is the best mobile among all the mobiles in the world</u><img src=\"https://i.imgur.com/aIYFyI7.jpg\" style=\"font-size: 14px;\" width=\"53\r\n\"></h1>', '8.jpg', 13, 0, '2018-03-08 02:26:38', '2018-04-19 12:46:58'),
(8, 'ABC', '<h1><u>Some </u><b>Content </b><i>Here</i><img src=\"https://i.imgur.com/Ok2YmaP.jpg\" style=\"font-size: 14px;\" width=\"54\r\n\"></h1>', '6.jpg', 13, 1, '2018-03-08 09:27:59', '2018-03-24 01:45:13'),
(9, 'Android Messages for Web may launch soon as Android setup finishes; Google Account Linking also present', '<div class=\"full_meta clearfix\" style=\"line-height: 40px; height: auto; color: rgb(255, 255, 255); background-color: rgb(68, 68, 68); font-size: 12px; font-family: \" titillium=\"\" web\",=\"\" sans-serif;\"=\"\"><span class=\"meta_author\" style=\"display: block; margin-right: 0px; float: left; margin-left: 10px;\"><a href=\"https://www.xda-developers.com/author/mishaalrahman/\" title=\"Posts by Mishaal Rahman\" rel=\"author\" class=\"article-meta-data\" style=\"color: rgb(255, 255, 255); transition: 0.2s;\"><span class=\"fa fa-user\" style=\"font-size: 12px; margin: 0px 5px 0px 0px; transition: all 0.2s; color: rgb(248, 80, 80);\"></span>Mishaal Rahman</a></span></div><div class=\"entry_content\" style=\"padding: 15px 0px 0px; margin-bottom: 15px; color: rgb(102, 102, 102); font-family: \" titillium=\"\" web\",=\"\" sans-serif;=\"\" font-size:=\"\" 17px;=\"\" background-color:=\"\" rgb(253,=\"\" 253,=\"\" 253);\"=\"\"><h1 class=\"entry_title entry-title\" style=\"margin-top: 0px; line-height: 46px; color: rgb(34, 34, 34); font-family: \" titillium=\"\" web\",=\"\" sans-serif;\"=\"\">Android Messages for Web may launch soon as Android setup finishes; Google Account Linking also present</h1><p class=\"dropcap\" style=\"margin-bottom: 20px;\">Nearly 2 months ago, Android Messages 2.9 started to roll out to users. On the surface, there wasn’t much new to write home about. Underneath, however, were hints at something exciting: a&nbsp;<a href=\"https://www.xda-developers.com/android-messages-web-interface-text-messages-chrome-firefox/\" style=\"color: rgb(252, 141, 141); transition: 0.2s;\">web interface for sending messages via a desktop browser</a>. This Android Messages for Web would allow you to use your phone to scan a QR code on your PC in order to pair the two devices. The feature supports all major desktop browsers such as Chrome, Firefox, Opera, Safari, and Edge, and the service seems to remember the last computer you signed in with. At the time, we couldn’t get the feature working because it was still in development. Now, however, it appears that the feature is inching ever closer to release as the Android side of the implementation seems complete. Furthermore, it appears that Google Account linking&nbsp;is about ready to roll out as we have been able to enable it.</p><p style=\"margin-bottom: 20px;\"><em>All of the screenshots below were provided by XDA Recognized Contributor&nbsp;<a href=\"https://forum.xda-developers.com/member.php?u=3563640\" style=\"color: rgb(252, 141, 141); transition: 0.2s;\">Quinny899</a>.</em></p><hr style=\"height: 0px;\"><h2 style=\"color: rgb(34, 34, 34); margin: 0px 0px 20px; font-family: \" titillium=\"\" web\",=\"\" sans-serif;\"=\"\">Android Messages for Web Android Setup</h2><p style=\"margin-bottom: 20px;\">Once the feature goes live, you will be able to see a button in the menu titled “messages for web.” Alternatively, you may see a snack bar at the bottom that informs you of the new Messages for Web feature. Once you press on either option, it’ll take you to a new page asking you to go to scan a QR code on&nbsp;<a class=\"vglnk\" target=\"_blank\" href=\"http://messages.android.com/\" rel=\"nofollow\" style=\"color: rgb(252, 141, 141); transition: 0.2s;\">messages.android.com</a>. Previously, this page didn’t exist, but now it is an actual subdomain that resolves to a 404. Given that the Android side of the implementation appears complete, we suspect that Google just has to flip the switch on the server side for this feature to go live.</p><div id=\"gallery-3\" class=\"gallery galleryid-214408 gallery-columns-4 gallery-size-large\" style=\"margin: auto;\"><dl class=\"gallery-item\" style=\"margin-bottom: 10px; float: left; margin-top: 10px; text-align: center; width: 202.512px;\"><dt class=\"gallery-icon portrait\"><a href=\"https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-for-Web-Menu-Button.png\" data-rel=\"lightbox-gallery-3\" style=\"color: rgb(252, 141, 141); transition: 0.2s;\"><img width=\"512\" height=\"1024\" src=\"https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-for-Web-Menu-Button-512x1024.png\" class=\"attachment-large size-large\" alt=\"Android Messages for Web\" srcset=\"https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-for-Web-Menu-Button-512x1024.png 512w, https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-for-Web-Menu-Button-150x300.png 150w, https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-for-Web-Menu-Button.png 600w\" sizes=\"(max-width: 512px) 100vw, 512px\" style=\"border-width: 2px; border-style: solid; border-color: rgb(207, 207, 207); outline: 0px; max-width: 100%; height: auto !important;\"></a></dt></dl><dl class=\"gallery-item\" style=\"margin-bottom: 10px; float: left; margin-top: 10px; text-align: center; width: 202.512px;\"><dt class=\"gallery-icon portrait\"><a href=\"https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-for-Web-Toast.png\" data-rel=\"lightbox-gallery-3\" style=\"color: rgb(252, 141, 141); transition: 0.2s;\"><img width=\"512\" height=\"1024\" src=\"https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-for-Web-Toast-512x1024.png\" class=\"attachment-large size-large\" alt=\"Android Messages for Web\" srcset=\"https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-for-Web-Toast-512x1024.png 512w, https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-for-Web-Toast-150x300.png 150w, https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-for-Web-Toast.png 600w\" sizes=\"(max-width: 512px) 100vw, 512px\" style=\"border-width: 2px; border-style: solid; border-color: rgb(207, 207, 207); outline: 0px; max-width: 100%; height: auto !important;\"></a></dt></dl><dl class=\"gallery-item\" style=\"margin-bottom: 10px; float: left; margin-top: 10px; text-align: center; width: 202.512px;\"><dt class=\"gallery-icon portrait\"><a href=\"https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-for-Web-QR-Code.png\" data-rel=\"lightbox-gallery-3\" style=\"color: rgb(252, 141, 141); transition: 0.2s;\"><img width=\"512\" height=\"1024\" src=\"https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-for-Web-QR-Code-512x1024.png\" class=\"attachment-large size-large\" alt=\"Android Messages for Web\" srcset=\"https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-for-Web-QR-Code-512x1024.png 512w, https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-for-Web-QR-Code-150x300.png 150w, https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-for-Web-QR-Code.png 600w\" sizes=\"(max-width: 512px) 100vw, 512px\" style=\"border-width: 2px; border-style: solid; border-color: rgb(207, 207, 207); outline: 0px; max-width: 100%; height: auto !important;\"></a></dt></dl><dl class=\"gallery-item\" style=\"margin-bottom: 10px; float: left; margin-top: 10px; text-align: center; width: 202.512px;\"><dt class=\"gallery-icon portrait\"><a href=\"https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-for-Web-QR-Code-Scanner.png\" data-rel=\"lightbox-gallery-3\" style=\"color: rgb(252, 141, 141); transition: 0.2s;\"><img width=\"512\" height=\"1024\" src=\"https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-for-Web-QR-Code-Scanner-512x1024.png\" class=\"attachment-large size-large\" alt=\"Android Messages for Web\" srcset=\"https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-for-Web-QR-Code-Scanner-512x1024.png 512w, https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-for-Web-QR-Code-Scanner-150x300.png 150w, https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-for-Web-QR-Code-Scanner.png 600w\" sizes=\"(max-width: 512px) 100vw, 512px\" style=\"border-width: 2px; border-style: solid; border-color: rgb(207, 207, 207); outline: 0px; max-width: 100%; height: auto !important;\"></a></dt></dl><br style=\"clear: both;\"></div><hr style=\"height: 0px;\"><h2 style=\"color: rgb(34, 34, 34); margin: 0px 0px 20px; font-family: \" titillium=\"\" web\",=\"\" sans-serif;\"=\"\">Google Account Linking in Android Messages</h2><p style=\"margin-bottom: 20px;\">New strings have appeared that hint at allowing you to link your Google account to give you a more “personalized experience” by using your account information. We aren’t yet sure what exactly that means, but the account linking seems to work.</p><pre class=\" prettyprinted\" style=\"font-family: monospace, monospace; font-size: 14px; padding: 10px; line-height: 21px; background-color: rgb(255, 255, 255); border-color: rgb(238, 238, 238);\"><code class=\" prettyprinted\" style=\"font-family: monospace, monospace; font-size: 14px;\"><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\"><string< span=\"\"></string<></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\"> </span></span><span class=\"atn\" style=\"color: rgb(102, 0, 102);\"><span class=\"atn\">name</span></span><span class=\"pun\" style=\"color: rgb(102, 102, 0);\"><span class=\"pun\">=</span></span><span class=\"atv\" style=\"color: rgb(0, 136, 0);\"><span class=\"atv\">\"connect_to_gaia_title\"</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\">&gt;</span></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\">Connect your Google Account</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\"></span></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\">\r\n</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\"><string< span=\"\"></string<></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\"> </span></span><span class=\"atn\" style=\"color: rgb(102, 0, 102);\"><span class=\"atn\">name</span></span><span class=\"pun\" style=\"color: rgb(102, 102, 0);\"><span class=\"pun\">=</span></span><span class=\"atv\" style=\"color: rgb(0, 136, 0);\"><span class=\"atv\">\"account_selected\"</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\">&gt;</span></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\">account selected</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\"></span></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\">\r\n</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\"><string< span=\"\"></string<></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\"> </span></span><span class=\"atn\" style=\"color: rgb(102, 0, 102);\"><span class=\"atn\">name</span></span><span class=\"pun\" style=\"color: rgb(102, 102, 0);\"><span class=\"pun\">=</span></span><span class=\"atv\" style=\"color: rgb(0, 136, 0);\"><span class=\"atv\">\"google_account_pref_title\"</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\">&gt;</span></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\">Google Account</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\"></span></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\">\r\n</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\"><string< span=\"\"></string<></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\"> </span></span><span class=\"atn\" style=\"color: rgb(102, 0, 102);\"><span class=\"atn\">name</span></span><span class=\"pun\" style=\"color: rgb(102, 102, 0);\"><span class=\"pun\">=</span></span><span class=\"atv\" style=\"color: rgb(0, 136, 0);\"><span class=\"atv\">\"google_account_pref_key\"</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\">&gt;</span></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\">google_account</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\"></span></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\">\r\n</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\"><string< span=\"\"></string<></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\"> </span></span><span class=\"atn\" style=\"color: rgb(102, 0, 102);\"><span class=\"atn\">name</span></span><span class=\"pun\" style=\"color: rgb(102, 102, 0);\"><span class=\"pun\">=</span></span><span class=\"atv\" style=\"color: rgb(0, 136, 0);\"><span class=\"atv\">\"google_profile_photo\"</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\">&gt;</span></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\">Google profile photo</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\"></span></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\">\r\n</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\"><string< span=\"\"></string<></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\"> </span></span><span class=\"atn\" style=\"color: rgb(102, 0, 102);\"><span class=\"atn\">name</span></span><span class=\"pun\" style=\"color: rgb(102, 102, 0);\"><span class=\"pun\">=</span></span><span class=\"atv\" style=\"color: rgb(0, 136, 0);\"><span class=\"atv\">\"link_gaia_explanation\"</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\">&gt;</span></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\">Gives you a more personalized experience by using your Google Account info</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\"></span></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\">\r\n</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\"><string< span=\"\"></string<></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\"> </span></span><span class=\"atn\" style=\"color: rgb(102, 0, 102);\"><span class=\"atn\">name</span></span><span class=\"pun\" style=\"color: rgb(102, 102, 0);\"><span class=\"pun\">=</span></span><span class=\"atv\" style=\"color: rgb(0, 136, 0);\"><span class=\"atv\">\"create_account\"</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\">&gt;</span></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\">Add account</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\"></span></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\">\r\n</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\"><string< span=\"\"></string<></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\"> </span></span><span class=\"atn\" style=\"color: rgb(102, 0, 102);\"><span class=\"atn\">name</span></span><span class=\"pun\" style=\"color: rgb(102, 102, 0);\"><span class=\"pun\">=</span></span><span class=\"atv\" style=\"color: rgb(0, 136, 0);\"><span class=\"atv\">\"remove_account\"</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\">&gt;</span></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\">Disconnect</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\"></span></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\">\r\n</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\"><string< span=\"\"></string<></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\"> </span></span><span class=\"atn\" style=\"color: rgb(102, 0, 102);\"><span class=\"atn\">name</span></span><span class=\"pun\" style=\"color: rgb(102, 102, 0);\"><span class=\"pun\">=</span></span><span class=\"atv\" style=\"color: rgb(0, 136, 0);\"><span class=\"atv\">\"remove_account_content_description\"</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\">&gt;</span></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\">Disconnect Google account</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\"></span></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\">\r\n</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\"><string< span=\"\"></string<></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\"> </span></span><span class=\"atn\" style=\"color: rgb(102, 0, 102);\"><span class=\"atn\">name</span></span><span class=\"pun\" style=\"color: rgb(102, 102, 0);\"><span class=\"pun\">=</span></span><span class=\"atv\" style=\"color: rgb(0, 136, 0);\"><span class=\"atv\">\"no_google_account\"</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\">&gt;</span></span><span class=\"pln\" style=\"color: rgb(0, 0, 0);\"><span class=\"pln\">None</span></span><span class=\"tag\" style=\"color: rgb(0, 0, 136);\"><span class=\"tag\"></span></span></span></span></span></span></span></span></span></span></span></span></code></pre><div id=\"gallery-4\" class=\"gallery galleryid-214408 gallery-columns-3 gallery-size-large\" style=\"margin: auto;\"><dl class=\"gallery-item\" style=\"margin-bottom: 10px; float: left; margin-top: 10px; text-align: center; width: 267.313px;\"><dt class=\"gallery-icon portrait\"><a href=\"https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-Linking-Google-Account-1.png\" data-rel=\"lightbox-gallery-4\" style=\"color: rgb(252, 141, 141); transition: 0.2s;\"><img width=\"512\" height=\"1024\" src=\"https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-Linking-Google-Account-1-512x1024.png\" class=\"attachment-large size-large\" alt=\"Android Messages Google Account Linking\" srcset=\"https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-Linking-Google-Account-1-512x1024.png 512w, https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-Linking-Google-Account-1-150x300.png 150w, https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-Linking-Google-Account-1.png 600w\" sizes=\"(max-width: 512px) 100vw, 512px\" style=\"border-width: 2px; border-style: solid; border-color: rgb(207, 207, 207); outline: 0px; max-width: 100%; height: auto !important;\"></a></dt></dl><dl class=\"gallery-item\" style=\"margin-bottom: 10px; float: left; margin-top: 10px; text-align: center; width: 267.313px;\"><dt class=\"gallery-icon portrait\"><a href=\"https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-Linking-Google-Account-2.png\" data-rel=\"lightbox-gallery-4\" style=\"color: rgb(252, 141, 141); transition: 0.2s;\"><img width=\"512\" height=\"1024\" src=\"https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-Linking-Google-Account-2-512x1024.png\" class=\"attachment-large size-large\" alt=\"Android Messages Google Account Linking\" srcset=\"https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-Linking-Google-Account-2-512x1024.png 512w, https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-Linking-Google-Account-2-150x300.png 150w, https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-Linking-Google-Account-2.png 600w\" sizes=\"(max-width: 512px) 100vw, 512px\" style=\"border-width: 2px; border-style: solid; border-color: rgb(207, 207, 207); outline: 0px; max-width: 100%; height: auto !important;\"></a></dt></dl><dl class=\"gallery-item\" style=\"margin-bottom: 10px; float: left; margin-top: 10px; text-align: center; width: 267.313px;\"><dt class=\"gallery-icon portrait\"><a href=\"https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-Linking-Google-Account-3.png\" data-rel=\"lightbox-gallery-4\" style=\"color: rgb(252, 141, 141); transition: 0.2s;\"><img width=\"512\" height=\"1024\" src=\"https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-Linking-Google-Account-3-512x1024.png\" class=\"attachment-large size-large\" alt=\"Android Messages Google Account Linking\" srcset=\"https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-Linking-Google-Account-3-512x1024.png 512w, https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-Linking-Google-Account-3-150x300.png 150w, https://www1-lw.xda-cdn.com/files/2018/04/Android-Messages-Linking-Google-Account-3.png 600w\" sizes=\"(max-width: 512px) 100vw, 512px\" style=\"border-width: 2px; border-style: solid; border-color: rgb(207, 207, 207); outline: 0px; max-width: 100%; height: auto !important;\"></a></dt></dl><br style=\"clear: both;\"></div><p style=\"margin-bottom: 20px;\">That’s all that we think is interesting for now. If we discover more, we’ll update this post with that information.</p><hr style=\"height: 0px;\"><p style=\"margin-bottom: 20px;\"><em>Feature image credits: made by a friend of Quinny899’s on Discord. Explanation: the codename for Messages for Web is “ditto” and Android Messages’ codename is “bugle.” Hence, a ditto playing the bugle.</em></p></div>', 'e86920e4d030235a1b82468640df6321.jpg', 1, 1, '2018-04-13 14:25:52', '2018-04-19 12:48:33'),
(10, 'LG opens a new center dedicated to delivering software updates faster', '<h1 class=\"entry_title entry-title\" style=\"margin-top: 0px; line-height: 46px; color: rgb(34, 34, 34); font-family: &quot;Titillium Web&quot;, sans-serif; background-color: rgb(253, 253, 253);\">LG opens a new center dedicated to delivering software updates faster</h1><p class=\"dropcap\" style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Titillium Web&quot;, sans-serif; font-size: 17px; background-color: rgb(253, 253, 253);\">One of the biggest disadvantages of Android as a platform is its fragmented nature, which leads to multiple problems including infrequent or non-existent updates on many different devices. Devices like the&nbsp;<a href=\"https://forum.xda-developers.com/pixel\" style=\"color: rgb(252, 141, 141); transition: 0.2s;\">Google Pixel</a>&nbsp;tend to go against the grain here with timely updates, but similar update patterns are few and far between on other Android smartphones. In an effort to speed up their software updates, LG is introducing a new software update center in South Korea which will work exclusively towards developing software updates in a timely fashion for all of their devices. It is located in LG’s new research and development campus in Magok-dong, western Seoul.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Titillium Web&quot;, sans-serif; font-size: 17px; background-color: rgb(253, 253, 253);\">The first target of LG’s new software update center is the&nbsp;<a href=\"https://forum.xda-developers.com/lg-g6\" style=\"color: rgb(252, 141, 141); transition: 0.2s;\">LG G6</a>, with the aim of bringing&nbsp;<a href=\"https://www.xda-developers.com/tag/android-oreo/\" style=\"color: rgb(252, 141, 141); transition: 0.2s;\">Android Oreo</a>&nbsp;to the device later this month to Korean handsets. Other aims to be accomplished by the new research center are not just related to bringing software updates themselves to their Android devices, but also ensuring a consistent user experience and continuously testing stability and compatibility between hardware and software, particularly after software updates. LG hopes that its existence will help the company accomplish its goal of providing high-quality service to everyone around the world, not just to a smaller subset of users. This means that the software update center is not just for Korean handsets, but for global releases of devices.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Titillium Web&quot;, sans-serif; font-size: 17px; background-color: rgb(253, 253, 253);\">“Aligning after-sales support with customers’ needs is a top priority at LG,” said Mr. Jo Seong-jin, CEO of LG Electronics. “Stable and consistent upgrades will demonstrate to our customers that LG smartphones have long and reliable lifespans.” We’ve already seen the company taking an&nbsp;<a href=\"https://www.xda-developers.com/lg-adjusts-mobile-business-strategy-wants-retain-existing-models-longer/\" style=\"color: rgb(252, 141, 141); transition: 0.2s;\">unorthodox approach</a>&nbsp;to device release cycles, and setting up a dedicated software update center is something that few companies are currently doing. It could very well pay off for the South Korean company, especially if they want to ensure customer loyalty by bringing faster software updates than their competitors.</p>', '1e5b399fa591b6aa3929d504b66cbd23.jpg', 1, 1, '2018-04-13 14:35:57', '2018-04-19 12:47:57'),
(11, 'Google publishes documentation explaining the Fuchsia Operating System', '<h1 class=\"entry_title entry-title\" style=\"margin-top: 0px; line-height: 46px; color: rgb(34, 34, 34); font-family: &quot;Titillium Web&quot;, sans-serif; background-color: rgb(253, 253, 253);\">Google publishes documentation explaining the Fuchsia Operating System</h1><div class=\"alert_message yellow\" style=\"padding: 10px; margin-bottom: 5px; background-color: rgb(255, 247, 214); border: 1px solid rgb(233, 212, 119); color: rgb(149, 100, 51); font-family: &quot;Titillium Web&quot;, sans-serif; font-size: 17px;\"><p style=\"margin-bottom: 0px;\"><span style=\"font-weight: 700; color: rgb(34, 34, 34);\">Update 1</span>: This page is apparently not new, though it is the first we’ve heard of it. The page was previously named “book.md” and was only recently renamed, which is why it appears new.</p></div><p class=\"dropcap\" style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Titillium Web&quot;, sans-serif; font-size: 17px; background-color: rgb(253, 253, 253);\">You’ve probably seen mentions of the Fuchsia operating system here and there since it has been in development for&nbsp;<a href=\"https://www.xda-developers.com/xda-external-link/fuchsia-is-a-new-operating-system-from-google/\" style=\"color: rgb(252, 141, 141); transition: 0.2s;\">almost 2 years</a>. It’s Google’s not-so-secretive operating system which many speculate will eventually replace Android. We’ve seen it grow from a&nbsp;<a href=\"https://www.xda-developers.com/googles-fuchsia-is-a-smartphone-os-with-a-new-ui-but-no-linux-kernel/\" style=\"color: rgb(252, 141, 141); transition: 0.2s;\">barely functional mock-up UI in an app form</a>&nbsp;to a version that actually&nbsp;<a href=\"https://www.xda-developers.com/google-fuchsia-os-pixelbook-video/\" style=\"color: rgb(252, 141, 141); transition: 0.2s;\">boots on existing hardware</a>. We’ve seen how much importance Google places on the project as&nbsp;<a href=\"https://www.xda-developers.com/google-head-of-android-platform-security-fuschia/\" style=\"color: rgb(252, 141, 141); transition: 0.2s;\">veteran Android project managers</a>&nbsp;are starting to work on it. But after all of this time, we’ve never once had either an official announcement from Google about the project or any documentation about it—all of the information thus far has come as a result of people digging into the source code.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Titillium Web&quot;, sans-serif; font-size: 17px; background-color: rgb(253, 253, 253);\">Now, that appears to be changing as Google has published a documentation page called “<a href=\"https://fuchsia.googlesource.com/docs/+/master/the-book/\" style=\"color: rgb(252, 141, 141); transition: 0.2s;\">The Book</a>.” The page aims to explain what Fuchsia, the “modular, capability-based operating system” is and is not. The most prominent text on that page is a large section explaining that Fuchsia is NOT Linux, in case that wasn’t clear already. Above that are several readme pages explaining Fuchsia’s file systems, boot sequence, core libraries, sandboxing, and more. The rest of the page has sections explaining what the Zircon micro-kernel is and how the framework, storage, networking, graphics, media, user interface, and more are implemented.</p><div id=\"gallery-2\" class=\"gallery galleryid-214317 gallery-columns-1 gallery-size-large\" style=\"margin: auto; color: rgb(102, 102, 102); font-family: &quot;Titillium Web&quot;, sans-serif; font-size: 17px; background-color: rgb(253, 253, 253);\"><dl class=\"gallery-item\" style=\"margin-bottom: 10px; float: left; margin-top: 10px; text-align: center; width: 810.05px;\"><dt class=\"gallery-icon landscape\"><a href=\"https://www1-lw.xda-cdn.com/files/2018/04/What-is-Fuchsia-OS.png\" data-rel=\"lightbox-gallery-2\" style=\"color: rgb(252, 141, 141); transition: 0.2s;\"><img width=\"900\" height=\"393\" src=\"https://www1-lw.xda-cdn.com/files/2018/04/What-is-Fuchsia-OS-1024x447.png\" class=\"attachment-large size-large\" alt=\"Fuchsia OS\" srcset=\"https://www1-lw.xda-cdn.com/files/2018/04/What-is-Fuchsia-OS-1024x447.png 1024w, https://www1-lw.xda-cdn.com/files/2018/04/What-is-Fuchsia-OS-300x131.png 300w, https://www1-lw.xda-cdn.com/files/2018/04/What-is-Fuchsia-OS-768x335.png 768w, https://www1-lw.xda-cdn.com/files/2018/04/What-is-Fuchsia-OS.png 1200w\" sizes=\"(max-width: 900px) 100vw, 900px\" style=\"border-width: 2px; border-style: solid; border-color: rgb(207, 207, 207); outline: 0px; max-width: 100%; height: auto !important;\"></a></dt></dl><br style=\"clear: both;\"><dl class=\"gallery-item\" style=\"margin-bottom: 10px; float: left; margin-top: 10px; text-align: center; width: 810.05px;\"><dt class=\"gallery-icon landscape\"><a href=\"https://www1-lw.xda-cdn.com/files/2018/04/What-is-Fuchsia-OS-2.png\" data-rel=\"lightbox-gallery-2\" style=\"color: rgb(252, 141, 141); transition: 0.2s;\"><img width=\"900\" height=\"410\" src=\"https://www1-lw.xda-cdn.com/files/2018/04/What-is-Fuchsia-OS-2-1024x466.png\" class=\"attachment-large size-large\" alt=\"Fuchsia OS\" srcset=\"https://www1-lw.xda-cdn.com/files/2018/04/What-is-Fuchsia-OS-2-1024x466.png 1024w, https://www1-lw.xda-cdn.com/files/2018/04/What-is-Fuchsia-OS-2-300x137.png 300w, https://www1-lw.xda-cdn.com/files/2018/04/What-is-Fuchsia-OS-2-768x349.png 768w, https://www1-lw.xda-cdn.com/files/2018/04/What-is-Fuchsia-OS-2.png 1200w\" sizes=\"(max-width: 900px) 100vw, 900px\" style=\"border-width: 2px; border-style: solid; border-color: rgb(207, 207, 207); outline: 0px; max-width: 100%; height: auto !important;\"></a></dt></dl><br style=\"clear: both;\"></div><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Titillium Web&quot;, sans-serif; font-size: 17px; background-color: rgb(253, 253, 253);\">At the time of this article’s publication, a lot of the information has yet to be filled in. Additional documentation is being added to this page, and over time, this page will grow with information about everything you need to know about how the new operating system and its microkernel works. If or when Google does eventually officially announce Fuchsia, they’ll likely migrate over to a more dedicated webpage that’s easier to find, but for now, this documentation is the best way for developers to start learning how the upcoming OS ticks.</p>', '9307b1c7b6c30193388a6461ce65b046.png', 1, 0, '2018-04-13 14:46:07', NULL),
(12, 'abc', '<h1><u>Some </u><b>Content </b><i>Here</i></h1>', '7dc99a6ec7bd95e2920bac19fb6cde64.jpg', 3, 0, '2018-04-13 15:20:03', '2020-05-09 14:53:16'),
(13, 'hello222', '<h1><u>Some </u><b>Content </b><i>Here</i></h1>', 'default.jpg', 3, 0, '2018-04-23 03:43:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblarticlexcomment`
--

CREATE TABLE `tblarticlexcomment` (
  `ArticleXCommentID` int(11) NOT NULL,
  `ArticleID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `ArticleCommentContent` varchar(1000) NOT NULL,
  `CreatedDateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `ArticleCommentStatus` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblarticlexcomment`
--

INSERT INTO `tblarticlexcomment` (`ArticleXCommentID`, `ArticleID`, `UserID`, `ArticleCommentContent`, `CreatedDateTime`, `ArticleCommentStatus`) VALUES
(1, 1, 1, 'It\'s really awesome Search Engine, I\'ve been using it since last 5 years', '2018-03-06 17:39:22', 0),
(2, 2, 1, 'Bing Is  also good search engine, try it out', '2018-03-06 17:39:22', 0),
(3, 1, 2, 'abc xyz', '2018-03-06 21:05:42', 1),
(4, 1, 2, 'abcdefg.....', '2018-03-22 18:26:46', 0),
(5, 3, 2, 'chotu', '2018-03-22 18:35:30', 0),
(6, 1, 2, 'Kd', '2018-03-29 20:08:32', 0),
(7, 1, 1, 'ogohohohohohohohohohohohohohohohohohohohohohohohoh', '2018-04-07 09:52:20', 1),
(8, 1, 1, 'AB CHECK KARE ki kaisa chal ta <?php echo \"hello\" ?>', '2018-04-07 10:02:29', 0),
(9, 1, 1, 'good one, keep it up', '2018-04-12 11:45:48', 0),
(10, 1, 1, 'great', '2018-04-12 11:47:07', 1),
(11, 1, 1, 'test1', '2018-04-12 11:48:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblarticlexlike`
--

CREATE TABLE `tblarticlexlike` (
  `ArticleXLikeID` int(11) NOT NULL,
  `ArticleID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `CreatedDateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `ArticleLikeStatus` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblarticlexlike`
--

INSERT INTO `tblarticlexlike` (`ArticleXLikeID`, `ArticleID`, `UserID`, `CreatedDateTime`, `ArticleLikeStatus`) VALUES
(3, 1, 3, '2018-03-06 17:43:11', 0),
(4, 1, 4, '2018-03-06 17:43:31', 0),
(26, 1, 2, '2018-03-26 12:47:35', 0),
(29, 10, 2, '2018-04-13 14:36:14', 0),
(30, 11, 3, '2018-04-13 15:29:39', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblarticlextag`
--

CREATE TABLE `tblarticlextag` (
  `ArticleXTagID` int(11) NOT NULL,
  `ArticleID` int(11) NOT NULL,
  `TagID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblarticlextag`
--

INSERT INTO `tblarticlextag` (`ArticleXTagID`, `ArticleID`, `TagID`) VALUES
(1, 13, 1),
(2, 13, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblattch`
--

CREATE TABLE `tblattch` (
  `id` int(11) NOT NULL,
  `userID` varchar(255) NOT NULL,
  `tugasID` int(11) NOT NULL,
  `attachmentName` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblattch`
--

INSERT INTO `tblattch` (`id`, `userID`, `tugasID`, `attachmentName`, `created_at`) VALUES
(1, 'u6KIKFhsAsKB', 11, '87351499_2235017420141135_301583089015023636_n.jpg', '2020-12-26 08:08:50'),
(2, 'u6KIKFhsAsKB', 12, '87351499_2235017420141135_301583089015023636_n.jpg', '2021-01-05 06:45:10'),
(3, 'u6KIKFhsAsKB', 5, '87351499_2235017420141135_301583089015023636_n.jpg', '2021-01-05 09:00:58'),
(4, 'u6KIKFhsAsKB', 13, '87351499_2235017420141135_301583089015023636_n.jpg', '2021-01-06 06:29:48'),
(5, 'u6KIKFhsAsKB', 13, '87351499_2235017420141135_301583089015023636_n.jpg', '2021-01-06 06:53:16'),
(6, 'u6KIKFhsAsKB', 11, '87351499_2235017420141135_301583089015023636_n.jpg', '2021-01-13 07:15:22'),
(7, 'u6KIKFhsAsKB', 18, '87351499_2235017420141135_301583089015023636_n.jpg', '2021-01-13 09:06:30'),
(8, 'u6KIKFhsAsKB', 14, '87351499_2235017420141135_301583089015023636_n.jpgJBGcUV8xVIPSXyCswk', '2021-01-18 04:31:19'),
(9, 'u6KIKFhsAsKB', 14, 'TMiUsqNbl9z3HXNkRJ89275973_938120786647647_3176580304266389712_n.jpg', '2021-01-18 04:33:38'),
(10, 'u6KIKFhsAsKB', 13, '3gICS3ZwcyYsAXNeNMakeditasiumm.jpg', '2021-02-16 06:29:38'),
(11, 'xW44aO', 11, 'MHiM7HySDpcZ9iXn8F87351499_2235017420141135_301583089015023636_n.jpg', '2021-02-16 07:03:21'),
(12, 'xW44aO', 13, 'QLhEnsfN35mOohDneKduta co.jpg', '2021-02-16 07:03:56'),
(13, 'xW44aO', 14, 'M8SVx35oCD3DYmMRYEakeditasiumm.jpg', '2021-02-16 07:39:03'),
(14, 'xW44aO', 19, 'QrIjV8aSIQRyfAX5p387351499_2235017420141135_301583089015023636_n.jpg', '2021-02-19 07:37:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblbab`
--

CREATE TABLE `tblbab` (
  `BabID` int(11) NOT NULL,
  `BabName` varchar(200) NOT NULL,
  `BabContent` mediumtext NOT NULL,
  `video` varchar(150) DEFAULT NULL,
  `Jenjang` varchar(2) NOT NULL,
  `MapelID` int(11) NOT NULL,
  `Grade` int(2) NOT NULL,
  `BabOrder` int(3) NOT NULL,
  `AddedByAdminID` int(11) NOT NULL,
  `BabStatus` tinyint(4) NOT NULL DEFAULT 0,
  `CreatedDateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `UpdatedDateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbab`
--

INSERT INTO `tblbab` (`BabID`, `BabName`, `BabContent`, `video`, `Jenjang`, `MapelID`, `Grade`, `BabOrder`, `AddedByAdminID`, `BabStatus`, `CreatedDateTime`, `UpdatedDateTime`) VALUES
(1, 'Membaca awal', '<p>Ini ibu budi</p>\r\n<p>Ini ayah budi</p>', '', '1', 2, 1, 1, 2, 0, '2020-05-25 13:49:56', NULL),
(2, 'Bab 1 : Kalimat Efektif', '<p>Membuat sebuah kalimat tentu bukan hal yang sulit bagi teman-teman. Namun, apakah kalimat yang dibuat tersebut sudah termasuk kalimat efektif? Pada dasarnya, sebuah kalimat dapat dibentuk oleh klausa yang terdiri&hellip;</p>', '', '2', 2, 2, 1, 2, 0, '2020-06-05 19:17:05', NULL),
(3, 'Bab 2 : Tajuk Rencana', '<p>Tajuk rencana adalah ulasan penulis terhadap isu yang sedang hangat di masyarakat secara menyeluruh. Jenis tulisan non-fiktif yang satu ini biasa dijumpai di surat kabar, ditulis oleh pemimpin redaksi ataupun&hellip;</p>', '', '2', 2, 2, 2, 2, 0, '2020-06-05 19:17:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(100) NOT NULL,
  `ParentCategoryID` int(11) NOT NULL,
  `AddedByAdminID` int(11) NOT NULL,
  `CategoryStatus` tinyint(4) NOT NULL DEFAULT 0,
  `CreatedDateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`CategoryID`, `CategoryName`, `ParentCategoryID`, `AddedByAdminID`, `CategoryStatus`, `CreatedDateTime`) VALUES
(1, 'Web Designing', 0, 1, 0, '2018-03-05 10:27:06'),
(2, 'Server side', 0, 1, 0, '2018-03-05 10:37:24'),
(3, 'Programming Language', 0, 1, 0, '2018-04-04 15:15:17'),
(4, 'Kelas 1', 0, 2, 0, '2020-05-19 15:47:24'),
(5, 'Kelas 2', 0, 2, 0, '2020-05-19 15:47:43'),
(6, 'Kelas 3', 0, 2, 0, '2020-05-19 15:47:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblchallenge`
--

CREATE TABLE `tblchallenge` (
  `ChallengeID` int(11) NOT NULL,
  `SenderID` int(11) NOT NULL,
  `SenderXP` int(11) DEFAULT NULL,
  `ReceiverID` int(11) NOT NULL,
  `ReceiverXP` int(11) DEFAULT NULL,
  `CourseID` int(11) NOT NULL,
  `CreatedDateTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblchallenge`
--

INSERT INTO `tblchallenge` (`ChallengeID`, `SenderID`, `SenderXP`, `ReceiverID`, `ReceiverXP`, `CourseID`, `CreatedDateTime`) VALUES
(1, 2, 0, 1, 20, 1, '2018-04-11 10:52:39'),
(2, 3, -4, 1, NULL, 1, '2020-06-22 13:28:40'),
(3, 3, 20, 2, 12, 1, '2018-04-11 17:39:53'),
(4, 1, 12, 2, 12, 1, '2018-04-13 07:01:55'),
(5, 3, 4, 1, -12, 1, '2018-04-13 10:04:48'),
(6, 1, NULL, 2, NULL, 1, '2018-04-13 12:57:44'),
(7, 1, NULL, 7, NULL, 1, '2018-10-06 01:38:13'),
(8, 1, -2, 5, NULL, 1, '2020-05-04 14:43:11'),
(9, 3, -4, 1, NULL, 2, '2020-06-22 14:29:03');

-- --------------------------------------------------------

--
-- Table structure for table `tblchapter`
--

CREATE TABLE `tblchapter` (
  `ChapterID` int(11) NOT NULL,
  `ChapterName` varchar(200) NOT NULL,
  `CourseID` int(11) NOT NULL,
  `AddedByAdminID` int(11) NOT NULL,
  `ChapterStatus` tinyint(4) NOT NULL DEFAULT 0,
  `CreatedDateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblchapter`
--

INSERT INTO `tblchapter` (`ChapterID`, `ChapterName`, `CourseID`, `AddedByAdminID`, `ChapterStatus`, `CreatedDateTime`) VALUES
(1, 'HTML', 1, 1, 0, '2018-02-28 08:39:04'),
(2, 'HTML5', 1, 1, 0, '2018-02-28 09:41:06'),
(3, 'HTML Graphics', 1, 1, 0, '2018-03-04 02:16:16'),
(4, 'HTML Media', 1, 1, 0, '2018-03-04 02:16:48'),
(5, 'HTML APIs', 1, 1, 0, '2018-03-04 13:55:54'),
(6, 'HTML Examples', 1, 1, 0, '2018-03-04 13:58:23'),
(7, 'HTML References', 1, 1, 0, '2018-03-04 13:58:23'),
(8, 'HTML Forms', 1, 1, 0, '2018-04-02 21:04:28'),
(9, 'CSS Tutorial', 2, 2, 0, '2018-04-09 16:47:08'),
(10, 'CSS Advanced', 2, 2, 0, '2018-04-09 16:50:01'),
(11, 'CSS Responsive', 2, 2, 0, '2018-04-09 16:50:01'),
(12, 'CSS Grid', 2, 2, 0, '2018-04-09 16:50:01'),
(13, 'CSS References', 2, 2, 0, '2018-04-09 16:50:01'),
(14, 'CSS Properties', 2, 2, 0, '2018-04-09 16:50:01'),
(15, 'Grammer', 12, 3, 0, '2020-05-19 15:50:51'),
(16, 'Conjunction', 12, 3, 0, '2020-05-19 15:50:59');

-- --------------------------------------------------------

--
-- Table structure for table `tblclstream`
--

CREATE TABLE `tblclstream` (
  `id` int(11) NOT NULL,
  `stream_title` varchar(255) NOT NULL,
  `stream_link` varchar(255) NOT NULL,
  `stream_siswa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcobaquiz`
--

CREATE TABLE `tblcobaquiz` (
  `id` int(11) NOT NULL,
  `materi_id` varchar(50) DEFAULT NULL,
  `teacher_id` varchar(255) NOT NULL,
  `course` varchar(50) DEFAULT NULL,
  `quiz_question` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcobaquiz`
--

INSERT INTO `tblcobaquiz` (`id`, `materi_id`, `teacher_id`, `course`, `quiz_question`, `created_at`, `updated_at`) VALUES
(5, '20', 'cChAqVbnLR4V', 'english', 's', '2020-12-13 06:19:28', '2020-12-13 06:19:28'),
(6, '20', 'cChAqVbnLR4V', 'english', 'coba', '2020-12-15 13:29:07', '2020-12-15 13:29:07'),
(7, '17', 'cChAqVbnLR4V', 'class', 'coba', '2021-01-04 06:12:54', '2021-01-04 06:12:54'),
(8, '17', 'cChAqVbnLR4V', 'class', 'aku adalah', '2021-01-04 06:13:24', '2021-01-04 06:13:24'),
(41, '23', 'cChAqVbnLR4V', 'english', '1', '2021-01-11 05:21:17', '2021-01-11 05:21:17'),
(44, '28', 'cChAqVbnLR4V', 'arab', 'apa itu tajwid?', '2021-02-08 06:07:36', '2021-02-08 06:07:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblcobaquizanswer`
--

CREATE TABLE `tblcobaquizanswer` (
  `id` int(11) NOT NULL,
  `id_siswa` varchar(50) NOT NULL,
  `id_materi` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `id_option` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcobaquizanswer`
--

INSERT INTO `tblcobaquizanswer` (`id`, `id_siswa`, `id_materi`, `id_soal`, `id_option`, `created_at`) VALUES
(2, 'u6KIKFhsAsKB', 20, 5, 10, '2020-12-13 06:25:50'),
(3, 'u6KIKFhsAsKB', 17, 7, 17, '2021-01-04 06:26:18'),
(4, 'u6KIKFhsAsKB', 17, 8, 19, '2021-01-04 06:26:18'),
(5, 'u6KIKFhsAsKB', 17, 7, 16, '2021-01-04 06:26:34'),
(6, 'u6KIKFhsAsKB', 17, 8, 18, '2021-01-04 06:26:34'),
(7, 'xW44aO', 28, 44, 27, '2021-02-19 07:37:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblcobaquizanswfinal`
--

CREATE TABLE `tblcobaquizanswfinal` (
  `id` int(11) NOT NULL,
  `id_siswa` varchar(50) NOT NULL,
  `id_materi` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `id_option` int(11) NOT NULL,
  `right_answ` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcobaquizanswfinal`
--

INSERT INTO `tblcobaquizanswfinal` (`id`, `id_siswa`, `id_materi`, `id_soal`, `id_option`, `right_answ`, `created_at`) VALUES
(1, 'u6KIKFhsAsKB', 15, 4, 5, 1, '2020-12-13 06:17:11'),
(2, 'u6KIKFhsAsKB', 20, 5, 10, 1, '2020-12-13 06:25:50'),
(3, 'u6KIKFhsAsKB', 17, 7, 17, 0, '2021-01-04 06:26:19'),
(4, 'u6KIKFhsAsKB', 17, 8, 19, 0, '2021-01-04 06:26:19'),
(5, 'u6KIKFhsAsKB', 17, 7, 16, 1, '2021-01-04 06:26:34'),
(6, 'u6KIKFhsAsKB', 17, 8, 18, 1, '2021-01-04 06:26:34'),
(7, 'xW44aO', 28, 44, 27, 1, '2021-02-19 07:37:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblcobaquizopt`
--

CREATE TABLE `tblcobaquizopt` (
  `id` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `id_materi` int(11) NOT NULL,
  `answ_option` text DEFAULT NULL,
  `right_answ` int(11) DEFAULT 0,
  `opt_stat` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcobaquizopt`
--

INSERT INTO `tblcobaquizopt` (`id`, `id_soal`, `id_materi`, `answ_option`, `right_answ`, `opt_stat`, `created_at`) VALUES
(10, 5, 20, 'choice', 1, 1, '2020-12-13 06:24:41'),
(11, 5, 20, 'choice1', 0, 1, '2020-12-13 06:25:11'),
(12, 5, 20, 'choice2', 0, 1, '2020-12-13 06:25:16'),
(13, 6, 20, 'choice', 1, 1, '2020-12-15 13:29:10'),
(14, 6, 20, 'choice', 0, 1, '2020-12-15 13:29:15'),
(15, 6, 20, 'pilihan 1', 0, 1, '2020-12-15 13:29:18'),
(16, 7, 17, 'kenapa ada? benar', 1, 1, '2021-01-04 06:12:58'),
(17, 7, 17, 'jadi', 0, 1, '2021-01-04 06:13:10'),
(18, 8, 17, 'anak gembala benar', 1, 1, '2021-01-04 06:13:26'),
(19, 8, 17, 'bukan', 0, 1, '2021-01-04 06:13:39'),
(22, 41, 23, 'choice', 0, 1, '2021-01-12 04:56:18'),
(23, 41, 23, 'choice', 0, 1, '2021-01-12 04:56:21'),
(24, 41, 23, 'choice', 1, 1, '2021-01-12 04:56:27'),
(25, 44, 28, 'tanda tangan', 0, 1, '2021-02-08 06:07:40'),
(26, 44, 28, 'tanda baca', 0, 1, '2021-02-08 06:07:42'),
(27, 44, 28, 'hukum bacaan', 1, 1, '2021-02-08 06:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `tblcobaquizsiswa`
--

CREATE TABLE `tblcobaquizsiswa` (
  `id` int(11) NOT NULL,
  `id_siswa` varchar(50) NOT NULL,
  `id_materi` int(11) NOT NULL,
  `nilai` int(11) DEFAULT NULL,
  `kkm` decimal(11,0) DEFAULT NULL,
  `percobaan_ke` int(11) NOT NULL,
  `lulus` int(11) DEFAULT NULL,
  `course` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcobaquizsiswa`
--

INSERT INTO `tblcobaquizsiswa` (`id`, `id_siswa`, `id_materi`, `nilai`, `kkm`, `percobaan_ke`, `lulus`, `course`, `created_at`) VALUES
(2, 'u6KIKFhsAsKB', 20, 100, '90', 1, 1, 'english', '2020-12-13 06:25:50'),
(3, 'u6KIKFhsAsKB', 17, 0, '50', 1, 0, 'class', '2021-01-04 06:26:19'),
(4, 'u6KIKFhsAsKB', 17, 100, '50', 2, 1, 'class', '2021-01-04 06:26:34'),
(5, 'xW44aO', 28, 100, '100', 1, 1, 'arab', '2021-02-19 07:37:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomment`
--

CREATE TABLE `tblcomment` (
  `commentID` int(11) NOT NULL,
  `course` varchar(10) NOT NULL,
  `sectionID` int(10) NOT NULL,
  `userid` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `file` varchar(200) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `commentparent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcomment`
--

INSERT INTO `tblcomment` (`commentID`, `course`, `sectionID`, `userid`, `comment`, `file`, `time`, `commentparent`) VALUES
(11, 'english', 1, 3, 'alhamdulillah', NULL, '2020-06-21 17:30:36', 10),
(12, 'english', 1, 3, 'waras', NULL, '2020-06-21 17:30:43', 10),
(13, 'english', 1, 3, 'tes', NULL, '2020-06-23 11:20:47', 0),
(14, 'english', 1, 3, 'makan', NULL, '2020-06-23 11:20:53', 13),
(15, 'english', 1, 3, 'umbi', NULL, '2020-06-23 11:21:00', 13),
(16, 'english', 1, 4, 'Tugas dikumpulkan', NULL, '2020-06-29 14:58:24', 0),
(17, 'english', 1, 4, 'Di baca ya', '7feded209876f5016bd771669cee086d.pdf', '2020-06-30 05:27:10', 0),
(18, 'english', 1, 3, 'yes', NULL, '2020-06-30 12:24:20', 0),
(19, 'english', 1, 3, 'tes', NULL, '2020-06-30 12:24:55', 0),
(20, 'english', 1, 3, '', NULL, '2020-06-30 12:54:19', 0),
(21, 'english', 1, 3, 'tes', '5e7c51a22cbf5efd36865387e3983293.pdf', '2020-06-30 12:55:16', 0),
(22, 'english', 1, 3, 'bima', 'c17fa5f3f2bdb87eacb80a835f57895a.pdf', '2020-06-30 13:05:08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcompletedsection`
--

CREATE TABLE `tblcompletedsection` (
  `id` int(11) NOT NULL,
  `SectionID` int(5) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Complete` enum('0','1') DEFAULT NULL COMMENT '0 = belum\r\n1 = sudah',
  `CompleteDate` date DEFAULT NULL,
  `QuizID` int(11) DEFAULT NULL,
  `QuizResult` enum('0','1') DEFAULT NULL COMMENT '0 = tidak\r\n1 = lulus',
  `WrittenBY` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcompletedsection`
--

INSERT INTO `tblcompletedsection` (`id`, `SectionID`, `UserID`, `Complete`, `CompleteDate`, `QuizID`, `QuizResult`, `WrittenBY`) VALUES
(1, 1, 1, '1', '2020-06-01', NULL, NULL, NULL),
(2, 2, 1, '1', '2020-06-02', NULL, NULL, NULL),
(3, 1, 2, '1', NULL, NULL, NULL, NULL),
(4, 1, 3, '1', NULL, NULL, NULL, NULL),
(5, 2, 3, '1', NULL, NULL, NULL, NULL),
(6, 4, 3, '1', NULL, NULL, NULL, NULL),
(7, 8, 1, '1', NULL, NULL, NULL, NULL),
(8, 9, 1, '1', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcourse`
--

CREATE TABLE `tblcourse` (
  `CourseID` int(11) NOT NULL,
  `CourseName` varchar(200) NOT NULL,
  `CourseImage` varchar(200) NOT NULL DEFAULT 'default.jpg',
  `CourseDescription` varchar(5000) NOT NULL,
  `courseMeetID` varchar(255) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `AddedByAdminID` int(11) DEFAULT NULL,
  `CourseStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcourse`
--

INSERT INTO `tblcourse` (`CourseID`, `CourseName`, `CourseImage`, `CourseDescription`, `courseMeetID`, `CategoryID`, `AddedByAdminID`, `CourseStatus`, `created_at`) VALUES
(1, 'english', 'en-course.jpeg', 'Program Bahasa Inggris merupakan program kursus bahasa inggris dimulai dari dasar. Program ini dimulai dari belajar kosakata, mengucapkannya, hingga menuliskan kata tersebut. Dalam program ini juga di terapkan praktik untuk memperlanjar conversation siswa. Program bahasa inggris meliputi pembelajaran: sekitar kelas, sekitar sekolah, sekitar peserta didik, ungkapan, text, dan grammar. Adik adik akan belajar bahasa inggris dengan senang bersama kakak kakak di jayabayabimbel.co.id', 'https://www.youtube.com/?hl=en&gl=ID', 0, 0, 0, '2020-06-23 12:01:54'),
(2, 'math', 'math-course.jpeg', 'Program matematika merupakan program kursus matematika mulai dari mengenal angka hingga berhitung. Ketepatan hasil hitung dan kecepatan pengerjaan merupakan kunci sukses belajar matematika. Tidak hanya berhitung tetapi adik adik juga akan belajar bab bab dalam pelajaran matematika yang sdh di kemas sederhana untuk mudah dipelajari adik adik semua. Adik adik akan dipandu belajar matematika dengan santai tetapi mengena agar tidak boring saat belajar.', 'https://www.youtube.com/?hl=en&gl=ID', 0, 0, 0, '2020-06-23 12:01:54'),
(3, 'class', 'class-course.jpeg', 'Program bimbingan belajar kelas ini di seting untuk belajar sesuai jenjang. Adik adik akan mendalami dan lebih memahami pelajaran di sekolah dengan belajar bersama deprogram ini. Program ini terdiri dari SD SMP dan SMA yang masing masing dipisahkan pada kelasnya. Mulai kelas 1 hingga kelas 12. Pelajaran yang dipelajari dalam program ini sama persis dengan yang dipelajari di sekolah. Program ini lebih mengedepankan pengetahuan dan pemahaman adik adik sehingga bisa paham lebih dari yang diharapkan', NULL, 0, 0, 0, '2020-06-23 12:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `tblcourseuser`
--

CREATE TABLE `tblcourseuser` (
  `id` int(11) NOT NULL,
  `region` int(11) DEFAULT NULL,
  `user` varchar(50) NOT NULL,
  `course` varchar(10) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `jenjang` int(1) NOT NULL,
  `grade` int(2) NOT NULL,
  `school` varchar(50) NOT NULL,
  `date_submit` datetime NOT NULL DEFAULT current_timestamp(),
  `date_deactivate` datetime DEFAULT NULL,
  `bukti` varchar(150) NOT NULL DEFAULT '0',
  `verify` enum('1','0') NOT NULL DEFAULT '0',
  `tahun_id` int(3) NOT NULL,
  `active` enum('1','0') NOT NULL,
  `verifiedBy` int(1) DEFAULT NULL,
  `verifiedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcourseuser`
--

INSERT INTO `tblcourseuser` (`id`, `region`, `user`, `course`, `class_id`, `jenjang`, `grade`, `school`, `date_submit`, `date_deactivate`, `bukti`, `verify`, `tahun_id`, `active`, `verifiedBy`, `verifiedDate`) VALUES
(1, 3, 'u6KIKFhsAsKB', 'class', 1, 4, 3, 'sman 3 blitar', '2020-11-10 14:47:00', NULL, 'img/user_bukti_pembayaran/u6KIKFhsAsKB_class.jpg', '1', 1, '1', NULL, NULL),
(2, NULL, 'u6KIKFhsAsKB', 'english', NULL, 4, 3, 'sman 3 blitar', '2020-11-10 15:14:56', NULL, 'img/user_bukti_pembayaran/u6KIKFhsAsKB_english.jpg', '1', 1, '1', NULL, NULL),
(3, NULL, 'u6KIKFhsAsKB', 'math', NULL, 4, 3, 'sman 3 blitar', '2020-11-10 15:15:08', NULL, 'img/user_bukti_pembayaran/u6KIKFhsAsKB_math.jpg', '1', 1, '1', NULL, NULL),
(4, NULL, 'uaYyJDuCSTIA', 'english', NULL, 1, 2, 'sman 3 blitar', '2021-01-08 13:48:00', NULL, 'img/user_bukti_pembayaran/uaYyJDuCSTIA_english.jpg', '1', 1, '1', NULL, NULL),
(6, NULL, 'xW44aO', 'english', NULL, 4, 3, 'sman 3', '2021-01-28 14:40:14', NULL, 'img/user_bukti_pembayaran/xW44aO_english.jpg', '1', 1, '1', NULL, NULL),
(7, 3, 'xW44aO', 'class', 1, 4, 3, 'sman 3', '2021-01-28 16:26:02', NULL, 'img/user_bukti_pembayaran/xW44aO_class.jpg', '1', 1, '1', NULL, NULL),
(18, NULL, 'RbebFd01PQFE', 'english', NULL, 4, 3, 'sman 3', '2021-01-30 16:06:35', NULL, '0', '0', 1, '1', NULL, NULL),
(19, NULL, 'RbebFd01PQFE', 'math', NULL, 4, 3, 'sman 3', '2021-01-30 16:11:13', NULL, '0', '0', 1, '1', NULL, NULL),
(21, NULL, 'u6KIKFhsAsKB', 'arab', NULL, 4, 3, 'sman 3 blitar', '2021-02-16 13:37:14', NULL, 'img/user_bukti_pembayaran/u6KIKFhsAsKB_arab.jpg', '1', 1, '1', NULL, NULL),
(24, NULL, 'xW44aO', 'math', NULL, 4, 3, 'sman 3 blitar', '2021-02-16 14:01:10', NULL, 'img/user_bukti_pembayaran/xW44aO_math.jpg', '1', 1, '1', NULL, NULL),
(32, NULL, '1kJWyrcsLucWv6ZU', 'english', NULL, 4, 3, 'sman 3 blitar', '2021-02-19 14:31:39', NULL, 'img/user_bukti_pembayaran/xW44aO_arab.jpg', '1', 1, '1', NULL, NULL),
(33, NULL, '1kJWyrcsLucWv6ZU', 'math', NULL, 4, 3, 'sman 3 blitar', '2021-07-12 09:19:08', NULL, 'img/user_bukti_pembayaran/1kJWyrcsLucWv6ZU_math.jpg', '1', 1, '1', NULL, NULL),
(34, 3, 'uaYyJDuCSTIA', 'class', 1, 4, 3, 'sman 3 blitar', '2021-07-14 15:22:58', NULL, '0', '1', 1, '1', NULL, NULL),
(35, 3, '1kJWyrcsLucWv6ZU', 'class', NULL, 4, 3, 'sman 3 blitar', '2021-07-19 14:46:01', NULL, 'img/user_bukti_pembayaran/1kJWyrcsLucWv6ZU_class.jpg', '1', 1, '1', NULL, NULL),
(36, NULL, 'pv2uu9B7vjCbVcgc', 'english', NULL, 4, 3, 'sman 3 blitar', '2021-07-22 13:07:40', NULL, '0', '1', 1, '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblday`
--

CREATE TABLE `tblday` (
  `id` int(11) NOT NULL,
  `day` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblday`
--

INSERT INTO `tblday` (`id`, `day`) VALUES
(1, 'Senin'),
(2, 'Selasa'),
(3, 'Rabu'),
(4, 'Kamis'),
(5, 'Jum\'at'),
(6, 'Sabtu');

-- --------------------------------------------------------

--
-- Table structure for table `tblfollow`
--

CREATE TABLE `tblfollow` (
  `FollowID` int(11) NOT NULL,
  `FollowerID` int(11) NOT NULL,
  `FollowingID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfollow`
--

INSERT INTO `tblfollow` (`FollowID`, `FollowerID`, `FollowingID`) VALUES
(2, 6, 2),
(3, 2, 3),
(4, 2, 4),
(8, 4, 2),
(9, 5, 2),
(13, 2, 1),
(14, 3, 1),
(16, 3, 2),
(53, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblforuma`
--

CREATE TABLE `tblforuma` (
  `ForumAID` int(11) NOT NULL,
  `ForumAContent` varchar(5000) NOT NULL,
  `ForumQID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `ForumAStatus` tinyint(4) NOT NULL DEFAULT 0,
  `CreatedDateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `UpdatedDateTime` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblforuma`
--

INSERT INTO `tblforuma` (`ForumAID`, `ForumAContent`, `ForumQID`, `UserID`, `ForumAStatus`, `CreatedDateTime`, `UpdatedDateTime`) VALUES
(1, '<u>== should be used to check values</u><br><i>== should be used to check both value as well as datatype</i>', 1, 2, 0, '2018-03-04 18:36:38', '2018-04-13 15:25:16'),
(2, 'use what you want I dont care', 1, 3, 1, '2018-03-04 21:07:45', '2018-04-13 09:37:10'),
(3, 'abc', 1, 1, 1, '2018-03-05 17:09:28', '2018-04-13 09:37:15'),
(4, 'xyz', 2, 2, 0, '2018-03-05 17:09:57', '2020-05-09 20:27:31'),
(5, 'c Language', 1, 2, 1, '2018-03-26 00:16:48', '2018-04-30 09:58:20'),
(6, 'ASDADASD', 2, 1, 0, '2018-04-07 10:21:12', NULL),
(7, 'doesnt matter', 1, 1, 1, '2018-04-10 10:35:14', '2018-04-13 09:37:13'),
(8, 'hello', 1, 1, 1, '2018-04-10 10:36:14', '2018-04-13 09:37:36'),
(9, 'test2', 1, 1, 1, '2018-04-11 00:39:37', '2018-04-13 09:38:25'),
(10, 'helllllo55', 1, 1, 1, '2018-04-11 01:08:53', '2018-04-13 09:38:28'),
(11, 'hello5555', 1, 1, 1, '2018-04-11 01:10:20', '2018-04-13 09:38:31'),
(12, 'hello495', 1, 1, 1, '2018-04-11 12:38:59', '2018-04-13 09:37:59'),
(13, 'hello 1508', 1, 1, 1, '2018-04-11 15:08:14', '2018-04-13 09:37:55'),
(14, '143', 1, 2, 1, '2018-04-11 23:42:36', '2018-04-13 09:37:44'),
(15, 'trial22', 1, 1, 1, '2018-04-12 01:17:11', '2018-04-13 09:38:03'),
(16, 'trail3333', 1, 1, 1, '2018-04-12 01:17:23', '2018-04-13 09:38:06'),
(17, 'nice question', 1, 1, 1, '2018-04-12 11:48:51', '2018-04-13 09:38:11'),
(18, 'nice question', 1, 1, 1, '2018-04-12 11:51:14', '2018-04-13 09:38:18'),
(19, 'hey there', 1, 1, 1, '2018-04-12 11:51:36', '2018-04-13 09:38:15'),
(20, 'test222', 1, 1, 1, '2018-04-12 12:01:29', '2018-04-13 09:36:59'),
(21, '=== is strict while == is easy', 1, 1, 0, '2018-04-13 12:59:22', NULL),
(22, '=== is strict while == is easy', 1, 1, 1, '2018-04-13 13:00:31', '2018-04-13 13:01:55'),
(23, 'new', 1, 1, 1, '2018-04-13 13:01:21', '2018-04-13 13:01:58'),
(24, 'hello baby', 11, 2, 0, '2018-04-17 15:24:08', NULL),
(25, 'Hello <?php echo \"Bello\"; ?> Tello', 11, 2, 0, '2018-04-17 15:25:03', NULL),
(26, 'Hello &lt;?php echo &quot;Bello&quot;; ?&gt; Tello', 11, 2, 0, '2018-04-17 15:30:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblforumaxvote`
--

CREATE TABLE `tblforumaxvote` (
  `ForumAXVoteID` int(11) NOT NULL,
  `ForumAID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `VoteType` tinyint(4) NOT NULL,
  `CreatedDateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblforumaxvote`
--

INSERT INTO `tblforumaxvote` (`ForumAXVoteID`, `ForumAID`, `UserID`, `VoteType`, `CreatedDateTime`) VALUES
(1, 1, 1, 1, '2018-03-04 18:38:13'),
(3, 1, 3, 1, '2018-03-05 17:11:04'),
(4, 2, 4, -1, '2018-03-05 17:12:01'),
(5, 2, 5, 1, '2018-03-05 17:12:35'),
(6, 2, 6, -1, '2018-03-05 17:14:51'),
(19, 3, 2, -1, '2018-03-25 23:52:35'),
(23, 4, 2, 1, '2018-03-25 23:52:40'),
(59, 1, 2, -1, '2018-03-29 17:00:09'),
(65, 2, 2, 1, '2018-04-04 19:56:51'),
(92, 6, 1, 1, '2018-04-07 10:22:57'),
(94, 3, 1, -1, '2018-04-07 23:57:34');

-- --------------------------------------------------------

--
-- Table structure for table `tblforumq`
--

CREATE TABLE `tblforumq` (
  `ForumQID` int(11) NOT NULL,
  `ForumQTitle` varchar(500) NOT NULL,
  `ForumQContent` varchar(5000) NOT NULL,
  `UserID` int(11) NOT NULL,
  `AcceptedForumAID` int(11) DEFAULT NULL,
  `ForumQStatus` tinyint(4) NOT NULL DEFAULT 0,
  `CreatedDateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `UpdatedDateTime` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblforumq`
--

INSERT INTO `tblforumq` (`ForumQID`, `ForumQTitle`, `ForumQContent`, `UserID`, `AcceptedForumAID`, `ForumQStatus`, `CreatedDateTime`, `UpdatedDateTime`) VALUES
(1, '== vs ===', '<p>I am Getting confused in using ==\r\n and ===</br><b>When should i use == and ===\r\n in php</b><p>', 2, NULL, 0, '2018-03-04 18:31:12', '2018-04-23 03:57:45'),
(2, 'abc', 'jeni', 1, NULL, 0, '2018-03-05 16:18:14', '2018-04-19 12:37:49'),
(3, 'xyz', 'question details are xyz', 2, NULL, 0, '2018-03-05 18:58:15', '2018-03-29 15:43:01'),
(4, 'jeni', '<font color=\"black\"><h1><u>jENIcONTENT</u></h1></font>', 2, NULL, 0, '2018-03-26 02:46:36', NULL),
(5, 'hello', '<font color=\"black\"><h3><u>Ask </u><b>Question </b><i>Here</i></h3></font>', 2, NULL, 0, '2018-03-29 20:14:12', NULL),
(6, 'k', '<font color=\"black\"><h3><u>&lt;?php echo \"hello\"; ?&gt;</u></h3></font>', 2, NULL, 0, '2018-03-29 20:15:46', NULL),
(7, 'block', '<h4><font face=\"impact\" size=\"5\">test222</font></h4>', 3, NULL, 0, '2018-04-11 15:56:06', '2018-04-11 14:59:26'),
(8, 'trial1', '<font color=\"black\"><h3><u>Ask </u><b>Question </b><i>Here&nbsp;</i></h3></font>', 1, NULL, 0, '2018-04-12 01:11:24', NULL),
(9, 'trial1', '<font color=\"black\"><h3><u>Ask </u><b>Question </b><i>Here&nbsp;</i></h3></font>', 1, NULL, 0, '2018-04-12 01:11:41', NULL),
(10, 'Harsh', 'Hello&lt;div&gt;&amp;lt;?php&lt;div&gt;&lt;div style=&quot;text-align: left;&quot;&gt;echo &quot;Hello Test Case&quot;;&lt;/div&gt;&lt;div&gt;?&amp;gt;&lt;/div&gt;&lt;/div&gt;&lt;div&gt;Bello&lt;/div&gt;&lt;/div&gt;', 2, NULL, 0, '2018-04-17 15:14:35', NULL),
(11, 'Harsh', 'Hello<div>&lt;?php<div><div style=\"text-align: left;\">echo \"Hello Test Case\";</div><div>?&gt;</div></div><div>Bello</div></div>', 2, NULL, 0, '2018-04-17 15:17:46', NULL),
(12, 'hello', '<font color=\"black\"><h3><u>Ask </u><b>Question </b><i>Here</i></h3><div><i><br></i></div><div><i><br></i></div><div><i>wjdhyshdksdhskhd</i></div></font>', 1, NULL, 0, '2018-04-19 16:15:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblforumqxtag`
--

CREATE TABLE `tblforumqxtag` (
  `ForumQXTagID` int(11) NOT NULL,
  `ForumQID` int(11) NOT NULL,
  `TagID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblforumqxtag`
--

INSERT INTO `tblforumqxtag` (`ForumQXTagID`, `ForumQID`, `TagID`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblforumqxvote`
--

CREATE TABLE `tblforumqxvote` (
  `ForumQXVoteID` int(11) NOT NULL,
  `ForumQID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `VoteType` tinyint(4) NOT NULL,
  `CreatedDateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblforumqxvote`
--

INSERT INTO `tblforumqxvote` (`ForumQXVoteID`, `ForumQID`, `UserID`, `VoteType`, `CreatedDateTime`) VALUES
(3, 1, 3, 1, '2018-03-23 19:21:16'),
(4, 1, 4, -1, '2018-03-23 19:23:34'),
(5, 1, 5, -1, '2018-03-23 19:23:34'),
(6, 1, 6, -1, '2018-03-23 19:23:34'),
(7, 1, 7, 1, '2018-03-23 19:23:34'),
(8, 1, 8, 1, '2018-03-23 19:23:34'),
(10, 2, 2, 1, '2018-03-23 19:23:34'),
(11, 2, 3, 1, '2018-03-23 19:23:34'),
(12, 3, 4, -1, '2018-03-23 19:23:34'),
(13, 2, 5, -1, '2018-03-23 19:23:34'),
(14, 2, 6, -1, '2018-03-23 19:23:34'),
(20, 2, 1, 1, '2018-04-07 10:23:27'),
(22, 7, 3, 1, '2018-04-11 15:56:46'),
(24, 1, 1, 1, '2018-04-13 18:25:16');

-- --------------------------------------------------------

--
-- Table structure for table `tblhari`
--

CREATE TABLE `tblhari` (
  `id` int(11) NOT NULL,
  `namahari` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblhari`
--

INSERT INTO `tblhari` (`id`, `namahari`) VALUES
(1, 'senin'),
(2, 'selasa'),
(3, 'rabu'),
(4, 'kamis'),
(5, 'jumat'),
(6, 'sabtu'),
(7, 'minggu');

-- --------------------------------------------------------

--
-- Table structure for table `tbljenjang`
--

CREATE TABLE `tbljenjang` (
  `id` int(11) NOT NULL,
  `namajenjang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbljenjang`
--

INSERT INTO `tbljenjang` (`id`, `namajenjang`) VALUES
(1, 'TK'),
(2, 'SD'),
(3, 'SMP'),
(4, 'SMA');

-- --------------------------------------------------------

--
-- Table structure for table `tblkelas`
--

CREATE TABLE `tblkelas` (
  `id` int(11) NOT NULL,
  `base_name` varchar(45) NOT NULL,
  `sub_name` varchar(255) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `region` varchar(255) NOT NULL,
  `tingkat` int(1) NOT NULL,
  `jenjang` int(11) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=aktif 0=tidak',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblkelas`
--

INSERT INTO `tblkelas` (`id`, `base_name`, `sub_name`, `class_name`, `region`, `tingkat`, `jenjang`, `urutan`, `aktif`, `created_at`) VALUES
(1, '4', '3', 'A', 'Blitar', 4, 3, NULL, 1, '2020-11-10 07:44:34'),
(2, '4', '1', 'A', 'Blitar', 4, 1, NULL, 1, '2020-11-21 10:04:26'),
(3, '4', '3', 'B', 'Blitar', 4, 3, NULL, 1, '2021-01-13 05:56:59'),
(4, '1', '1', 'A', 'Nganjuk', 1, 1, NULL, 1, '2021-07-16 11:36:10');

-- --------------------------------------------------------

--
-- Table structure for table `tblkomentar`
--

CREATE TABLE `tblkomentar` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `userlevel` int(11) NOT NULL,
  `materi_id` int(11) NOT NULL,
  `course` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblkomentar`
--

INSERT INTO `tblkomentar` (`id`, `user_id`, `userlevel`, `materi_id`, `course`, `comment`, `created_at`) VALUES
(45, 'u6KIKFhsAsKB', 1, 25, 'english', 'as', '2021-01-28 07:37:12'),
(46, 'xW44aO', 1, 25, 'english', 'halo', '2021-01-28 07:41:17'),
(47, 'u6KIKFhsAsKB', 1, 25, 'english', 'cek', '2021-01-28 07:41:50'),
(48, 'xW44aO', 1, 25, 'english', 'kenapa kamu?', '2021-01-28 07:41:58'),
(49, 'xW44aO', 1, 25, 'english', 's', '2021-01-28 07:42:16'),
(50, 'xW44aO', 1, 25, 'english', 'what is this?', '2021-01-28 07:42:47'),
(62, 'xW44aO', 1, 27, 'english', 'tester', '2021-01-28 09:14:22'),
(66, 'xW44aO', 1, 20, 'english', 'test', '2021-01-28 09:15:26'),
(68, 'u6KIKFhsAsKB', 1, 20, 'english', 'halo', '2021-01-28 09:15:32'),
(70, 'xW44aO', 1, 20, 'english', 'C++, an extension of C—which we said was an easy language to learn—is a general-purpose programming language.', '2021-01-28 09:16:42'),
(71, 'u6KIKFhsAsKB', 1, 27, 'english', 'a', '2021-01-28 09:22:25'),
(72, 'u6KIKFhsAsKB', 1, 17, 'class', 'dsa', '2021-01-28 09:33:38'),
(74, 'RbebFd01PQFE', 1, 17, 'class', 'xczcx', '2021-01-28 09:34:26'),
(75, 'u6KIKFhsAsKB', 1, 17, 'class', 'kenapa bos?', '2021-01-28 09:34:33'),
(77, 'u6KIKFhsAsKB', 1, 17, 'class', '7.1 surround sound is the common name for an eight-channel surround audio system commonly used in home theatre configurations. It adds two additional speakers to the more conventional six-channel (5.1) audio configuration. As with 5.1 surround sound, 7.1 surround sound positional audio uses the standard front left and right, center, and LFE (subwoofer) speaker configuration.', '2021-01-28 09:34:50'),
(80, 'RbebFd01PQFE', 1, 17, 'class', 'wow nice explanation dude', '2021-01-28 09:35:24'),
(81, 'RbebFd01PQFE', 1, 17, 'class', 'thanks', '2021-01-28 09:35:30'),
(82, 'u6KIKFhsAsKB', 1, 17, 'class', 'c', '2021-01-28 09:56:20'),
(83, 'u6KIKFhsAsKB', 1, 17, 'class', 'c', '2021-01-28 09:56:26'),
(84, 'cChAqVbnLR4V', 0, 27, 'cChAqVbnLR4V', 'c', '2021-01-29 07:54:11'),
(85, 'cChAqVbnLR4V', 0, 27, 'cChAqVbnLR4V', 'halo', '2021-01-29 07:58:21'),
(87, 'u6KIKFhsAsKB', 1, 20, 'english', 'a', '2021-02-03 06:50:23'),
(88, 'u6KIKFhsAsKB', 1, 27, 'english', 'coba', '2021-02-03 08:28:27'),
(89, 'u6KIKFhsAsKB', 1, 28, 'arab', 'test', '2021-02-08 06:17:15'),
(90, 'u6KIKFhsAsKB', 1, 28, 'arab', 'test lagi', '2021-02-08 07:24:17'),
(91, 'u6KIKFhsAsKB', 1, 17, 'class', 'coba', '2021-02-13 09:54:59'),
(92, 'u6KIKFhsAsKB', 1, 17, 'class', 'p', '2021-02-13 09:55:13'),
(93, 'u6KIKFhsAsKB', 1, 17, 'class', 'c', '2021-02-13 09:55:39'),
(95, 'cChAqVbnLR4V', 0, 17, 'cChAqVbnLR4V', 'halo anak anak', '2021-07-14 08:31:38'),
(96, '1kJWyrcsLucWv6ZU', 1, 20, 'english', 'kenapa?', '2021-07-22 05:57:42'),
(97, '1kJWyrcsLucWv6ZU', 1, 20, 'english', 'a', '2021-07-22 05:58:03'),
(98, '1kJWyrcsLucWv6ZU', 1, 20, 'english', 'kenapa?', '2021-07-22 05:59:01'),
(99, '1kJWyrcsLucWv6ZU', 1, 20, 'english', 'kenapa?', '2021-07-22 05:59:07'),
(103, 'pv2uu9B7vjCbVcgc', 1, 20, 'english', 'C++, an extension of C—which we said was an easy language to learn—is a general-purpose programming language.', '2021-07-22 06:16:53'),
(104, '1kJWyrcsLucWv6ZU', 1, 20, 'english', 'c', '2021-07-22 06:17:13'),
(111, '1kJWyrcsLucWv6ZU', 1, 27, 'english', 'In many modern web applications, WebSockets are used to implement realtime, live-updating user interfaces. When some data is updated on the server, a message is typically sent over a WebSocket connection to be handled by the client. WebSockets provide a more efficient alternative to continually polling your application\'s server for data changes that should be reflected in your UI.', '2021-07-22 08:55:50'),
(113, 'pv2uu9B7vjCbVcgc', 1, 27, 'english', '???', '2021-07-22 09:03:09'),
(114, '1kJWyrcsLucWv6ZU', 1, 27, 'english', 'Test', '2021-07-22 09:03:25'),
(115, '1kJWyrcsLucWv6ZU', 1, 27, 'english', 'kenapa?', '2021-07-22 09:05:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblmapel`
--

CREATE TABLE `tblmapel` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `info` text DEFAULT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = ya, 0 = tidak'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblmapel`
--

INSERT INTO `tblmapel` (`id`, `nama`, `info`, `aktif`) VALUES
(1, 'Matematika', NULL, 1),
(2, 'Bahasa Indonesia', NULL, 1),
(3, 'Bahasa Inggris', NULL, 1),
(4, 'Kewarganegaraan', NULL, 1),
(5, 'Bahasa Jawa', NULL, 1),
(6, 'Fisika', NULL, 1),
(7, 'Biologi', NULL, 1),
(8, 'Seni Budaya', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmapel_kelas`
--

CREATE TABLE `tblmapel_kelas` (
  `id` int(11) NOT NULL,
  `meetID` varchar(255) DEFAULT NULL,
  `kelas_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `hari` int(11) NOT NULL,
  `waktu` time NOT NULL,
  `waktuEnd` time NOT NULL,
  `teacher_id` varchar(50) NOT NULL,
  `tahun_id` int(2) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblmapel_kelas`
--

INSERT INTO `tblmapel_kelas` (`id`, `meetID`, `kelas_id`, `mapel_id`, `hari`, `waktu`, `waktuEnd`, `teacher_id`, `tahun_id`, `aktif`) VALUES
(2, 'https://meet.google.com/ktx-muzt-ydp', 1, 1, 2, '16:32:00', '00:00:00', 'cChAqVbnLR4V', 1, 1),
(6, 'https://meet.google.com/ktx-muzt-ydp', 1, 1, 6, '14:35:59', '16:26:00', 'WKRVv5j6Uxms', 1, 1),
(7, NULL, 2, 2, 1, '16:05:00', '17:05:00', 'cChAqVbnLR4V', 1, 1),
(8, 'https://meet.google.com/ktx-muzt-ydp', 1, 2, 3, '16:00:00', '17:15:00', 'cChAqVbnLR4V', 1, 1),
(10, 'https://meet.google.com/', 1, 1, 4, '11:15:00', '12:30:00', 'WKRVv5j6Uxms', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmateri`
--

CREATE TABLE `tblmateri` (
  `id` int(11) NOT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `teacher_id` varchar(50) NOT NULL,
  `mapel_id` int(11) DEFAULT NULL,
  `materi_name` varchar(255) NOT NULL,
  `materi_konten` longtext NOT NULL,
  `materi_file` varchar(255) DEFAULT NULL,
  `materi_OriginalName` varchar(255) DEFAULT NULL,
  `materi_file_ext` varchar(50) NOT NULL,
  `materi_video` varchar(255) DEFAULT NULL,
  `videoID` varchar(255) DEFAULT NULL,
  `videoDuration` int(11) DEFAULT NULL,
  `jenjang` int(11) NOT NULL,
  `tingkat` int(11) NOT NULL,
  `course` varchar(15) NOT NULL,
  `materi_status` int(4) NOT NULL DEFAULT 1,
  `quiz_status` int(11) NOT NULL DEFAULT 0,
  `quiz_kkm` int(11) DEFAULT NULL,
  `quiz_nilai` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmateri`
--

INSERT INTO `tblmateri` (`id`, `id_kelas`, `teacher_id`, `mapel_id`, `materi_name`, `materi_konten`, `materi_file`, `materi_OriginalName`, `materi_file_ext`, `materi_video`, `videoID`, `videoDuration`, `jenjang`, `tingkat`, `course`, `materi_status`, `quiz_status`, `quiz_kkm`, `quiz_nilai`, `created_at`) VALUES
(17, 1, 'cChAqVbnLR4V', 1, 'berikan pendapat kalian tentang kursus ini', '<p>m</p>', NULL, NULL, '', 'https://www.youtube.com/embed/BcaUisE5ysA', NULL, NULL, 4, 3, 'class', 1, 1, 50, 0, '2020-12-11 08:00:23'),
(20, NULL, 'cChAqVbnLR4V', NULL, 'simple past tense', '<p>s</p>', 'cChAqVbnLR4V_2020_12_13_01_19_19pm_english.xlsx', NULL, 'xlsx', 'https://www.youtube.com/embed/BcaUisE5ysA', NULL, 8, 4, 3, 'english', 1, 1, 90, 0, '2020-12-13 06:19:19'),
(21, 1, 'cChAqVbnLR4V', 2, 'cerita pendek', '<p>style=&quot;text-decoration: none; color: black;&quot;style=&quot;text-decoration: none; color: black;&quot;</p>', 'cChAqVbnLR4V_2020_12_13_03_09_06pm_class.jpg', NULL, 'jpg', 'https://www.youtube.com/embed/BcaUisE5ysA', NULL, NULL, 4, 1, 'class', 1, 0, NULL, 0, '2020-12-13 08:09:06'),
(22, 1, 'WKRVv5j6Uxms', 7, 'berikan pendapat kalian tentang kursus ini biologi', '<p>$2y$10$Fy/AQC/jNjFHrOq1rfOh9.w9X.wOHNaWV9Xha16lbJ8sO6xaAnYZe</p>', NULL, NULL, '', 'https://www.youtube.com/embed/BcaUisE5ysA', NULL, NULL, 4, 3, 'class', 1, 0, NULL, 0, '2020-12-14 06:09:10'),
(23, NULL, 'cChAqVbnLR4V', NULL, 'coba', '<p style=\"margin-bottom:13px\">berikan</p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKkAAAAzCAIAAABjSr9dAAAAAXNSR0IArs4c6QAAAAlwSFlzAAAOxAAADsQBlSsOGwAABeBJREFUeF7tXDta4zAQFnuWhIIvJzAnyNJQ0dI5ZdLQbbkdjV0m3bapaLBPQE7AR4F9F3ZGUhzZHlsPY8dYUUMg0kiaf14ajWBfXrUsCQPGwkT8ZEGUebX98mZ/AQf8aXnGnv5Fwe7vM3t6+0pCf3ZO7dQv7GfLJXvdH8I/2+WMpS/vi+uZx/D7hT0AnX0cwvslfEhfdov7eRqnua/w+4Y9IB7czDnaN8Hu9+PnHVgAT9sVuH9Pt+79tn3Te+8BVxhwwd5fabhgf8F+ihzI49sr63YbexP3T1nvZ+s/MntjlL+DXJ+VBgjRQlnJ0xX/uEqtCJy988RzmlmEuVvD7C121opJliQJMC0JITOMA0JoCaSGUXJC/AY+JviH0Tc2+hV2XaAN+tC3HXu4BlA7IN7H3+Fz8VUWhYGUg67L73H89LHnOirMa0c4apLB1V6oOs5REhutGPUIqiFpL7D/FvRVoAVzVRdR/xa/1joQQ5T66eYJ9gIoY8dP8Lqq12VVl2IA4aJyK2wUPvQDqxFVFfss4W5qmDAFtWKouU5q6oo+odZqcIeGBUQrUJGnHIEGEu6b+rIVdeIF9sNjwXVx0JDIWfcp6I1Ui7AWreOgf8egpIV8lbjE/my+qcKc3utqnMI+d+NtORK6I/RSRjVSYMurGnGR20mfN+zhzvkyM13xFIdLWz5FbPN8zIn0X1ez3Ar0d78tEjFw58/cyjxm1wt2+MgMOZO/7hlcMAMXFmGUZFssM2hsNK+IXKaEhiDu4JZqZsXWspUIVDW/ODeBC+3H/h1Nvyl1S+Ut7c5qrK1ROrkiA17ViaPeQz1DVaxP+Ur8HjOWFmpCiWoe87QnJj7juJT8nN8Eh/1rYTUGqKuZraFmj+u+mbVCtXdthOI38hbrSiLMFe7+8kRxyZJSDLThFUWcSEuAv4GAFdPbYila/dDpPVc0GdSrqTAiK3IileCgetB7VFoCDKsIWaiB0RAlW2sU4FXNWil8a+ZtEXPVI3KagVpeKQuhiGOs1wAdn7B2bDnSM8dALlwOrE+mkxx7fpuMKK9KF3y7R9+04LTztrIaHQNNtkv1kfd4VDwyu3sI2OJ+TYeAs/VbQa+C3ltpCMQYhyB6knFL/vle8S/4l8FbHj9uDmHSHk31uKp23pYn1jHQeZmI/fI+ZO+f1Tg9j5/3jPi7y1RFkAwHClkmW5CxDKJbLuXNvDdMfG7kYQGWvG1joAsgfAzXewBfDbeQO+kKni/8e+BhGPwSd7uZ5pKVp3H8Al7kZg4Ei9AR1V4UTZs11d5UDFnZ3jSSS1fzDYs0Jyh1NESjzjqA2zsWBkuaLrxtYaAZ28heRb6zCHt4NCbiO+HUtcGexmPL90+Y8JQET0nvwZ19PdbUu8sOwV7ljGfPW3EGFzBQDNSvvrGHVzldcZ9nFNubHdL1h4XBZdtCFjy6yxFGR3tgpZjXrPhak+c4owWEzl29ucPtgLw4BpNSo7nkcb4DcsbTZqAv2LvrfJGAosAHmZCRkTD/ZavSIU6wwdC1rx/Yu7n5ms+v+YuTxacuQsfs63FvPmBvgXwbXAhvGX1p0vEytV6GMnbkfcDeAvlSBR4d86kgK2ltwiKMvFhv+npv5ebF44z2g4Cq41Kza9e0tB1w9cr9jZu0zW+5b2rOhhkfAotIToIPkBuP7Q9QC8oTxt4JefPMj3J+M0x/WsAySNfL/17okA//4UOn/Bbzh0PT+/Injj1UkYqnskbteD/84x7UGu2u1mni2POy3HKJbWMlK9zq7x/wYUqysKridWP8CEZNHHsG9+dYHSABx6oBogCAX/xjeYyQErqWZQRgffMSJo69VcV7UWSBpcPGRfXfDMiA5CaOPRSEHTbzq/nL9Xa7Fv9Jr/n1gvqKolJrMyAiA041yEnyXJOIzNsx8Za1PzMt5Wp+VpbGjb8Tzu2It568PIwna/X1OqI2yqBIzY3XYxt1ye0MaGNHNtXE/f3IuD2u5VywHxceQ67mgv2Q3B7XXP8BxO7G6FCsS0wAAAAASUVORK5CYII=\" width=\"169\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>', 'cChAqVbnLR4V_2021_01_05_04_10_06pm_english.jpg', NULL, 'jpg', NULL, NULL, NULL, 4, 1, 'english', 1, 0, 90, 0, '2021-01-05 09:10:06'),
(24, 1, 'cChAqVbnLR4V', 2, 'cerita panjang', '<p>wow</p>', 'cChAqVbnLR4V_2021_01_16_02_44_10pm_class.jpg', NULL, 'jpg', 'https://www.youtube.com/embed/BcaUisE5ysA', NULL, NULL, 4, 3, 'class', 1, 0, NULL, 0, '2021-01-16 07:44:10'),
(25, NULL, 'cChAqVbnLR4V', NULL, 'perkenalan', '<p>sadsafaswljbkjabs</p>', 'cChAqVbnLR4V_2021_01_17_11_14_19am_english.jpg', NULL, 'jpg', 'https://www.youtube.com/embed/P2A0AaAPrbE', NULL, 135, 4, 3, 'english', 1, 0, NULL, 0, '2021-01-17 04:14:19'),
(26, NULL, 'cChAqVbnLR4V', NULL, 'coba video', '<p>aasd</p>', 'cChAqVbnLR4V_2021_01_17_02_34_59pm_english.jpg', NULL, 'jpg', 'https://www.youtube.com/embed/zY5nYmTUfnQ', 'zY5nYmTUfnQ', 8, 4, 3, 'english', 1, 0, NULL, 0, '2021-01-17 07:34:59'),
(27, NULL, 'cChAqVbnLR4V', NULL, 'berikan pendapat kalian tentang kursus ini 2', '<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/24b9fc1e-ad78-4466-975e-6e4155e801a9\" width=\"640\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p><strong>Fadjar Efendy Rasjid, S.Kom.</strong></p>\r\n\r\n<p><strong>Direktorat Sistem Informasi Manajemen Ubaya</strong></p>\r\n\r\n<p><strong>PHP</strong>&nbsp;adalah singkatan dari &quot;PHP: Hypertext Prepocessor&quot;, yaitu bahasa pemrograman yang digunakan secara luas untuk penanganan pembuatan dan pengembangan sebuah situs web dan bisa digunakan bersamaan dengan HTML. PHP diciptakan oleh Rasmus Lerdorf pertama kali tahun 1994. Pada awalnya PHP adalah singkatan dari &quot;Personal Home Page Tools&quot;. Selanjutnya diganti menjadi FI (&quot;Forms Interpreter&quot;). Sejak versi 3.0, nama bahasa ini diubah menjadi &quot;PHP: Hypertext Prepocessor&quot; dengan singkatannya &quot;PHP&quot;. PHP versi terbaru adalah versi ke-5.<br />\r\n<br />\r\nPada bulan Juni 1996, dirilis PHP/FI 2.0. Pada rilis ini interpreter PHP sudah diimplementasikan dalam program C. Dalam rilis ini disertakan juga modul-modul ekstensi yang meningkatkan kemampuan PHP/FI secara signifikan. Pada tahun 1997, sebuah perusahaan bernama Zend menulis ulang interpreter PHP menjadi lebih bersih, lebih baik, dan lebih cepat. Kemudian pada Juni 1998, perusahaan tersebut merilis interpreter baru untuk PHP dan meresmikan rilis tersebut sebagai PHP 3.0.<br />\r\nPada pertengahan tahun 1999, Zend merilis interpreter PHP baru dan rilis tersebut dikenal dengan PHP 4.0. PHP 4.0 adalah versi PHP yang paling banyak dipakai pada awal abad ke-21. Versi ini banyak dipakai disebabkan kemampuannya untuk membangun aplikasi web kompleks tetapi tetap memiliki kecepatan dan stabilitas yang tinggi.<br />\r\n<br />\r\nPada Juni 2004, Zend merilis PHP 5.0. Dalam versi ini, inti dari interpreter PHP mengalami perubahan besar. Versi ini juga memasukkan model pemrograman berorientasi objek ke dalam PHP untuk menjawab perkembangan bahasa pemrograman ke arah paradigma berorientasi objek.<br />\r\n<br />\r\nPHP juga banyak diaplikasikan untuk pembuatan program-program seperti sistem informasi&nbsp; klinik, rumah sakit, akademik, keuangan, manajemen aset, manajemen bengkel dan lain-lain. Dapat dikatakan bahwa program aplikasi yang dulunya hanya dapat dikerjakan untuk desktop aplikasi, PHP sudah dapat mengerjakannya.<br />\r\n<br />\r\nPenerapan PHP saat ini juga banyak ditemukan pada proyek-proyek pemerintah seperti e-budgetting, e-procurement, e-goverment dan e e lainnya. Website Ubaya ini juga dibuat menggunakan PHP.<br />\r\n<br />\r\nPHP juga dapat dilihat sebagai pilihan lain dari ASP.NET/C#/VB.NET Microsoft, ColdFusion Macromedia, JSP/Java Sun Microsystems, dan CGI/Perl. Contoh aplikasi lain yang lebih kompleks berupa CMS yang dibangun menggunakan PHP adalah Wordpress, Mambo, Joomla, Postnuke, Xaraya, dan lain-lain.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\n<br />\r\n<strong>Sisi lain dari PHP</strong><br />\r\nMenurut penulis yang sejak lama terlibat dalam pembuatan program dengan PHP ini adalah :</p>\r\n\r\n<ul>\r\n	<li>Bahasa pemrograman PHP adalah sebuah bahasa script yang tidak perlu untuk dikompilasi (compile)</li>\r\n	<li>Mudah diinstall ke dalam web server yang mendukung PHP seperti apache dengan konfigurasi yang mudah.</li>\r\n	<li>Dalam sisi pengembangan lebih mudah karena banyaknya milis-milis ataupun tutorial yang membahas tentang PHP.</li>\r\n	<li>PHP dapat dijalankan diberbagai sistem operasi, baik Windows, Linux, Macintosh.</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>Penulisan PHP</strong><br />\r\nDalam beberapa referensi penulis sering menemukan aturan penulisan tag pembuka&nbsp;, penulis lebih menyarankan kepada mereka untuk menuliskan tag pembuka secara lengkap yaitu tag pembuka&nbsp;. Karena apabila short_open_tag pada php.ini bernilai Off maka akan banyak error yang akan Anda temukan pada website Anda nantinya.<br />\r\n<br />\r\n<strong>Contoh:</strong></p>\r\n\r\n<p>&nbsp;&nbsp; echo &ldquo;Halo Dunia&rdquo;;<br />\r\n?&gt;</p>\r\n\r\n<p>PHP dapat dijalankan melalui file HTML yang kemudian dipanggil melalui Web Browser seperti Mozilla Firefox, Netscape, atau Internet Explorer. Program dalam PHP ditulis dengan diberi ekstensi&nbsp;<strong>&quot;.php&quot;.</strong></p>\r\n\r\n<p><br />\r\nDemikian sekelumit tentang bahasa pemrograman PHP ini, semoga tulisan yang sedikit ini dapat bermanfaat bagi anda.<br />\r\n<br />\r\nReferensi:<br />\r\nhttp://id.wikibooks.org<br />\r\nhttp://id.wikipedia.org<br />\r\nhttp://www.academia.edu</p>\r\n\r\n<p><b>Update:</b>&nbsp;29-09-2014&nbsp;|&nbsp;Dibaca 74083 kali&nbsp;|&nbsp;Download versi pdf:&nbsp;<a href=\"https://www.ubaya.ac.id/pdf/articles_detail/144/Bahasa-Pemrograman-Populer-PHP.pdf\">Bahasa-Pemrograman-Populer-PHP.pdf</a></p>', 'cChAqVbnLR4V_2021_01_17_02_40_18pm_english.jpg', NULL, 'jpg', 'https://www.youtube.com/embed/zY5nYmTUfnQ', 'zY5nYmTUfnQ', 8, 4, 3, 'english', 1, 0, NULL, 0, '2021-01-17 07:40:18'),
(28, NULL, 'cChAqVbnLR4V', NULL, 'Tajwid', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'cChAqVbnLR4V_2021_02_08_12_48_45pm_arab.png', NULL, 'png', 'https://www.youtube.com/embed/BcaUisE5ysA', 'BcaUisE5ysA', 16, 4, 3, 'arab', 1, 1, 100, 0, '2021-02-08 05:48:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblpartnership`
--

CREATE TABLE `tblpartnership` (
  `id` int(11) NOT NULL,
  `instansi` varchar(50) NOT NULL,
  `telpinstansi` varchar(15) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kepala` varchar(50) NOT NULL,
  `telpkepala` varchar(15) NOT NULL,
  `fotoKTP` varchar(150) DEFAULT NULL,
  `program` varchar(50) NOT NULL,
  `isRead` enum('1','0') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpartnership`
--

INSERT INTO `tblpartnership` (`id`, `instansi`, `telpinstansi`, `alamat`, `kepala`, `telpkepala`, `fotoKTP`, `program`, `isRead`, `created_at`) VALUES
(0, 'sa', '234132', 'blitarian', 'caszxzxv', '12213321123', 'sa_caszxzxv_Th9X7b.jpg', 'english,math,,', '1', '2020-11-19 02:25:16'),
(1, 'SMP Negeri 1', '9999', 'Kediri', 'Rohmat', '888', '2', 'english,class', '0', '2020-10-03 07:14:29'),
(2, 'SMP Negeri 1', 'io', 'jojo', 'oojo', 'ooko', '909356294', 'english,class', '0', '2020-10-03 07:14:29'),
(3, 'SMP negeri 5 kediri', '1111', 'Kediri', 'JIto', '777', '8103b2331649b0521d687def5ed52fe7.png', 'english,class,lain', '0', '2020-10-03 07:14:29'),
(4, 'SD', '999', 'jkjkjk', '9i9', 'kkoko', 'b8baf9999b5ee6f75fb45e5f1039b409.PNG', 'english,class,lain', '0', '2020-10-03 07:14:29'),
(5, 'hoho', '88', 'ininini', 'ninini', '55', '157599be8731e313424dff83d19b3048.jpg', 'english,lain', '0', '2020-10-03 07:14:29'),
(6, 'CV. Astar', '81252867991', 'jl bengawan solo gg 6 no 19', 'zega', '9872148798', 'CV. Astar_zega_4M1qTz.jpg', 'CV. Astar', '1', '2020-10-03 07:32:59'),
(7, 'CV. Astar 2', '1234123412', 'jl bengawan solo gg 6 no 20', 'zega', '12314124124', 'CV. Astar 2_zega_R2rzTW.jpg', 'english', '1', '2020-10-03 07:36:15'),
(8, 'zega', '12313123', 'jl bengawan solo gg 6 no 19', 'zega', '124124124', 'zega_zega_oxPmRS.jpg', 'english', '1', '2020-10-03 07:37:59'),
(9, 'CV. Curiculum Vitae', '097987124', 'jl bengawan solo gg 6 no 19', 'zega', '087214970', 'CV. Curiculum Vitae_zega_534M4O.jpg', 'english,math,class,lain', '1', '2020-10-03 07:42:21'),
(10, 'CV. Curiculum Vitae', '102920947', 'jl bengawan solo gg 6 no 192', 'Pak', '9812398498124', 'CV. Curiculum Vitae_Pak_M029MS.jpg', 'english,math,class,lain', '1', '2020-10-05 06:30:20'),
(11, 'zega', '09124097097', 'pakunden', 'zega', '190209120497', 'zega_zega_U1TCmy.jpg', 'english,math,class,', '1', '2020-10-17 09:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `tblpoll`
--

CREATE TABLE `tblpoll` (
  `PollID` int(11) NOT NULL,
  `PollTitle` varchar(500) NOT NULL,
  `PollContent` varchar(1500) NOT NULL,
  `PollStartDate` date NOT NULL,
  `PollEndDate` date NOT NULL,
  `AddedByAdminID` int(11) NOT NULL,
  `PollStatus` tinyint(4) NOT NULL DEFAULT 0,
  `CreatedDateTime` datetime DEFAULT current_timestamp(),
  `UpdatedDateTime` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpoll`
--

INSERT INTO `tblpoll` (`PollID`, `PollTitle`, `PollContent`, `PollStartDate`, `PollEndDate`, `AddedByAdminID`, `PollStatus`, `CreatedDateTime`, `UpdatedDateTime`) VALUES
(1, 'best mobile of 2018', 'adsgdhfgj', '2018-08-15', '2018-09-17', 1, 1, '2018-03-08 11:44:13', '2018-04-23 11:37:49'),
(2, 'Which is best budget SmartTV as of 2018?', 'please help me select one from following list', '2018-03-02', '2018-03-15', 1, 1, '2018-03-09 18:55:37', '2018-04-19 12:42:06'),
(3, 'Web Service', 'Which is the best Browser to stream video?', '2018-03-24', '2018-04-24', 13, 0, '2018-03-13 09:38:33', '2018-03-26 17:17:50'),
(4, 'google', 'google user in India', '2017-12-12', '2018-12-25', 13, 0, '2018-03-29 20:56:33', '2018-03-29 20:59:14'),
(5, 'which is best editor', 'some content here', '2018-04-05', '0000-00-00', 3, 0, '2018-04-13 15:22:41', '2020-05-09 14:15:58');

-- --------------------------------------------------------

--
-- Table structure for table `tblpollxanswer`
--

CREATE TABLE `tblpollxanswer` (
  `PollXAnswerID` int(11) NOT NULL,
  `PollID` int(11) NOT NULL,
  `PollXOptionID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `CreatedDateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpollxanswer`
--

INSERT INTO `tblpollxanswer` (`PollXAnswerID`, `PollID`, `PollXOptionID`, `UserID`, `CreatedDateTime`) VALUES
(1, 1, 1, 1, '2018-03-08 11:51:27'),
(2, 2, 5, 1, '2018-03-12 09:40:49'),
(3, 2, 6, 2, '2018-03-12 09:40:49'),
(4, 2, 5, 3, '2018-03-12 09:41:22'),
(5, 3, 10, 1, '2018-03-13 10:08:02'),
(8, 3, 13, 4, '2018-03-13 10:13:27'),
(9, 3, 14, 5, '2018-03-13 10:13:27'),
(10, 3, 10, 6, '2018-03-13 10:13:27'),
(11, 3, 16, 7, '2018-03-13 10:13:27'),
(12, 3, 17, 8, '2018-03-13 10:13:27'),
(13, 3, 18, 9, '2018-03-13 10:13:27'),
(14, 3, 19, 10, '2018-03-13 10:13:27'),
(15, 3, 20, 11, '2018-03-13 10:13:27'),
(16, 3, 21, 12, '2018-03-13 10:13:27'),
(17, 3, 22, 13, '2018-03-13 10:13:27'),
(18, 3, 23, 14, '2018-03-13 10:13:27'),
(19, 3, 10, 15, '2018-03-13 10:34:03'),
(20, 3, 10, 16, '2018-03-13 10:36:19'),
(21, 3, 10, 17, '2018-03-13 10:36:19'),
(22, 3, 10, 18, '2018-03-13 10:36:19'),
(23, 3, 10, 19, '2018-03-13 10:36:19'),
(24, 3, 10, 20, '2018-03-13 10:36:19'),
(25, 3, 14, 21, '2018-03-13 10:36:19'),
(26, 3, 14, 22, '2018-03-13 10:36:19'),
(27, 3, 14, 23, '2018-03-13 10:36:19'),
(28, 3, 14, 24, '2018-03-13 10:36:19'),
(29, 3, 10, 22, '2018-03-13 10:42:07'),
(30, 3, 15, 23, '2018-03-13 10:42:07'),
(31, 3, 15, 24, '2018-03-13 10:42:07'),
(32, 3, 12, 25, '2018-03-13 10:42:07'),
(33, 3, 12, 26, '2018-03-13 10:42:07'),
(34, 3, 12, 27, '2018-03-13 10:42:07'),
(35, 3, 15, 28, '2018-03-13 10:42:07'),
(36, 3, 19, 29, '2018-03-13 10:42:07'),
(41, 3, 11, 2, '2018-03-29 20:22:56'),
(42, 4, 26, 3, '2018-04-11 15:58:34'),
(43, 3, 11, 3, '2018-04-13 15:32:18'),
(44, 4, 25, 2, '2018-04-17 12:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `tblpollxoption`
--

CREATE TABLE `tblpollxoption` (
  `PollXOptionID` int(11) NOT NULL,
  `PollID` int(11) NOT NULL,
  `PollXOptionContent` varchar(500) NOT NULL,
  `PollOptionStatus` tinyint(4) NOT NULL DEFAULT 0,
  `CreatedDateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpollxoption`
--

INSERT INTO `tblpollxoption` (`PollXOptionID`, `PollID`, `PollXOptionContent`, `PollOptionStatus`, `CreatedDateTime`) VALUES
(1, 1, 'Motorola', 0, '2018-03-08 11:44:36'),
(4, 1, 'Nokia', 0, '2018-03-08 11:45:03'),
(5, 2, 'Samsung', 0, '2018-03-09 18:55:37'),
(6, 2, 'SONY', 0, '2018-03-09 18:55:37'),
(9, 1, 'Huwaie', 0, '2018-03-12 12:59:45'),
(10, 3, 'Google Crome', 0, '2018-03-13 09:38:33'),
(11, 3, 'Internet Explorer', 0, '2018-03-13 09:38:33'),
(12, 3, 'Opera', 0, '2018-03-13 09:50:06'),
(13, 3, 'Dolphin', 0, '2018-03-13 09:50:07'),
(14, 3, 'Mozila Firefox', 0, '2018-03-13 09:50:07'),
(15, 3, 'Safari', 0, '2018-03-13 09:50:07'),
(16, 3, 'UC Browser', 0, '2018-03-13 09:53:45'),
(17, 3, 'Maxthon', 0, '2018-03-13 09:53:45'),
(18, 3, 'Microsoft Edge', 0, '2018-03-13 09:53:45'),
(19, 3, 'Cromium', 0, '2018-03-13 09:53:45'),
(20, 3, 'SeaMonkey', 0, '2018-03-13 09:53:45'),
(21, 3, 'AvantBrowser', 0, '2018-03-13 09:53:46'),
(22, 3, 'Torch', 0, '2018-03-13 09:53:46'),
(23, 3, 'Pale Moon', 0, '2018-03-13 09:53:46'),
(24, 1, 'sony', 0, '2018-03-13 12:05:14'),
(25, 4, 'Surat', 0, '2018-03-29 20:56:33'),
(26, 4, 'Gujrat', 0, '2018-03-29 20:56:33'),
(28, 1, 'trila', 0, '2018-04-13 15:21:33'),
(29, 5, 'abc', 0, '2018-04-13 15:22:41'),
(30, 5, 'xyz', 0, '2018-04-13 15:22:41'),
(31, 1, 'samsung', 0, '2018-04-23 11:37:10');

-- --------------------------------------------------------

--
-- Table structure for table `tblpretestanswer`
--

CREATE TABLE `tblpretestanswer` (
  `id` int(11) NOT NULL,
  `UserID` varchar(50) NOT NULL,
  `QuestionId` int(5) NOT NULL,
  `Answer` varchar(5) NOT NULL DEFAULT 'SS',
  `CourseID` varchar(10) NOT NULL,
  `Tahun` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpretestanswer`
--

INSERT INTO `tblpretestanswer` (`id`, `UserID`, `QuestionId`, `Answer`, `CourseID`, `Tahun`, `created_at`) VALUES
(1, 'u6KIKFhsAsKB', 1, 'SS', 'class', 1, '2020-11-07 09:37:10'),
(2, 'u6KIKFhsAsKB', 2, 'SS', 'class', 1, '2020-11-07 09:37:10'),
(3, 'u6KIKFhsAsKB', 3, 'SS', 'class', 1, '2020-11-07 09:37:10'),
(4, 'u6KIKFhsAsKB', 4, 'SS', 'class', 1, '2020-11-07 09:37:10'),
(5, 'u6KIKFhsAsKB', 5, 'SS', 'class', 1, '2020-11-07 09:37:10'),
(6, 'u6KIKFhsAsKB', 6, 'SS', 'class', 1, '2020-11-07 09:37:10'),
(7, 'u6KIKFhsAsKB', 7, 'SS', 'class', 1, '2020-11-07 09:37:10'),
(8, 'u6KIKFhsAsKB', 8, 'SS', 'class', 1, '2020-11-07 09:37:10'),
(9, 'u6KIKFhsAsKB', 9, 'SS', 'class', 1, '2020-11-07 09:37:10'),
(10, 'u6KIKFhsAsKB', 10, 'SS', 'class', 1, '2020-11-07 09:37:10'),
(11, 'u6KIKFhsAsKB', 1, 'SS', 'class', 1, '2020-11-10 07:47:00'),
(12, 'u6KIKFhsAsKB', 2, 'SS', 'class', 1, '2020-11-10 07:47:00'),
(13, 'u6KIKFhsAsKB', 3, 'SS', 'class', 1, '2020-11-10 07:47:00'),
(14, 'u6KIKFhsAsKB', 4, 'SS', 'class', 1, '2020-11-10 07:47:00'),
(15, 'u6KIKFhsAsKB', 5, 'SS', 'class', 1, '2020-11-10 07:47:00'),
(16, 'u6KIKFhsAsKB', 6, 'SS', 'class', 1, '2020-11-10 07:47:00'),
(17, 'u6KIKFhsAsKB', 7, 'SS', 'class', 1, '2020-11-10 07:47:00'),
(18, 'u6KIKFhsAsKB', 8, 'SS', 'class', 1, '2020-11-10 07:47:00'),
(19, 'u6KIKFhsAsKB', 9, 'SS', 'class', 1, '2020-11-10 07:47:00'),
(20, 'u6KIKFhsAsKB', 10, 'SS', 'class', 1, '2020-11-10 07:47:00'),
(21, 'u6KIKFhsAsKB', 1, 'SS', 'english', 1, '2020-11-10 08:14:56'),
(22, 'u6KIKFhsAsKB', 2, 'SS', 'english', 1, '2020-11-10 08:14:56'),
(23, 'u6KIKFhsAsKB', 3, 'SS', 'english', 1, '2020-11-10 08:14:56'),
(24, 'u6KIKFhsAsKB', 4, 'SS', 'english', 1, '2020-11-10 08:14:56'),
(25, 'u6KIKFhsAsKB', 5, 'SS', 'english', 1, '2020-11-10 08:14:56'),
(26, 'u6KIKFhsAsKB', 6, 'SS', 'english', 1, '2020-11-10 08:14:56'),
(27, 'u6KIKFhsAsKB', 7, 'SS', 'english', 1, '2020-11-10 08:14:56'),
(28, 'u6KIKFhsAsKB', 8, 'SS', 'english', 1, '2020-11-10 08:14:56'),
(29, 'u6KIKFhsAsKB', 9, 'SS', 'english', 1, '2020-11-10 08:14:56'),
(30, 'u6KIKFhsAsKB', 10, 'SS', 'english', 1, '2020-11-10 08:14:56'),
(31, 'u6KIKFhsAsKB', 1, 'SS', 'math', 1, '2020-11-10 08:15:08'),
(32, 'u6KIKFhsAsKB', 2, 'SS', 'math', 1, '2020-11-10 08:15:08'),
(33, 'u6KIKFhsAsKB', 3, 'SS', 'math', 1, '2020-11-10 08:15:08'),
(34, 'u6KIKFhsAsKB', 4, 'SS', 'math', 1, '2020-11-10 08:15:08'),
(35, 'u6KIKFhsAsKB', 5, 'SS', 'math', 1, '2020-11-10 08:15:08'),
(36, 'u6KIKFhsAsKB', 6, 'SS', 'math', 1, '2020-11-10 08:15:08'),
(37, 'u6KIKFhsAsKB', 7, 'SS', 'math', 1, '2020-11-10 08:15:08'),
(38, 'u6KIKFhsAsKB', 8, 'SS', 'math', 1, '2020-11-10 08:15:08'),
(39, 'u6KIKFhsAsKB', 9, 'SS', 'math', 1, '2020-11-10 08:15:08'),
(40, 'u6KIKFhsAsKB', 10, 'SS', 'math', 1, '2020-11-10 08:15:08'),
(41, 'uaYyJDuCSTIA', 1, '', 'english', 1, '2021-01-08 06:48:00'),
(42, 'uaYyJDuCSTIA', 2, '', 'english', 1, '2021-01-08 06:48:00'),
(43, 'uaYyJDuCSTIA', 3, '', 'english', 1, '2021-01-08 06:48:00'),
(44, 'uaYyJDuCSTIA', 4, '', 'english', 1, '2021-01-08 06:48:00'),
(45, 'uaYyJDuCSTIA', 5, '', 'english', 1, '2021-01-08 06:48:00'),
(46, 'uaYyJDuCSTIA', 6, '', 'english', 1, '2021-01-08 06:48:00'),
(47, 'uaYyJDuCSTIA', 7, '', 'english', 1, '2021-01-08 06:48:00'),
(48, 'uaYyJDuCSTIA', 8, '', 'english', 1, '2021-01-08 06:48:00'),
(49, 'uaYyJDuCSTIA', 9, '', 'english', 1, '2021-01-08 06:48:00'),
(50, 'uaYyJDuCSTIA', 10, '', 'english', 1, '2021-01-08 06:48:00'),
(51, 'StpJGu1cgFvk', 1, 'SS', 'english', 1, '2021-01-21 07:10:06'),
(52, 'StpJGu1cgFvk', 2, 'SS', 'english', 1, '2021-01-21 07:10:06'),
(53, 'StpJGu1cgFvk', 3, 'SS', 'english', 1, '2021-01-21 07:10:06'),
(54, 'StpJGu1cgFvk', 4, 'SS', 'english', 1, '2021-01-21 07:10:06'),
(55, 'StpJGu1cgFvk', 5, 'SS', 'english', 1, '2021-01-21 07:10:06'),
(56, 'StpJGu1cgFvk', 6, 'SS', 'english', 1, '2021-01-21 07:10:06'),
(57, 'StpJGu1cgFvk', 7, 'SS', 'english', 1, '2021-01-21 07:10:06'),
(58, 'StpJGu1cgFvk', 8, 'SS', 'english', 1, '2021-01-21 07:10:06'),
(59, 'StpJGu1cgFvk', 9, 'SS', 'english', 1, '2021-01-21 07:10:06'),
(60, 'StpJGu1cgFvk', 10, 'SS', 'english', 1, '2021-01-21 07:10:06'),
(61, 'xW44aO', 1, 'SS', 'english', 1, '2021-01-28 07:40:14'),
(62, 'xW44aO', 2, 'SS', 'english', 1, '2021-01-28 07:40:14'),
(63, 'xW44aO', 3, 'SS', 'english', 1, '2021-01-28 07:40:14'),
(64, 'xW44aO', 4, 'SS', 'english', 1, '2021-01-28 07:40:14'),
(65, 'xW44aO', 5, 'SS', 'english', 1, '2021-01-28 07:40:14'),
(66, 'xW44aO', 6, 'SS', 'english', 1, '2021-01-28 07:40:14'),
(67, 'xW44aO', 7, 'SS', 'english', 1, '2021-01-28 07:40:14'),
(68, 'xW44aO', 8, 'SS', 'english', 1, '2021-01-28 07:40:14'),
(69, 'xW44aO', 9, 'SS', 'english', 1, '2021-01-28 07:40:14'),
(70, 'xW44aO', 10, 'SS', 'english', 1, '2021-01-28 07:40:14'),
(71, 'xW44aO', 1, 'SS', 'class', 1, '2021-01-28 09:26:02'),
(72, 'xW44aO', 2, 'SS', 'class', 1, '2021-01-28 09:26:02'),
(73, 'xW44aO', 3, 'SS', 'class', 1, '2021-01-28 09:26:02'),
(74, 'xW44aO', 4, 'SS', 'class', 1, '2021-01-28 09:26:02'),
(75, 'xW44aO', 5, 'SS', 'class', 1, '2021-01-28 09:26:02'),
(76, 'xW44aO', 6, 'SS', 'class', 1, '2021-01-28 09:26:02'),
(77, 'xW44aO', 7, 'SS', 'class', 1, '2021-01-28 09:26:02'),
(78, 'xW44aO', 8, 'SS', 'class', 1, '2021-01-28 09:26:02'),
(79, 'xW44aO', 9, 'SS', 'class', 1, '2021-01-28 09:26:02'),
(80, 'xW44aO', 10, 'SS', 'class', 1, '2021-01-28 09:26:02'),
(81, 'RbebFd01PQFE', 1, 'SS', 'class', 1, '2021-01-28 09:30:58'),
(82, 'RbebFd01PQFE', 2, 'SS', 'class', 1, '2021-01-28 09:30:58'),
(83, 'RbebFd01PQFE', 3, 'SS', 'class', 1, '2021-01-28 09:30:58'),
(84, 'RbebFd01PQFE', 4, 'SS', 'class', 1, '2021-01-28 09:30:58'),
(85, 'RbebFd01PQFE', 5, 'SS', 'class', 1, '2021-01-28 09:30:58'),
(86, 'RbebFd01PQFE', 6, 'SS', 'class', 1, '2021-01-28 09:30:58'),
(87, 'RbebFd01PQFE', 7, 'SS', 'class', 1, '2021-01-28 09:30:58'),
(88, 'RbebFd01PQFE', 8, 'SS', 'class', 1, '2021-01-28 09:30:58'),
(89, 'RbebFd01PQFE', 9, 'SS', 'class', 1, '2021-01-28 09:30:58'),
(90, 'RbebFd01PQFE', 10, 'SS', 'class', 1, '2021-01-28 09:30:58'),
(91, 'RbebFd01PQFE', 1, 'SS', 'english', 1, '2021-01-30 08:41:37'),
(92, 'RbebFd01PQFE', 2, 'SS', 'english', 1, '2021-01-30 08:41:37'),
(93, 'RbebFd01PQFE', 3, 'SS', 'english', 1, '2021-01-30 08:41:37'),
(94, 'RbebFd01PQFE', 4, 'SS', 'english', 1, '2021-01-30 08:41:37'),
(95, 'RbebFd01PQFE', 5, 'SS', 'english', 1, '2021-01-30 08:41:37'),
(96, 'RbebFd01PQFE', 6, 'SS', 'english', 1, '2021-01-30 08:41:37'),
(97, 'RbebFd01PQFE', 7, 'SS', 'english', 1, '2021-01-30 08:41:37'),
(98, 'RbebFd01PQFE', 8, 'SS', 'english', 1, '2021-01-30 08:41:37'),
(99, 'RbebFd01PQFE', 9, 'SS', 'english', 1, '2021-01-30 08:41:37'),
(100, 'RbebFd01PQFE', 10, 'SS', 'english', 1, '2021-01-30 08:41:37'),
(101, 'RbebFd01PQFE', 1, 'SS', 'english', 1, '2021-01-30 08:42:50'),
(102, 'RbebFd01PQFE', 2, 'SS', 'english', 1, '2021-01-30 08:42:50'),
(103, 'RbebFd01PQFE', 3, 'SS', 'english', 1, '2021-01-30 08:42:50'),
(104, 'RbebFd01PQFE', 4, 'SS', 'english', 1, '2021-01-30 08:42:50'),
(105, 'RbebFd01PQFE', 5, 'SS', 'english', 1, '2021-01-30 08:42:50'),
(106, 'RbebFd01PQFE', 6, 'SS', 'english', 1, '2021-01-30 08:42:50'),
(107, 'RbebFd01PQFE', 7, 'SS', 'english', 1, '2021-01-30 08:42:50'),
(108, 'RbebFd01PQFE', 8, 'SS', 'english', 1, '2021-01-30 08:42:50'),
(109, 'RbebFd01PQFE', 9, 'SS', 'english', 1, '2021-01-30 08:42:50'),
(110, 'RbebFd01PQFE', 10, 'SS', 'english', 1, '2021-01-30 08:42:50'),
(111, 'RbebFd01PQFE', 1, 'SS', 'english', 1, '2021-01-30 08:44:57'),
(112, 'RbebFd01PQFE', 2, 'SS', 'english', 1, '2021-01-30 08:44:57'),
(113, 'RbebFd01PQFE', 3, 'SS', 'english', 1, '2021-01-30 08:44:57'),
(114, 'RbebFd01PQFE', 4, 'SS', 'english', 1, '2021-01-30 08:44:57'),
(115, 'RbebFd01PQFE', 5, 'SS', 'english', 1, '2021-01-30 08:44:57'),
(116, 'RbebFd01PQFE', 6, 'SS', 'english', 1, '2021-01-30 08:44:57'),
(117, 'RbebFd01PQFE', 7, 'SS', 'english', 1, '2021-01-30 08:44:57'),
(118, 'RbebFd01PQFE', 8, 'SS', 'english', 1, '2021-01-30 08:44:57'),
(119, 'RbebFd01PQFE', 9, 'SS', 'english', 1, '2021-01-30 08:44:57'),
(120, 'RbebFd01PQFE', 10, 'SS', 'english', 1, '2021-01-30 08:44:57'),
(121, 'RbebFd01PQFE', 1, 'SS', 'english', 1, '2021-01-30 08:47:27'),
(122, 'RbebFd01PQFE', 2, 'SS', 'english', 1, '2021-01-30 08:47:27'),
(123, 'RbebFd01PQFE', 3, 'SS', 'english', 1, '2021-01-30 08:47:27'),
(124, 'RbebFd01PQFE', 4, 'SS', 'english', 1, '2021-01-30 08:47:27'),
(125, 'RbebFd01PQFE', 5, 'SS', 'english', 1, '2021-01-30 08:47:27'),
(126, 'RbebFd01PQFE', 6, 'SS', 'english', 1, '2021-01-30 08:47:27'),
(127, 'RbebFd01PQFE', 7, 'SS', 'english', 1, '2021-01-30 08:47:27'),
(128, 'RbebFd01PQFE', 8, 'SS', 'english', 1, '2021-01-30 08:47:27'),
(129, 'RbebFd01PQFE', 9, 'SS', 'english', 1, '2021-01-30 08:47:27'),
(130, 'RbebFd01PQFE', 10, 'SS', 'english', 1, '2021-01-30 08:47:27'),
(131, 'RbebFd01PQFE', 1, 'SS', 'math', 1, '2021-01-30 08:48:31'),
(132, 'RbebFd01PQFE', 2, 'SS', 'math', 1, '2021-01-30 08:48:31'),
(133, 'RbebFd01PQFE', 3, 'SS', 'math', 1, '2021-01-30 08:48:31'),
(134, 'RbebFd01PQFE', 4, 'SS', 'math', 1, '2021-01-30 08:48:31'),
(135, 'RbebFd01PQFE', 5, 'SS', 'math', 1, '2021-01-30 08:48:31'),
(136, 'RbebFd01PQFE', 6, 'SS', 'math', 1, '2021-01-30 08:48:31'),
(137, 'RbebFd01PQFE', 7, 'SS', 'math', 1, '2021-01-30 08:48:31'),
(138, 'RbebFd01PQFE', 8, 'SS', 'math', 1, '2021-01-30 08:48:31'),
(139, 'RbebFd01PQFE', 9, 'SS', 'math', 1, '2021-01-30 08:48:31'),
(140, 'RbebFd01PQFE', 10, 'SS', 'math', 1, '2021-01-30 08:48:31'),
(141, 'RbebFd01PQFE', 1, 'SS', 'english', 1, '2021-01-30 08:50:09'),
(142, 'RbebFd01PQFE', 2, 'SS', 'english', 1, '2021-01-30 08:50:09'),
(143, 'RbebFd01PQFE', 3, 'SS', 'english', 1, '2021-01-30 08:50:09'),
(144, 'RbebFd01PQFE', 4, 'SS', 'english', 1, '2021-01-30 08:50:09'),
(145, 'RbebFd01PQFE', 5, 'SS', 'english', 1, '2021-01-30 08:50:09'),
(146, 'RbebFd01PQFE', 6, 'SS', 'english', 1, '2021-01-30 08:50:09'),
(147, 'RbebFd01PQFE', 7, 'SS', 'english', 1, '2021-01-30 08:50:09'),
(148, 'RbebFd01PQFE', 8, 'SS', 'english', 1, '2021-01-30 08:50:09'),
(149, 'RbebFd01PQFE', 9, 'SS', 'english', 1, '2021-01-30 08:50:09'),
(150, 'RbebFd01PQFE', 10, 'SS', 'english', 1, '2021-01-30 08:50:09'),
(151, 'RbebFd01PQFE', 1, 'SS', 'math', 1, '2021-01-30 08:50:49'),
(152, 'RbebFd01PQFE', 2, 'SS', 'math', 1, '2021-01-30 08:50:49'),
(153, 'RbebFd01PQFE', 3, 'SS', 'math', 1, '2021-01-30 08:50:49'),
(154, 'RbebFd01PQFE', 4, 'SS', 'math', 1, '2021-01-30 08:50:49'),
(155, 'RbebFd01PQFE', 5, 'SS', 'math', 1, '2021-01-30 08:50:49'),
(156, 'RbebFd01PQFE', 6, 'SS', 'math', 1, '2021-01-30 08:50:49'),
(157, 'RbebFd01PQFE', 7, 'SS', 'math', 1, '2021-01-30 08:50:49'),
(158, 'RbebFd01PQFE', 8, 'SS', 'math', 1, '2021-01-30 08:50:49'),
(159, 'RbebFd01PQFE', 9, 'SS', 'math', 1, '2021-01-30 08:50:49'),
(160, 'RbebFd01PQFE', 10, 'SS', 'math', 1, '2021-01-30 08:50:49'),
(161, 'RbebFd01PQFE', 1, 'SS', 'english', 1, '2021-01-30 08:52:00'),
(162, 'RbebFd01PQFE', 2, 'SS', 'english', 1, '2021-01-30 08:52:00'),
(163, 'RbebFd01PQFE', 3, 'SS', 'english', 1, '2021-01-30 08:52:00'),
(164, 'RbebFd01PQFE', 4, 'SS', 'english', 1, '2021-01-30 08:52:00'),
(165, 'RbebFd01PQFE', 5, 'SS', 'english', 1, '2021-01-30 08:52:00'),
(166, 'RbebFd01PQFE', 6, 'SS', 'english', 1, '2021-01-30 08:52:00'),
(167, 'RbebFd01PQFE', 7, 'SS', 'english', 1, '2021-01-30 08:52:00'),
(168, 'RbebFd01PQFE', 8, 'SS', 'english', 1, '2021-01-30 08:52:00'),
(169, 'RbebFd01PQFE', 9, 'SS', 'english', 1, '2021-01-30 08:52:00'),
(170, 'RbebFd01PQFE', 10, 'SS', 'english', 1, '2021-01-30 08:52:00'),
(171, 'RbebFd01PQFE', 1, 'SS', 'math', 1, '2021-01-30 09:05:09'),
(172, 'RbebFd01PQFE', 2, 'SS', 'math', 1, '2021-01-30 09:05:09'),
(173, 'RbebFd01PQFE', 3, 'SS', 'math', 1, '2021-01-30 09:05:09'),
(174, 'RbebFd01PQFE', 4, 'SS', 'math', 1, '2021-01-30 09:05:09'),
(175, 'RbebFd01PQFE', 5, 'SS', 'math', 1, '2021-01-30 09:05:09'),
(176, 'RbebFd01PQFE', 6, 'SS', 'math', 1, '2021-01-30 09:05:09'),
(177, 'RbebFd01PQFE', 7, 'SS', 'math', 1, '2021-01-30 09:05:09'),
(178, 'RbebFd01PQFE', 8, 'SS', 'math', 1, '2021-01-30 09:05:09'),
(179, 'RbebFd01PQFE', 9, 'SS', 'math', 1, '2021-01-30 09:05:09'),
(180, 'RbebFd01PQFE', 10, 'SS', 'math', 1, '2021-01-30 09:05:09'),
(181, 'RbebFd01PQFE', 1, 'SS', 'english', 1, '2021-01-30 09:06:35'),
(182, 'RbebFd01PQFE', 2, 'SS', 'english', 1, '2021-01-30 09:06:35'),
(183, 'RbebFd01PQFE', 3, 'SS', 'english', 1, '2021-01-30 09:06:35'),
(184, 'RbebFd01PQFE', 4, 'SS', 'english', 1, '2021-01-30 09:06:35'),
(185, 'RbebFd01PQFE', 5, 'SS', 'english', 1, '2021-01-30 09:06:35'),
(186, 'RbebFd01PQFE', 6, 'SS', 'english', 1, '2021-01-30 09:06:35'),
(187, 'RbebFd01PQFE', 7, 'SS', 'english', 1, '2021-01-30 09:06:35'),
(188, 'RbebFd01PQFE', 8, 'SS', 'english', 1, '2021-01-30 09:06:35'),
(189, 'RbebFd01PQFE', 9, 'SS', 'english', 1, '2021-01-30 09:06:35'),
(190, 'RbebFd01PQFE', 10, 'SS', 'english', 1, '2021-01-30 09:06:35'),
(191, 'RbebFd01PQFE', 1, 'SS', 'math', 1, '2021-01-30 09:11:13'),
(192, 'RbebFd01PQFE', 2, 'SS', 'math', 1, '2021-01-30 09:11:13'),
(193, 'RbebFd01PQFE', 3, 'SS', 'math', 1, '2021-01-30 09:11:13'),
(194, 'RbebFd01PQFE', 4, 'SS', 'math', 1, '2021-01-30 09:11:13'),
(195, 'RbebFd01PQFE', 5, 'SS', 'math', 1, '2021-01-30 09:11:13'),
(196, 'RbebFd01PQFE', 6, 'SS', 'math', 1, '2021-01-30 09:11:13'),
(197, 'RbebFd01PQFE', 7, 'SS', 'math', 1, '2021-01-30 09:11:13'),
(198, 'RbebFd01PQFE', 8, 'SS', 'math', 1, '2021-01-30 09:11:13'),
(199, 'RbebFd01PQFE', 9, 'SS', 'math', 1, '2021-01-30 09:11:13'),
(200, 'RbebFd01PQFE', 10, 'SS', 'math', 1, '2021-01-30 09:11:13'),
(201, 'u6KIKFhsAsKB', 1, 'SS', 'arab', 1, '2021-02-08 05:00:04'),
(202, 'u6KIKFhsAsKB', 2, 'SS', 'arab', 1, '2021-02-08 05:00:04'),
(203, 'u6KIKFhsAsKB', 3, 'SS', 'arab', 1, '2021-02-08 05:00:04'),
(204, 'u6KIKFhsAsKB', 4, 'SS', 'arab', 1, '2021-02-08 05:00:04'),
(205, 'u6KIKFhsAsKB', 5, 'SS', 'arab', 1, '2021-02-08 05:00:04'),
(206, 'u6KIKFhsAsKB', 6, 'SS', 'arab', 1, '2021-02-08 05:00:04'),
(207, 'u6KIKFhsAsKB', 7, 'SS', 'arab', 1, '2021-02-08 05:00:04'),
(208, 'u6KIKFhsAsKB', 8, 'SS', 'arab', 1, '2021-02-08 05:00:04'),
(209, 'u6KIKFhsAsKB', 9, 'SS', 'arab', 1, '2021-02-08 05:00:04'),
(210, 'u6KIKFhsAsKB', 10, 'SS', 'arab', 1, '2021-02-08 05:00:04'),
(211, 'xW44aO', 1, '1', 'arab', 1, '2021-02-16 06:48:31'),
(212, 'xW44aO', 2, '2', 'arab', 1, '2021-02-16 06:48:31'),
(213, 'xW44aO', 3, '3', 'arab', 1, '2021-02-16 06:48:31'),
(214, 'xW44aO', 4, '4', 'arab', 1, '2021-02-16 06:48:31'),
(215, 'xW44aO', 5, '5', 'arab', 1, '2021-02-16 06:48:31'),
(216, 'xW44aO', 6, '6', 'arab', 1, '2021-02-16 06:48:31'),
(217, 'xW44aO', 7, '7', 'arab', 1, '2021-02-16 06:48:31'),
(218, 'xW44aO', 8, '8', 'arab', 1, '2021-02-16 06:48:31'),
(219, 'xW44aO', 9, '9', 'arab', 1, '2021-02-16 06:48:31'),
(220, 'xW44aO', 10, '10', 'arab', 1, '2021-02-16 06:48:31'),
(221, 'xW44aO', 1, '1', 'math', 1, '2021-02-16 07:01:10'),
(222, 'xW44aO', 2, '2', 'math', 1, '2021-02-16 07:01:10'),
(223, 'xW44aO', 3, '3', 'math', 1, '2021-02-16 07:01:10'),
(224, 'xW44aO', 4, '4', 'math', 1, '2021-02-16 07:01:10'),
(225, 'xW44aO', 5, '5', 'math', 1, '2021-02-16 07:01:10'),
(226, 'xW44aO', 6, '6', 'math', 1, '2021-02-16 07:01:10'),
(227, 'xW44aO', 7, '7', 'math', 1, '2021-02-16 07:01:10'),
(228, 'xW44aO', 8, '8', 'math', 1, '2021-02-16 07:01:10'),
(229, 'xW44aO', 9, '9', 'math', 1, '2021-02-16 07:01:10'),
(230, 'xW44aO', 10, '10', 'math', 1, '2021-02-16 07:01:10'),
(231, 'xW44aO', 1, '1', 'arab', 1, '2021-02-19 07:10:27'),
(232, 'xW44aO', 2, '2', 'arab', 1, '2021-02-19 07:10:27'),
(233, 'xW44aO', 3, '3', 'arab', 1, '2021-02-19 07:10:27'),
(234, 'xW44aO', 4, '4', 'arab', 1, '2021-02-19 07:10:27'),
(235, 'xW44aO', 5, '5', 'arab', 1, '2021-02-19 07:10:27'),
(236, 'xW44aO', 6, '6', 'arab', 1, '2021-02-19 07:10:27'),
(237, 'xW44aO', 7, '7', 'arab', 1, '2021-02-19 07:10:27'),
(238, 'xW44aO', 8, '8', 'arab', 1, '2021-02-19 07:10:27'),
(239, 'xW44aO', 9, '9', 'arab', 1, '2021-02-19 07:10:27'),
(240, 'xW44aO', 10, '10', 'arab', 1, '2021-02-19 07:10:27'),
(241, 'xW44aO', 1, '1', 'arab', 1, '2021-02-19 07:18:32'),
(242, 'xW44aO', 2, '2', 'arab', 1, '2021-02-19 07:18:32'),
(243, 'xW44aO', 3, '3', 'arab', 1, '2021-02-19 07:18:32'),
(244, 'xW44aO', 4, '4', 'arab', 1, '2021-02-19 07:18:32'),
(245, 'xW44aO', 5, '5', 'arab', 1, '2021-02-19 07:18:32'),
(246, 'xW44aO', 6, '6', 'arab', 1, '2021-02-19 07:18:32'),
(247, 'xW44aO', 7, '7', 'arab', 1, '2021-02-19 07:18:32'),
(248, 'xW44aO', 8, '8', 'arab', 1, '2021-02-19 07:18:32'),
(249, 'xW44aO', 9, '9', 'arab', 1, '2021-02-19 07:18:32'),
(250, 'xW44aO', 10, '10', 'arab', 1, '2021-02-19 07:18:32'),
(251, 'xW44aO', 1, '1', 'arab', 1, '2021-02-19 07:20:57'),
(252, 'xW44aO', 2, '2', 'arab', 1, '2021-02-19 07:20:57'),
(253, 'xW44aO', 3, '3', 'arab', 1, '2021-02-19 07:20:57'),
(254, 'xW44aO', 4, '4', 'arab', 1, '2021-02-19 07:20:57'),
(255, 'xW44aO', 5, '5', 'arab', 1, '2021-02-19 07:20:57'),
(256, 'xW44aO', 6, '6', 'arab', 1, '2021-02-19 07:20:57'),
(257, 'xW44aO', 7, '7', 'arab', 1, '2021-02-19 07:20:57'),
(258, 'xW44aO', 8, '8', 'arab', 1, '2021-02-19 07:20:57'),
(259, 'xW44aO', 9, '9', 'arab', 1, '2021-02-19 07:20:57'),
(260, 'xW44aO', 10, '10', 'arab', 1, '2021-02-19 07:20:57'),
(261, 'xW44aO', 1, '1', 'arab', 1, '2021-02-19 07:24:59'),
(262, 'xW44aO', 2, '2', 'arab', 1, '2021-02-19 07:24:59'),
(263, 'xW44aO', 3, '3', 'arab', 1, '2021-02-19 07:24:59'),
(264, 'xW44aO', 4, '4', 'arab', 1, '2021-02-19 07:24:59'),
(265, 'xW44aO', 5, '5', 'arab', 1, '2021-02-19 07:24:59'),
(266, 'xW44aO', 6, '6', 'arab', 1, '2021-02-19 07:24:59'),
(267, 'xW44aO', 7, '7', 'arab', 1, '2021-02-19 07:24:59'),
(268, 'xW44aO', 8, '8', 'arab', 1, '2021-02-19 07:24:59'),
(269, 'xW44aO', 9, '9', 'arab', 1, '2021-02-19 07:24:59'),
(270, 'xW44aO', 10, '10', 'arab', 1, '2021-02-19 07:24:59'),
(271, 'xW44aO', 1, '1', 'arab', 1, '2021-02-19 07:26:48'),
(272, 'xW44aO', 2, '2', 'arab', 1, '2021-02-19 07:26:48'),
(273, 'xW44aO', 3, '3', 'arab', 1, '2021-02-19 07:26:48'),
(274, 'xW44aO', 4, '4', 'arab', 1, '2021-02-19 07:26:48'),
(275, 'xW44aO', 5, '5', 'arab', 1, '2021-02-19 07:26:48'),
(276, 'xW44aO', 6, '6', 'arab', 1, '2021-02-19 07:26:48'),
(277, 'xW44aO', 7, '7', 'arab', 1, '2021-02-19 07:26:48'),
(278, 'xW44aO', 8, '8', 'arab', 1, '2021-02-19 07:26:48'),
(279, 'xW44aO', 9, '9', 'arab', 1, '2021-02-19 07:26:48'),
(280, 'xW44aO', 10, '10', 'arab', 1, '2021-02-19 07:26:48'),
(281, 'xW44aO', 1, '1', 'arab', 1, '2021-02-19 07:28:35'),
(282, 'xW44aO', 2, '2', 'arab', 1, '2021-02-19 07:28:35'),
(283, 'xW44aO', 3, '3', 'arab', 1, '2021-02-19 07:28:35'),
(284, 'xW44aO', 4, '4', 'arab', 1, '2021-02-19 07:28:35'),
(285, 'xW44aO', 5, '5', 'arab', 1, '2021-02-19 07:28:35'),
(286, 'xW44aO', 6, '6', 'arab', 1, '2021-02-19 07:28:35'),
(287, 'xW44aO', 7, '7', 'arab', 1, '2021-02-19 07:28:35'),
(288, 'xW44aO', 8, '8', 'arab', 1, '2021-02-19 07:28:35'),
(289, 'xW44aO', 9, '9', 'arab', 1, '2021-02-19 07:28:35'),
(290, 'xW44aO', 10, '10', 'arab', 1, '2021-02-19 07:28:35'),
(291, 'xW44aO', 1, '1', 'arab', 1, '2021-02-19 07:29:42'),
(292, 'xW44aO', 2, '2', 'arab', 1, '2021-02-19 07:29:42'),
(293, 'xW44aO', 3, '3', 'arab', 1, '2021-02-19 07:29:42'),
(294, 'xW44aO', 4, '4', 'arab', 1, '2021-02-19 07:29:42'),
(295, 'xW44aO', 5, '5', 'arab', 1, '2021-02-19 07:29:42'),
(296, 'xW44aO', 6, '6', 'arab', 1, '2021-02-19 07:29:42'),
(297, 'xW44aO', 7, '7', 'arab', 1, '2021-02-19 07:29:42'),
(298, 'xW44aO', 8, '8', 'arab', 1, '2021-02-19 07:29:42'),
(299, 'xW44aO', 9, '9', 'arab', 1, '2021-02-19 07:29:42'),
(300, 'xW44aO', 10, '10', 'arab', 1, '2021-02-19 07:29:42'),
(301, 'xW44aO', 1, '1', 'arab', 1, '2021-02-19 07:31:39'),
(302, 'xW44aO', 2, '2', 'arab', 1, '2021-02-19 07:31:39'),
(303, 'xW44aO', 3, '3', 'arab', 1, '2021-02-19 07:31:39'),
(304, 'xW44aO', 4, '4', 'arab', 1, '2021-02-19 07:31:39'),
(305, 'xW44aO', 5, '5', 'arab', 1, '2021-02-19 07:31:39'),
(306, 'xW44aO', 6, '6', 'arab', 1, '2021-02-19 07:31:39'),
(307, 'xW44aO', 7, '7', 'arab', 1, '2021-02-19 07:31:39'),
(308, 'xW44aO', 8, '8', 'arab', 1, '2021-02-19 07:31:39'),
(309, 'xW44aO', 9, '9', 'arab', 1, '2021-02-19 07:31:39'),
(310, 'xW44aO', 10, '10', 'arab', 1, '2021-02-19 07:31:39'),
(311, 'uaYyJDuCSTIA', 1, '1', 'math', 1, '2021-07-12 02:19:09'),
(312, 'uaYyJDuCSTIA', 2, '2', 'math', 1, '2021-07-12 02:19:09'),
(313, 'uaYyJDuCSTIA', 3, '3', 'math', 1, '2021-07-12 02:19:09'),
(314, 'uaYyJDuCSTIA', 4, '4', 'math', 1, '2021-07-12 02:19:09'),
(315, 'uaYyJDuCSTIA', 5, '5', 'math', 1, '2021-07-12 02:19:09'),
(316, 'uaYyJDuCSTIA', 6, '6', 'math', 1, '2021-07-12 02:19:09'),
(317, 'uaYyJDuCSTIA', 7, '7', 'math', 1, '2021-07-12 02:19:09'),
(318, 'uaYyJDuCSTIA', 8, '8', 'math', 1, '2021-07-12 02:19:09'),
(319, 'uaYyJDuCSTIA', 9, '9', 'math', 1, '2021-07-12 02:19:09'),
(320, 'uaYyJDuCSTIA', 10, '10', 'math', 1, '2021-07-12 02:19:09'),
(321, 'uaYyJDuCSTIA', 1, '1', 'class', 1, '2021-07-14 08:22:58'),
(322, 'uaYyJDuCSTIA', 2, '2', 'class', 1, '2021-07-14 08:22:58'),
(323, 'uaYyJDuCSTIA', 3, '3', 'class', 1, '2021-07-14 08:22:58'),
(324, 'uaYyJDuCSTIA', 4, '4', 'class', 1, '2021-07-14 08:22:58'),
(325, 'uaYyJDuCSTIA', 5, '5', 'class', 1, '2021-07-14 08:22:58'),
(326, 'uaYyJDuCSTIA', 6, '6', 'class', 1, '2021-07-14 08:22:58'),
(327, 'uaYyJDuCSTIA', 7, '7', 'class', 1, '2021-07-14 08:22:58'),
(328, 'uaYyJDuCSTIA', 8, '8', 'class', 1, '2021-07-14 08:22:58'),
(329, 'uaYyJDuCSTIA', 9, '9', 'class', 1, '2021-07-14 08:22:58'),
(330, 'uaYyJDuCSTIA', 10, '10', 'class', 1, '2021-07-14 08:22:58'),
(331, '1kJWyrcsLucWv6ZU', 1, '1', 'class', 1, '2021-07-19 07:46:01'),
(332, '1kJWyrcsLucWv6ZU', 2, '2', 'class', 1, '2021-07-19 07:46:01'),
(333, '1kJWyrcsLucWv6ZU', 3, '3', 'class', 1, '2021-07-19 07:46:01'),
(334, '1kJWyrcsLucWv6ZU', 4, '4', 'class', 1, '2021-07-19 07:46:01'),
(335, '1kJWyrcsLucWv6ZU', 5, '5', 'class', 1, '2021-07-19 07:46:01'),
(336, '1kJWyrcsLucWv6ZU', 6, '6', 'class', 1, '2021-07-19 07:46:01'),
(337, '1kJWyrcsLucWv6ZU', 7, '7', 'class', 1, '2021-07-19 07:46:01'),
(338, '1kJWyrcsLucWv6ZU', 8, '8', 'class', 1, '2021-07-19 07:46:01'),
(339, '1kJWyrcsLucWv6ZU', 9, '9', 'class', 1, '2021-07-19 07:46:01'),
(340, '1kJWyrcsLucWv6ZU', 10, '10', 'class', 1, '2021-07-19 07:46:01'),
(341, 'pv2uu9B7vjCbVcgc', 1, '1', 'english', 1, '2021-07-22 06:07:40'),
(342, 'pv2uu9B7vjCbVcgc', 2, '2', 'english', 1, '2021-07-22 06:07:40'),
(343, 'pv2uu9B7vjCbVcgc', 3, '3', 'english', 1, '2021-07-22 06:07:40'),
(344, 'pv2uu9B7vjCbVcgc', 4, '4', 'english', 1, '2021-07-22 06:07:40'),
(345, 'pv2uu9B7vjCbVcgc', 5, '5', 'english', 1, '2021-07-22 06:07:40'),
(346, 'pv2uu9B7vjCbVcgc', 6, '6', 'english', 1, '2021-07-22 06:07:40'),
(347, 'pv2uu9B7vjCbVcgc', 7, '7', 'english', 1, '2021-07-22 06:07:40'),
(348, 'pv2uu9B7vjCbVcgc', 8, '8', 'english', 1, '2021-07-22 06:07:40'),
(349, 'pv2uu9B7vjCbVcgc', 9, '9', 'english', 1, '2021-07-22 06:07:40'),
(350, 'pv2uu9B7vjCbVcgc', 10, '10', 'english', 1, '2021-07-22 06:07:40');

-- --------------------------------------------------------

--
-- Table structure for table `tblpretestquestion`
--

CREATE TABLE `tblpretestquestion` (
  `id` int(11) NOT NULL,
  `question_name` text NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpretestquestion`
--

INSERT INTO `tblpretestquestion` (`id`, `question_name`, `category_id`) VALUES
(1, 'Saya mengikuti les di Jayabayabimbel untuk membantu saya meningkatkan pemahaman pelajaran', 0),
(2, 'Tujuan utama saya les di Jayabayabimbel untuk membantu mengerjakan PR dari sekolah', 0),
(3, 'Kemauan Belajar di jayabayabimbel via online saya sangat tinggi', 0),
(4, 'Belajar di Jayabayabimbel akan membantu saya mempersiapkan pelajaran sebelumnya', 0),
(5, 'Materi yang diberikan di Jayabayabimbel sesuai dengan materi yang saya pelajari di sekolah', 0),
(6, 'Saya berharap pemahaman saya akan meningkat dengan mengikuti les di Jayabayabimbel', 0),
(7, 'Saya akan terbantu dengan mengikuti belajar di Jayabayabimbel', 0),
(8, 'Tentor Jayabayabimbel yang friendly and smart akan memberikan yang terbaik untuk pemahaman belajar saya', 0),
(9, 'Hasil belajar saya di sekolah d pengaruhi oleh tingkat kedisiplinan dan ketekunan saya dalam belajar dan mengikuti les d Jayabayabimbel', 0),
(10, 'Saya menyarankan teman teman belajar di Jayabayabimbel untuk mempersiapkan diri dan lebih memahami materi', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblquestion`
--

CREATE TABLE `tblquestion` (
  `QuestionID` int(11) NOT NULL,
  `QuestionContent` varchar(500) NOT NULL,
  `QuestionPoint` tinyint(4) NOT NULL DEFAULT 4,
  `CourseID` int(11) NOT NULL,
  `ChapterID` int(11) NOT NULL,
  `QuestionStatus` tinyint(4) NOT NULL DEFAULT 0,
  `CreatedDateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `AddedByAdminID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblquestion`
--

INSERT INTO `tblquestion` (`QuestionID`, `QuestionContent`, `QuestionPoint`, `CourseID`, `ChapterID`, `QuestionStatus`, `CreatedDateTime`, `AddedByAdminID`) VALUES
(1, 'what is output of following\r\nif(0)\r\nprintf(\"true\")\r\nelse\r\nprintf(\"false\")', 2, 1, 1, 0, '2018-03-12 19:14:42', 13),
(2, 'int i=0;\r\nif(++i)\r\nprintf(\"true\")\r\nelse\r\nprint(\"false\")', 4, 1, 1, 0, '2018-03-12 19:23:02', 1),
(5, 'what is output of following?\r\nint i=0;\r\n++i==i++;', 4, 1, 1, 0, '2018-03-13 10:51:15', 1),
(6, 'What is 1+1', 4, 1, 1, 0, '2018-03-28 10:30:46', 1),
(7, 'die stops execution of script?', 4, 1, 1, 0, '2018-03-28 10:31:36', 1),
(8, '2+2', 4, 1, 1, 0, '2018-03-28 10:34:39', 1),
(9, 'what is output of echo \'hello\'.\'world\'?', 4, 1, 1, 0, '2018-03-28 10:34:39', 1),
(10, 'what is <?php echo \"asd\";?>', 2, 1, 1, 1, '2018-03-29 21:08:22', 13),
(11, 'What is Proper php starting and ending tag', 4, 1, 1, 0, '2018-04-17 15:45:00', 1),
(12, 'Hello', 4, 1, 1, 0, '2018-04-17 16:07:10', 1),
(13, 'What', 4, 2, 9, 0, '2020-05-11 10:45:23', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblquestionxanswer`
--

CREATE TABLE `tblquestionxanswer` (
  `QuestionXAnswerID` int(11) NOT NULL,
  `ChallengeID` int(11) NOT NULL,
  `CourseID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL,
  `QuestionXOptionID` int(11) DEFAULT NULL,
  `QuestionXOptionPoint` int(11) DEFAULT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblquestionxanswer`
--

INSERT INTO `tblquestionxanswer` (`QuestionXAnswerID`, `ChallengeID`, `CourseID`, `QuestionID`, `QuestionXOptionID`, `QuestionXOptionPoint`, `UserID`) VALUES
(1, 1, 1, 6, 8, -4, 2),
(2, 1, 1, 7, 10, 4, 2),
(3, 1, 1, 2, 4, -4, 2),
(4, 1, 1, 8, NULL, NULL, 2),
(5, 1, 1, 5, 6, 4, 2),
(6, 1, 1, 6, 7, 4, 1),
(7, 1, 1, 7, 10, 4, 1),
(8, 1, 1, 2, 3, 4, 1),
(9, 1, 1, 8, 12, 4, 1),
(10, 1, 1, 5, 6, 4, 1),
(11, 2, 1, 2, 4, -4, 3),
(12, 2, 1, 9, 14, -4, 3),
(13, 2, 1, 7, 10, 4, 3),
(14, 2, 1, 8, 12, 4, 3),
(15, 2, 1, 5, 5, -4, 3),
(16, 3, 1, 5, 6, 4, 3),
(17, 3, 1, 8, 12, 4, 3),
(18, 3, 1, 2, 3, 4, 3),
(19, 3, 1, 6, 7, 4, 3),
(20, 3, 1, 9, 13, 4, 3),
(21, 3, 1, 2, 3, 4, 2),
(22, 3, 1, 5, 5, -4, 2),
(23, 3, 1, 6, 7, 4, 2),
(24, 3, 1, 8, 12, 4, 2),
(25, 3, 1, 9, 13, 4, 2),
(26, 4, 1, 9, 13, 4, 1),
(27, 4, 1, 7, 10, 4, 1),
(28, 4, 1, 8, 11, -4, 1),
(29, 4, 1, 6, 7, 4, 1),
(30, 4, 1, 2, 3, 4, 1),
(31, 4, 1, 2, 3, 4, 2),
(32, 4, 1, 6, 7, 4, 2),
(33, 4, 1, 7, 9, -4, 2),
(34, 4, 1, 8, 12, 4, 2),
(35, 4, 1, 9, 13, 4, 2),
(36, 5, 1, 9, 14, -4, 3),
(37, 5, 1, 7, 10, 4, 3),
(38, 5, 1, 5, 6, 4, 3),
(39, 5, 1, 2, 4, -4, 3),
(40, 5, 1, 8, 12, 4, 3),
(41, 5, 1, 2, 4, -4, 1),
(42, 5, 1, 5, 6, 4, 1),
(43, 5, 1, 7, 9, -4, 1),
(44, 5, 1, 8, 11, -4, 1),
(45, 5, 1, 9, 14, -4, 1),
(46, 6, 1, 6, NULL, NULL, 1),
(47, 6, 1, 7, NULL, NULL, 1),
(48, 6, 1, 5, NULL, NULL, 1),
(49, 6, 1, 9, NULL, NULL, 1),
(50, 6, 1, 2, NULL, NULL, 1),
(51, 7, 1, 6, NULL, NULL, 1),
(52, 7, 1, 5, NULL, NULL, 1),
(53, 7, 1, 12, NULL, NULL, 1),
(54, 7, 1, 2, NULL, NULL, 1),
(55, 7, 1, 7, NULL, NULL, 1),
(56, 8, 1, 2, 4, -4, 1),
(57, 8, 1, 8, 12, 4, 1),
(58, 8, 1, 5, 6, 4, 1),
(59, 8, 1, 1, 1, -2, 1),
(60, 8, 1, 6, 8, -4, 1),
(61, 9, 2, 13, 26, -4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tblquestionxoption`
--

CREATE TABLE `tblquestionxoption` (
  `QuestionXOptionID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL,
  `QuestionXOptionContent` varchar(200) NOT NULL,
  `IsAnswer` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblquestionxoption`
--

INSERT INTO `tblquestionxoption` (`QuestionXOptionID`, `QuestionID`, `QuestionXOptionContent`, `IsAnswer`) VALUES
(1, 1, 'true', 0),
(2, 1, 'false', 1),
(3, 2, 'true', 1),
(4, 2, 'false', 0),
(5, 5, 'false', 0),
(6, 5, 'true', 1),
(7, 6, '2', 1),
(8, 6, '11', 0),
(9, 7, 'no', 0),
(10, 7, 'yes', 1),
(11, 8, '22', 0),
(12, 8, '4', 1),
(13, 9, 'helloworld', 1),
(14, 9, 'hello.world', 0),
(15, 10, 'yes', 0),
(16, 10, 'no', 0),
(17, 10, 'hota hai', 1),
(18, 10, '<?php \"hello\" ?>', 0),
(19, 11, 'a &lt;php echo &quot;hello&quot;; ?&gt; a', 1),
(20, 11, '&lt;php echo &quot;hello&quot;; ?&gt;', 0),
(21, 11, 'b &lt;div&gt;Hello&lt;/div&gt; b', 0),
(22, 11, '&lt;p&gt;Pello&lt;/p&gt;', 0),
(23, 12, '&lt;?php echo &quot;hello&quot;; ?&gt;', 1),
(24, 12, '&lt;P&gt; pello &lt;/P&gt;', 0),
(25, 13, 'qw', 1),
(26, 13, 'e', 0),
(27, 13, 'qw', 0),
(28, 13, 'r', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblquizanswer`
--

CREATE TABLE `tblquizanswer` (
  `ansid` int(11) NOT NULL,
  `quiztry` varchar(8) NOT NULL,
  `questionid` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblquizanswer`
--

INSERT INTO `tblquizanswer` (`ansid`, `quiztry`, `questionid`, `answer`, `userid`) VALUES
(1, '4fblax1T', 2, 7, 3),
(2, '4fblax1T', 1, 3, 3),
(3, 'VZI9BOYq', 1, 1, 3),
(4, 'VZI9BOYq', 2, 7, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tblquizhistori`
--

CREATE TABLE `tblquizhistori` (
  `id` int(11) NOT NULL,
  `quiztry` varchar(8) NOT NULL,
  `userID` int(11) NOT NULL,
  `course` varchar(15) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `score` int(3) DEFAULT NULL,
  `lulus` enum('1','0') DEFAULT '0',
  `evaluatedby` int(5) DEFAULT NULL,
  `evaluateStatus` enum('1','0') NOT NULL DEFAULT '0' COMMENT '1=sudah\r\n0=belum',
  `createdate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblquizhistori`
--

INSERT INTO `tblquizhistori` (`id`, `quiztry`, `userID`, `course`, `sectionID`, `score`, `lulus`, `evaluatedby`, `evaluateStatus`, `createdate`) VALUES
(1, '4fblax1T', 3, 'english', 1, 4, '0', 0, '0', '2020-06-23 00:28:19'),
(2, 'VZI9BOYq', 3, 'english', 1, 0, '0', 0, '0', '2020-06-23 11:21:51');

-- --------------------------------------------------------

--
-- Table structure for table `tblquizoption`
--

CREATE TABLE `tblquizoption` (
  `optid` int(11) NOT NULL,
  `optanswer` varchar(255) DEFAULT NULL,
  `point` int(2) DEFAULT NULL,
  `questionid` int(11) NOT NULL,
  `pinned` enum('1','') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblquizoption`
--

INSERT INTO `tblquizoption` (`optid`, `optanswer`, `point`, `questionid`, `pinned`) VALUES
(1, 'A', NULL, 1, NULL),
(2, 'B', NULL, 1, '1'),
(3, 'C', 4, 1, NULL),
(4, 'D', NULL, 1, NULL),
(5, 'Q', 3, 2, NULL),
(6, 'R', NULL, 2, NULL),
(7, 'S', NULL, 2, NULL),
(8, 'T', NULL, 2, NULL),
(20, 'OK MBOK BENER ', 1, 8, NULL),
(21, 'SIP TENAN MBOK', 1, 8, NULL),
(24, 'PREEET', 1, 8, NULL),
(25, 'u', 1, 2, '1'),
(26, 'V', 1, 2, NULL),
(27, 'iya?', 1, 8, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblquizquestion`
--

CREATE TABLE `tblquizquestion` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'choice',
  `choice` varchar(1) NOT NULL DEFAULT '4',
  `course` varchar(15) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `created_by` int(5) DEFAULT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblquizquestion`
--

INSERT INTO `tblquizquestion` (`id`, `question`, `type`, `choice`, `course`, `sectionID`, `created_by`, `status`) VALUES
(1, 'What is bla bla bla', 'choice', '4', 'english', 1, NULL, '1'),
(2, 'Where are you bla bla bla', 'choice', '4', 'english', 1, NULL, '1'),
(8, 'kenapa?', 'choice', '4', 'english', 1, 4, '1'),
(9, 'kenapa saya?', 'choice', '4', 'english', 1, 4, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblsbmtugas`
--

CREATE TABLE `tblsbmtugas` (
  `id` int(11) NOT NULL,
  `id_materi` int(11) NOT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `course` varchar(50) NOT NULL,
  `id_tugas` int(11) NOT NULL,
  `id_siswa` varchar(50) NOT NULL,
  `id_teacher` varchar(50) NOT NULL,
  `tugas_comment` text DEFAULT NULL,
  `submitStatus` int(11) DEFAULT NULL,
  `tugas_nilai` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsbmtugas`
--

INSERT INTO `tblsbmtugas` (`id`, `id_materi`, `id_kelas`, `course`, `id_tugas`, `id_siswa`, `id_teacher`, `tugas_comment`, `submitStatus`, `tugas_nilai`, `created_at`) VALUES
(1, 20, NULL, 'english', 14, 'u6KIKFhsAsKB', 'cChAqVbnLR4V', NULL, 0, '100', '2021-01-18 11:33:38'),
(2, 20, NULL, 'english', 13, 'u6KIKFhsAsKB', 'cChAqVbnLR4V', 'maaf terlambat', 0, NULL, '2021-02-16 13:29:38'),
(3, 20, NULL, 'english', 11, 'xW44aO', 'cChAqVbnLR4V', NULL, 0, '90', '2021-02-16 14:03:22'),
(4, 20, NULL, 'english', 13, 'xW44aO', 'cChAqVbnLR4V', NULL, 0, NULL, '2021-02-16 14:03:56'),
(5, 20, NULL, 'english', 14, 'xW44aO', 'cChAqVbnLR4V', NULL, 0, NULL, '2021-02-16 14:39:03'),
(6, 28, NULL, 'arab', 19, 'xW44aO', 'cChAqVbnLR4V', NULL, 0, NULL, '2021-02-19 14:37:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblschedule`
--

CREATE TABLE `tblschedule` (
  `id` int(11) NOT NULL,
  `jenjang` int(2) NOT NULL,
  `mapel_id` int(5) NOT NULL,
  `course` varchar(10) NOT NULL,
  `day` int(1) NOT NULL,
  `starttime` time NOT NULL,
  `endtime` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblschedule`
--

INSERT INTO `tblschedule` (`id`, `jenjang`, `mapel_id`, `course`, `day`, `starttime`, `endtime`) VALUES
(1, 1, 2, 'class', 1, '23:00:00', '23:00:00'),
(2, 1, 4, 'class', 1, '16:15:00', '16:15:00'),
(3, 1, 2, 'class', 2, '16:30:00', '16:30:00'),
(4, 2, 1, 'english', 5, '06:00:00', '07:00:00'),
(5, 2, 2, 'class', 5, '15:00:00', '16:00:00'),
(6, 2, 1, 'class', 4, '15:00:00', '16:00:00'),
(7, 2, 1, 'english', 3, '21:45:00', '21:45:00'),
(8, 2, 1, 'math', 3, '15:00:00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblsection`
--

CREATE TABLE `tblsection` (
  `SectionID` int(11) NOT NULL,
  `SectionName` varchar(200) NOT NULL,
  `SectionContent` mediumtext NOT NULL,
  `file` varchar(150) DEFAULT NULL,
  `video` varchar(150) DEFAULT NULL,
  `Jenjang` varchar(2) NOT NULL,
  `Course` varchar(15) NOT NULL,
  `Grade` int(2) NOT NULL,
  `SectionOrder` int(3) NOT NULL,
  `AddedByAdminID` int(11) NOT NULL,
  `SectionStatus` tinyint(4) NOT NULL DEFAULT 0,
  `CreatedDateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `UpdatedDateTime` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsection`
--

INSERT INTO `tblsection` (`SectionID`, `SectionName`, `SectionContent`, `file`, `video`, `Jenjang`, `Course`, `Grade`, `SectionOrder`, `AddedByAdminID`, `SectionStatus`, `CreatedDateTime`, `UpdatedDateTime`) VALUES
(1, 'Bab 1', '<p style=\"text-align: justify;\"><iframe src=\"https://www.youtube.com/embed/DtNA3sGpB4w\" width=\"640\" height=\"359\" allowfullscreen=\"allowfullscreen\"></iframe></p>\r\n<p style=\"text-align: justify;\">Belajar bahasa inggris haruslah dimulai dari <em>basic</em> atau dasar, terutama bagi pembelajar pemula. Ada beberapa materi dasar yang memang harus di kuasai agar mereka lebih mudah belajar bahasa inggris untuk kedepan nya. Berikut beberapa materi dasar yang wajib di pahami dan di kuasai oleh pemula.</p>\r\n<h4><span id=\"1_Pronoun_(Kata_Ganti)\" class=\"ez-toc-section\"></span><strong>1.Pronoun (Kata Ganti)</strong></h4>\r\n<p style=\"text-align: justify;\"><a href=\"https://www.kuliahbahasainggris.com/pengertian-penggunaan-dan-contoh-kalimat-relative-pronouns-kata-hubung/\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>Pronoun</strong></a> merupakan sebuah kata yang di gunakan untuk menggantikan kata benda (noun) baik berupa nama orang, hewan, benda, atau pun tempat.</p>\r\n<p style=\"text-align: justify;\">pronoun sendiri merupakan bagian dari <a href=\"https://www.kuliahbahasainggris.com/category/parts-of-speech/\" target=\"_blank\" rel=\"noopener noreferrer\"><em>part of speech</em></a> yang terdiri dari 8 macam, yaitu :</p>', '7c42833f1d23f2d6949c3cba76c52900.pdf', NULL, '4', 'english', 0, 1, 2, 0, '2020-05-21 07:45:35', '2020-07-22 13:38:47'),
(2, 'Grammer 1', '<p>Tes jalan</p>', NULL, NULL, '4', 'english', 0, 2, 2, 0, '2020-05-21 16:37:10', '2020-06-02 22:01:17'),
(3, 'Operasi dasar', '<p>1 + 1 = 2</p>', NULL, NULL, '1', 'math', 1, 1, 2, 0, '2020-05-22 13:27:28', '2020-05-22 13:28:30'),
(4, 'Simple Tense', '<p>Halo</p>', NULL, NULL, '2', 'english', 1, 3, 2, 0, '2020-06-02 21:14:27', NULL),
(5, 'Past Tense', '', NULL, NULL, '2', 'english', 1, 4, 2, 0, '2020-06-02 21:14:52', NULL),
(6, 'Future Tense', '', NULL, NULL, '2', 'english', 1, 5, 2, 0, '2020-06-02 21:15:11', NULL),
(7, 'Past Future Tense', '', NULL, NULL, '2', 'english', 1, 6, 2, 0, '2020-06-02 21:15:32', NULL),
(8, 'Deret hitung', '', NULL, NULL, '2', 'math', 1, 1, 2, 0, '2020-06-02 21:32:38', NULL),
(9, 'Aritmatika', '', NULL, NULL, '2', 'math', 1, 2, 2, 0, '2020-06-02 21:32:56', NULL),
(10, 'Bentuk bentuk', '', NULL, NULL, '2', 'math', 1, 3, 2, 0, '2020-06-02 21:33:11', NULL),
(11, 'Bab ke 1', '', '83e382b48e8d5aececf004b25358e9e7.ppt', NULL, '2', 'english', 1, 1, 2, 0, '2020-06-15 18:36:07', '2020-06-15 18:43:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblsitereport`
--

CREATE TABLE `tblsitereport` (
  `SiteReportID` int(11) NOT NULL,
  `SiteReportSubject` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `SiteReportContent` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `IsResponded` tinyint(4) NOT NULL DEFAULT 0,
  `CreatedDateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblsitereport`
--

INSERT INTO `tblsitereport` (`SiteReportID`, `SiteReportSubject`, `SiteReportContent`, `UserID`, `IsResponded`, `CreatedDateTime`) VALUES
(1, 'hello', 'test here', 1, 0, '2018-04-15 11:50:43'),
(2, 'test2', 'test22', 1, 0, '2018-04-15 12:01:45'),
(3, 'Tes coba', 'halo admin', 3, 0, '2020-05-31 11:06:41'),
(4, 'cok', 'coookkkkk', 3, 0, '2020-05-31 11:14:51'),
(5, 'jajal', 'jajal', 3, 0, '2020-05-31 11:21:52'),
(6, 'Tes', 'KOKO', NULL, 0, '2020-05-31 17:22:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblsystemlog`
--

CREATE TABLE `tblsystemlog` (
  `log_id` int(11) NOT NULL,
  `log_time` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `log_user` varchar(255) DEFAULT NULL,
  `log_tipe` int(11) DEFAULT NULL,
  `log_desc` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsystemlog`
--

INSERT INTO `tblsystemlog` (`log_id`, `log_time`, `log_user`, `log_tipe`, `log_desc`) VALUES
(9, '2020-05-06 15:12:14', NULL, 2, 'AAA Login'),
(10, '2020-05-06 22:04:27', NULL, 0, 'AAA Login'),
(11, '2020-05-07 04:04:19', NULL, 0, 'AAA Login'),
(12, '2020-05-07 13:53:32', NULL, 0, 'AAA Login'),
(13, '2020-05-09 03:39:20', NULL, 0, 'AAA Login'),
(14, '2020-05-09 14:54:18', NULL, 0, 'AAA Login'),
(15, '2020-05-09 15:02:57', NULL, 2, 'Tahun menambah tahun pelajaran 2022/2023'),
(16, '2020-05-09 15:05:32', NULL, 2, 'Tahun menambah tahun pelajaran 2022/2023'),
(17, '2020-05-09 15:33:05', NULL, 3, 'Tahun mengedit tahun pelajaran'),
(18, '2020-05-09 15:33:35', NULL, 3, 'Tahun mengedit tahun pelajaran'),
(19, '2020-05-09 15:34:32', NULL, 3, 'Tahun mengedit tahun pelajaran'),
(20, '2020-05-09 15:34:41', NULL, 3, 'Tahun mengedit tahun pelajaran'),
(21, '2020-05-09 16:16:23', NULL, 2, 'AAA menambah mata pelajaran Bahasa Indonesia'),
(22, '2020-05-09 16:24:23', NULL, 2, 'AAA menambah mata pelajaran Matematika'),
(23, '2020-05-09 16:28:24', NULL, 2, 'AAA menambah mata pelajaran Matematika'),
(24, '2020-05-09 16:28:46', NULL, 2, 'AAA menambah mata pelajaran Bahasa Indonesia'),
(25, '2020-05-09 16:33:45', NULL, 3, 'AAA mengedit mata pelajaran'),
(26, '2020-05-09 16:34:03', NULL, 3, 'AAA mengedit mata pelajaran'),
(27, '2020-05-09 16:34:26', NULL, 2, 'AAA menambah mata pelajaran Bahasa Inggris'),
(28, '2020-05-09 16:38:42', NULL, 2, 'AAA menambah mata pelajaran PPKN'),
(29, '2020-05-09 16:42:39', NULL, 3, 'AAA mengedit mata pelajaran'),
(30, '2020-05-09 16:42:53', NULL, 3, 'AAA mengedit tahun pelajaran'),
(31, '2020-05-09 16:43:26', NULL, 3, 'Admin mengedit admin profil'),
(32, '2020-05-10 09:47:38', NULL, 0, 'AAA Login'),
(33, '2020-05-10 22:14:40', NULL, 0, 'AAA Login'),
(34, '2020-05-11 04:15:47', NULL, 0, 'AAA Login'),
(35, '2020-05-11 04:48:56', NULL, 2, 'Kelas menambah data kelas baru A.2'),
(36, '2020-05-11 06:25:54', NULL, 3, 'AAA mengedit data kelas'),
(37, '2020-05-11 06:55:06', NULL, 3, 'AAA change status kelas '),
(38, '2020-05-11 06:55:09', NULL, 3, 'AAA change status kelas '),
(39, '2020-05-11 07:14:42', NULL, 3, 'AAA change status kelas '),
(40, '2020-05-11 07:14:44', NULL, 3, 'AAA change status kelas '),
(41, '2020-05-11 07:14:49', NULL, 3, 'AAA change status kelas '),
(42, '2020-05-11 07:15:29', NULL, 3, 'AAA change status kelas '),
(43, '2020-05-11 07:15:37', NULL, 3, 'AAA change status kelas '),
(44, '2020-05-11 07:29:37', NULL, 3, 'AAA mengedit data kelas'),
(45, '2020-05-11 07:29:44', NULL, 3, 'AAA mengedit data kelas'),
(46, '2020-05-11 07:31:14', NULL, 3, 'AAA change status kelas '),
(47, '2020-05-11 08:29:51', NULL, 3, 'AAA change status kelas '),
(48, '2020-05-11 08:29:52', NULL, 3, 'AAA change status kelas '),
(49, '2020-05-11 09:28:33', NULL, 3, 'AAA change status kelas '),
(50, '2020-05-11 10:02:54', NULL, 3, 'AAA change status kelas '),
(51, '2020-05-11 10:08:07', NULL, 3, 'AAA change status kelas '),
(52, '2020-05-11 10:08:19', NULL, 3, 'AAA change status kelas '),
(53, '2020-05-11 10:08:21', NULL, 3, 'AAA change status kelas '),
(54, '2020-05-11 10:08:56', NULL, 3, 'AAA change status kelas '),
(55, '2020-05-11 10:36:37', NULL, 3, 'AAA change status kelas '),
(56, '2020-05-11 10:36:38', NULL, 3, 'AAA change status kelas '),
(57, '2020-05-11 10:41:03', NULL, 3, 'AAA change status kelas '),
(58, '2020-05-11 10:41:05', NULL, 3, 'AAA change status kelas '),
(59, '2020-05-11 10:45:59', NULL, 2, 'Kelas menambah data kelas baru A-1'),
(60, '2020-05-11 10:46:39', NULL, 2, 'Kelas menambah data kelas baru KELAS A'),
(61, '2020-05-11 10:46:59', NULL, 3, 'AAA mengedit data kelas'),
(62, '2020-05-11 10:47:43', NULL, 3, 'AAA mengedit data kelas'),
(63, '2020-05-11 10:47:55', NULL, 3, 'AAA mengedit data kelas'),
(64, '2020-05-11 10:48:04', NULL, 3, 'AAA mengedit data kelas'),
(65, '2020-05-11 10:48:23', NULL, 3, 'AAA mengedit data kelas'),
(66, '2020-05-11 16:01:11', NULL, 0, 'AAA Login'),
(67, '2020-05-12 05:46:51', NULL, 0, 'AAA Login'),
(68, '2020-05-16 08:55:27', NULL, 0, 'AAA Login'),
(69, '2020-05-16 08:55:46', NULL, 3, 'AAA change status kelas '),
(70, '2020-05-16 08:55:47', NULL, 3, 'AAA change status kelas '),
(71, '2020-05-17 04:15:58', NULL, 0, 'AAA Login'),
(72, '2020-05-17 09:48:55', NULL, 0, 'AAA Login'),
(73, '2020-05-17 13:57:11', NULL, 3, 'User memverifikasi Rafli'),
(74, '2020-05-18 02:03:17', NULL, 0, 'AAA Login'),
(75, '2020-05-18 05:41:50', NULL, 0, 'AAA Login'),
(76, '2020-05-18 10:04:19', NULL, 0, 'AAA Login'),
(77, '2020-05-18 13:58:18', NULL, 0, 'AAA Login'),
(78, '2020-05-18 14:07:02', NULL, 2, 'AAA menambah admin baru '),
(79, '2020-05-18 16:05:28', NULL, 3, 'AAA mengedit biodata pengajar M. Nur Rafli'),
(80, '2020-05-18 16:06:19', NULL, 3, 'AAA mengedit biodata pengajar M. Nur Rafli'),
(81, '2020-05-19 03:54:39', NULL, 0, 'AAA Login'),
(82, '2020-05-19 07:41:27', NULL, 0, 'AAA Login'),
(83, '2020-05-19 10:17:08', NULL, 0, 'AAA Login'),
(84, '2020-05-19 10:18:54', NULL, 0, 'LUKMANUL Login'),
(85, '2020-05-19 20:38:54', NULL, 0, 'AAA Login'),
(86, '2020-05-20 12:48:50', NULL, 0, 'AAA Login'),
(87, '2020-05-20 22:12:21', NULL, 0, 'AAA Login'),
(88, '2020-05-20 22:51:41', NULL, 2, 'AAA menambah bab kursus Bab 1'),
(89, '2020-05-20 22:52:39', NULL, 2, 'AAA menambah bab kursus Bab 2'),
(90, '2020-05-20 22:55:46', NULL, 2, 'AAA menambah bab kursus Bab 3'),
(91, '2020-05-20 23:05:34', NULL, 2, 'AAA menambah bab kursus Bab 4'),
(92, '2020-05-21 01:46:46', NULL, 0, 'AAA Login'),
(93, '2020-05-21 02:03:01', NULL, 3, 'AAA merubah status.'),
(94, '2020-05-21 02:03:06', NULL, 3, 'AAA merubah status.'),
(95, '2020-05-21 02:12:44', NULL, 2, 'AAA menambah bab kursus Makan'),
(96, '2020-05-21 02:15:35', NULL, 2, 'AAA menambah bab kursus Bab 1'),
(97, '2020-05-21 02:15:51', NULL, 3, 'AAA merubah status.'),
(98, '2020-05-21 10:20:49', NULL, 0, 'AAA Login'),
(99, '2020-05-21 10:20:59', NULL, 3, 'AAA merubah status.'),
(100, '2020-05-21 10:21:01', NULL, 3, 'AAA merubah status.'),
(101, '2020-05-21 11:07:10', NULL, 2, 'AAA menambah bab kursus Grammer'),
(102, '2020-05-21 15:38:05', NULL, 0, 'AAA Login'),
(103, '2020-05-22 04:04:31', NULL, 0, 'AAA Login'),
(104, '2020-05-22 06:33:42', NULL, 2, 'AAA edit bab kursus Grammer level 1'),
(105, '2020-05-22 07:10:29', NULL, 2, 'AAA edit bab kursus '),
(106, '2020-05-22 07:10:34', NULL, 3, 'AAA merubah status.'),
(107, '2020-05-22 07:10:36', NULL, 3, 'AAA merubah status.'),
(108, '2020-05-22 07:10:50', NULL, 2, 'AAA edit bab kursus '),
(109, '2020-05-22 07:12:32', NULL, 2, 'AAA edit bab kursus '),
(110, '2020-05-22 07:17:00', NULL, 3, 'AAA merubah status.'),
(111, '2020-05-22 07:17:01', NULL, 3, 'AAA merubah status.'),
(112, '2020-05-22 07:17:03', NULL, 3, 'AAA merubah status.'),
(113, '2020-05-22 07:17:04', NULL, 3, 'AAA merubah status.'),
(114, '2020-05-22 07:57:28', NULL, 2, 'AAA menambah bab kursus Tambah tambahan'),
(115, '2020-05-22 07:58:23', NULL, 3, 'AAA edit bab kursus '),
(116, '2020-05-22 07:58:28', NULL, 3, 'AAA merubah status.'),
(117, '2020-05-22 07:58:30', NULL, 3, 'AAA merubah status.'),
(118, '2020-05-22 08:21:19', NULL, 3, 'AAA inactivate mata pelajaran '),
(119, '2020-05-22 08:21:20', NULL, 3, 'AAA inactivate mata pelajaran '),
(120, '2020-05-22 08:21:20', NULL, 3, 'AAA inactivate mata pelajaran '),
(121, '2020-05-22 08:21:21', NULL, 3, 'AAA inactivate mata pelajaran '),
(122, '2020-05-25 01:58:59', NULL, 0, 'AAA Login'),
(123, '2020-05-25 05:24:41', NULL, 0, 'AAA Login'),
(124, '2020-05-25 08:19:56', NULL, 2, 'AAA menambah bab mapel Ini budi'),
(125, '2020-05-25 08:38:53', NULL, 3, 'AAA merubah status.'),
(126, '2020-05-25 08:38:56', NULL, 3, 'AAA merubah status.'),
(127, '2020-05-25 09:04:19', NULL, 3, 'AAA edit bab Membaca awal'),
(128, '2020-05-25 09:04:30', NULL, 3, 'AAA edit bab Membaca awal'),
(129, '2020-05-25 09:22:25', NULL, 3, 'AAA merubah status.'),
(130, '2020-05-25 09:22:27', NULL, 3, 'AAA merubah status.'),
(131, '2020-05-25 13:07:24', NULL, 3, 'AAA inactivate mata pelajaran '),
(132, '2020-05-25 13:07:25', NULL, 3, 'AAA inactivate mata pelajaran '),
(133, '2020-05-26 00:42:55', NULL, 0, 'AAA Login'),
(134, '2020-05-26 06:51:26', NULL, 0, 'AAA Login'),
(135, '2020-05-26 13:17:30', NULL, 0, 'AAA Login'),
(136, '2020-05-27 02:49:47', NULL, 0, 'AAA Login'),
(137, '2020-05-27 10:05:50', NULL, 0, 'AAA Login'),
(138, '2020-05-27 13:26:54', NULL, 2, 'AAA menambah data jadwal '),
(139, '2020-05-27 13:30:16', NULL, 2, 'AAA menambah data jadwal '),
(140, '2020-05-27 15:10:15', NULL, 2, 'AAA menambah data jadwal '),
(141, '2020-05-27 15:15:36', NULL, 2, 'AAA menambah data jadwal '),
(142, '2020-05-27 15:15:43', NULL, 2, 'AAA menambah data jadwal '),
(143, '2020-05-27 15:26:23', NULL, 2, 'AAA menambah data jadwal '),
(144, '2020-05-27 15:27:06', NULL, 2, 'AAA menambah data jadwal '),
(145, '2020-05-27 15:29:12', NULL, 2, 'AAA menambah data jadwal '),
(146, '2020-05-27 15:29:57', NULL, 2, 'AAA menambah data jadwal '),
(147, '2020-05-27 15:32:43', NULL, 2, 'AAA menambah data jadwal '),
(148, '2020-05-27 15:33:34', NULL, 2, 'AAA menambah data jadwal '),
(149, '2020-05-27 15:36:47', NULL, 2, 'AAA menambah data jadwal '),
(150, '2020-05-27 15:38:20', NULL, 2, 'AAA menambah data jadwal '),
(151, '2020-05-27 15:38:46', NULL, 2, 'AAA menambah data jadwal '),
(152, '2020-05-27 15:39:26', NULL, 2, 'AAA menambah data jadwal '),
(153, '2020-05-27 15:40:29', NULL, 2, 'AAA menambah data jadwal '),
(154, '2020-05-27 15:43:43', NULL, 2, 'AAA menambah data jadwal '),
(155, '2020-05-27 15:45:17', NULL, 2, 'AAA menambah data jadwal '),
(156, '2020-05-27 15:53:33', NULL, 2, 'AAA menambah data jadwal '),
(157, '2020-05-27 15:56:34', NULL, 2, 'AAA menambah data jadwal '),
(158, '2020-05-27 15:56:41', NULL, 2, 'AAA menambah data jadwal '),
(159, '2020-05-27 15:56:42', NULL, 2, 'AAA menambah data jadwal '),
(160, '2020-05-27 15:56:42', NULL, 2, 'AAA menambah data jadwal '),
(161, '2020-05-27 15:56:42', NULL, 2, 'AAA menambah data jadwal '),
(162, '2020-05-27 15:56:43', NULL, 2, 'AAA menambah data jadwal '),
(163, '2020-05-27 15:56:43', NULL, 2, 'AAA menambah data jadwal '),
(164, '2020-05-27 15:56:43', NULL, 2, 'AAA menambah data jadwal '),
(165, '2020-05-27 15:57:57', NULL, 2, 'AAA menambah data jadwal '),
(166, '2020-05-27 15:59:01', NULL, 2, 'AAA menambah data jadwal '),
(167, '2020-05-27 15:59:43', NULL, 2, 'AAA menambah data jadwal '),
(168, '2020-05-27 16:00:32', NULL, 2, 'AAA menambah data jadwal '),
(169, '2020-05-28 09:16:36', NULL, 0, 'AAA Login'),
(170, '2020-05-28 09:21:51', NULL, 3, 'AAA memverifikasi Rafli'),
(171, '2020-05-28 09:25:24', NULL, 2, 'AAA menambah data jadwal '),
(172, '2020-05-28 09:33:35', NULL, 2, 'AAA menambah data jadwal '),
(173, '2020-05-30 04:35:02', NULL, 0, 'AAA Login'),
(174, '2020-05-30 06:18:22', NULL, 0, 'AAA Login'),
(175, '2020-06-02 12:34:03', NULL, 0, 'AAA Login'),
(176, '2020-06-02 12:34:27', NULL, 3, 'AAA memverifikasi Rafli'),
(177, '2020-06-02 15:43:10', NULL, 0, 'AAA Login'),
(178, '2020-06-02 15:44:27', NULL, 2, 'AAA menambah bab kursus Simple Tense'),
(179, '2020-06-02 15:44:52', NULL, 2, 'AAA menambah bab kursus Past Tense'),
(180, '2020-06-02 15:45:11', NULL, 2, 'AAA menambah bab kursus Future Tense'),
(181, '2020-06-02 15:45:32', NULL, 2, 'AAA menambah bab kursus Past Future Tense'),
(182, '2020-06-02 15:49:31', NULL, 3, 'AAA memverifikasi Rina'),
(183, '2020-06-02 16:02:38', NULL, 2, 'AAA menambah bab kursus Deret hitung'),
(184, '2020-06-02 16:02:56', NULL, 2, 'AAA menambah bab kursus Aritmatika'),
(185, '2020-06-02 16:03:11', NULL, 2, 'AAA menambah bab kursus Bentuk bentuk'),
(186, '2020-06-04 23:01:54', NULL, 0, 'AAA Login'),
(187, '2020-06-04 23:03:00', NULL, 3, 'AAA edit bab kursus Bab 1'),
(188, '2020-06-04 23:04:22', NULL, 2, 'AAA menambah data jadwal '),
(189, '2020-06-05 13:09:22', NULL, 0, 'AAA Login'),
(190, '2020-06-05 13:10:09', NULL, 2, 'AAA menambah data jadwal '),
(191, '2020-06-05 13:10:41', NULL, 2, 'AAA menambah data jadwal '),
(192, '2020-06-05 13:47:06', NULL, 2, 'AAA menambah bab mapel Bab 1 : Kalimat Efektif'),
(193, '2020-06-05 13:47:44', NULL, 2, 'AAA menambah bab mapel Bab 2 : Tajuk Rencana'),
(194, '2020-06-06 12:13:11', NULL, 0, 'AAA Login'),
(195, '2020-06-06 12:29:05', NULL, 3, 'AAA memverifikasi Rafli'),
(196, '2020-06-06 22:37:38', NULL, 0, 'AAA Login'),
(197, '2020-06-06 22:38:02', NULL, 3, 'AAA edit bab Bab 1 : Kalimat Efektif'),
(198, '2020-06-06 22:38:11', NULL, 3, 'AAA edit bab Bab 2 : Tajuk Rencana'),
(199, '2020-06-07 13:01:07', NULL, 0, 'AAA Login'),
(200, '2020-06-07 13:16:13', NULL, 0, 'AAA Login'),
(201, '2020-06-15 10:02:02', NULL, 0, 'AAA Login'),
(202, '2020-06-15 13:06:07', NULL, 2, 'AAA menambah bab kursus Bab1'),
(203, '2020-06-15 13:11:57', NULL, 3, 'AAA edit bab kursus Bab ke 1'),
(204, '2020-06-15 13:13:09', NULL, 3, 'AAA edit bab kursus Bab ke 1'),
(205, '2020-06-15 13:20:53', NULL, 3, 'AAA memverifikasi Rina'),
(206, '2020-06-16 09:37:25', NULL, 0, 'AAA Login'),
(207, '2020-06-16 10:25:53', NULL, 2, 'AAA menambah admin baru '),
(208, '2020-06-16 11:14:29', NULL, 3, 'AAA mengedit biodata pengajar Siti Nurbaya'),
(209, '2020-06-16 11:14:49', NULL, 3, 'AAA mengedit biodata pengajar Udkhiati Mawadah'),
(210, '2020-06-16 13:47:26', NULL, 0, 'AAA Login'),
(211, '2020-06-16 14:59:33', NULL, 2, 'AAA menambah data jadwal '),
(212, '2020-06-16 15:00:10', NULL, 2, 'AAA menambah data jadwal '),
(213, '2020-06-16 15:59:15', NULL, 3, 'AAA mengedit biodata pengajar Udkhiati Mawadah'),
(214, '2020-06-23 05:40:02', NULL, 0, 'AAA Login'),
(215, '2020-06-28 10:25:16', NULL, 0, 'AAA Login'),
(216, '2020-07-02 13:24:38', NULL, 0, 'AAA Login'),
(217, '2020-07-07 12:56:36', NULL, 0, 'AAA Login'),
(218, '2020-07-07 15:12:56', NULL, 0, 'AAA Login'),
(219, '2020-07-07 15:44:27', NULL, 0, 'AAA Login'),
(220, '2020-07-07 15:44:52', NULL, 3, 'AAA edit bab kursus Bab 1'),
(221, '2020-07-22 07:35:05', NULL, 0, 'AAA Login'),
(222, '2020-07-22 07:51:07', NULL, 0, 'AAA Login'),
(223, '2020-07-22 08:07:32', NULL, 0, 'AAA Login'),
(224, '2020-07-22 08:08:00', NULL, 3, 'AAA edit bab kursus Bab 1'),
(225, '2020-07-22 08:08:47', NULL, 3, 'AAA edit bab kursus Bab 1'),
(226, '2020-08-22 10:17:37', NULL, 0, 'AAA Login'),
(227, '2020-08-24 10:06:45', NULL, 0, 'AAA Login'),
(228, '2020-08-25 02:41:08', NULL, 0, 'LUKMANUL Login'),
(229, '2020-08-25 07:37:38', NULL, 0, 'LUKMANUL Login'),
(230, '2020-08-25 09:17:19', NULL, 3, 'LUKMANUL mengedit biodata pengajar Udkhiati Mawadah'),
(231, '2020-08-25 09:27:06', NULL, 0, 'AAA Login'),
(232, '2020-08-25 09:27:24', NULL, 0, 'LUKMANUL Login'),
(233, '2020-08-25 09:28:02', NULL, 0, 'AAA Login'),
(234, '2020-08-26 05:04:18', NULL, 0, 'AAA Login'),
(235, '2020-08-26 05:34:38', NULL, 0, 'AAA Login'),
(236, '2020-08-26 07:06:34', NULL, 0, 'AAA Login'),
(237, '2020-09-01 05:21:51', NULL, 0, 'Zega Febrianto Login'),
(238, '2020-09-01 05:22:34', NULL, 0, 'AAA Login');

-- --------------------------------------------------------

--
-- Table structure for table `tbltag`
--

CREATE TABLE `tbltag` (
  `TagID` int(11) NOT NULL,
  `TagName` varchar(100) NOT NULL,
  `TagDescription` varchar(1000) NOT NULL,
  `AddedByAdminID` int(11) NOT NULL,
  `TagStatus` tinyint(4) NOT NULL DEFAULT 0,
  `CreatedDateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltag`
--

INSERT INTO `tbltag` (`TagID`, `TagName`, `TagDescription`, `AddedByAdminID`, `TagStatus`, `CreatedDateTime`) VALUES
(1, 'PHP', 'Server side scripting Language', 1, 0, '2018-03-04 18:34:57'),
(2, 'javascript', 'frontend scripting language', 1, 0, '2018-04-23 01:56:38');

-- --------------------------------------------------------

--
-- Table structure for table `tbltahun`
--

CREATE TABLE `tbltahun` (
  `id` int(4) NOT NULL,
  `tahun` varchar(15) NOT NULL,
  `aktif` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbltahun`
--

INSERT INTO `tbltahun` (`id`, `tahun`, `aktif`) VALUES
(1, '2020/2021', '1'),
(2, '2021/2022', '0'),
(4, '2022/2023', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher`
--

CREATE TABLE `tblteacher` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(55) NOT NULL,
  `password` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `tempat_lahir` varchar(45) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `pendidikan` varchar(255) NOT NULL,
  `universitas` varchar(65) NOT NULL,
  `tentor_program` varchar(15) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `foto` text DEFAULT NULL,
  `status_id` tinyint(1) NOT NULL COMMENT '0=blok, 1=aktif',
  `online` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblteacher`
--

INSERT INTO `tblteacher` (`id`, `nama`, `email`, `password`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `alamat`, `pendidikan`, `universitas`, `tentor_program`, `telp`, `foto`, `status_id`, `online`, `created_at`, `updated_at`) VALUES
(1, 'M. Nur Rafli', 'rafli@gmail.com', '$2y$10$7d500qfmyDh8xj/c2EoSCO5WrbfZE7R6UllH7INuATLg9eLAC8fz.', '1', 'Kediri', '1989-05-10', 'Jl Rambutan RT/RW )#', '2', 'UIN MMI Malang', 'english', '082257446231', '29622c4da70ef91775c8f12a9fa16377.png', 0, 0, '2020-08-26 08:18:03', '2020-08-26 08:18:23'),
(2, 'zega febrian', 'randombox38@gmail.com', '$2y$10$Jv.tmmT/UsudRaYe.61yvukNf/pBHHohs.HIgAItB5xA13ApXvjhW', 'Laki - laki', 'blitar', '2020-08-27', 'blitar', 'Strata 1', 'unisba', 'english', '081252867991', 'img/teacher_img/2.jpg', 1, 0, '2020-08-27 01:26:20', '2020-08-27 01:26:20'),
(3, 'zegato', 'randombox381@gmail.com', '$2y$10$rT3JVUVeUmxzR4u6fRX/Z.T6.9u9FIteaWsNF7jN.XF3vZ8UCh0zW', 'Laki - laki', 'blitar', '2020-08-27', 'blitar', 'Strata 2', 'unisba', 'Matematika', '081252867991', 'img/teacher_img/3.jpg', 1, 0, '2020-08-27 01:27:02', '2020-08-27 01:27:02'),
(4, 'Muhammda Subeqi', 'mamad@gmail.com', '$2y$10$3ORg7YPlI7gPAhkGnCKiyuW8S.7w3xsYKkDQEhsVMwSb58n4tYCQa', 'Perempuan', 'blitar', '2020-08-27', 'blitar', 'Strata 1', 'unisba', 'Bahasa Inggris', '081252867991', 'img/teacher_img/4.jpg', 1, 0, '2020-08-27 03:33:36', '2020-08-27 03:33:36'),
(5, 'Subeqi mamat', 'subeqi@gmail.com', '$2y$10$qEc8qGJ2G.yzmsvUaoioNOu8J7macV6p0E9jGxYs.134EK8QIsG7.', 'Laki - laki', 'blitar', '2020-08-28', 'blitar', 'Strata 1', 'Universitas Islam Balitar', 'Matematika', '081252867991', 'img/teacher_img/5.jpg', 1, 0, '2020-08-27 23:22:11', '2020-08-27 23:22:11'),
(6, 'febrianto', 'febrianto@gmail.com', '$2y$10$aDep/4wso8dqfPxjUgp0Jeer6gouXlx3Zj41rlrm5GgPL5kaFKafq', 'Laki - laki', 'blitar', '2020-08-31', 'blitar', 'Strata 1', 'Universitas Islam Balitar', 'Matematika', '081252867991', 'img/teacher_img/6.jpg', 1, 0, '2020-08-31 01:08:17', '2020-08-31 01:08:17'),
(7, 'zega feb', 'randombox3812@gmail.com', '$2y$10$Wec8jfwZyGI2GT.XgZxJPexCGaA/1VYk2gEYAds3d2jLBG4VLJYFS', 'Laki - laki', 'blitar', '2020-09-01', 'blitar', 'Strata 1', 'unisba', 'Bahasa Inggris', '081252867991', 'img/teacher_img/7.jpg', 1, 0, '2020-08-31 23:43:11', '2020-08-31 23:43:11'),
(8, 'Wahyu Ema F.', 'wahyuema@gmail.com', '$2y$10$OjnGA5HQ5WDQ.xykrJ7c7e4iU772SvcmA1fuoxe0Tiql7pB.OIkz2', 'Perempuan', 'Ngembul', '2020-09-14', 'Ngembul', 'Strata 2', 'UNESA', 'math', '0921750790152', 'img/teacher_img/8.jpg', 1, 0, '2020-09-15 05:54:18', '2020-09-15 05:54:18'),
(9, 'simple present tense', 'guru1@gmail.com', '$2y$10$fonK/fxS..LsbUOo.XRMqeEc9wGdR4Xhvyo7DCsVV2ZjmpjBkeaxu', 'Laki - laki', 'blitar', '2020-12-31', 'blitar', 'Strata 2', 'Universitas Islam Balitar', 'Bahasa Inggris', '081252867991', 'img/teacher_img/9.jpg', 1, 0, '2020-10-05 07:34:30', '2020-10-05 07:34:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbltingkatkelas`
--

CREATE TABLE `tbltingkatkelas` (
  `id` int(2) NOT NULL,
  `jenjang` int(1) NOT NULL,
  `tingkat` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbltingkatkelas`
--

INSERT INTO `tbltingkatkelas` (`id`, `jenjang`, `tingkat`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 2, 1),
(8, 2, 2),
(9, 2, 3),
(10, 3, 1),
(11, 3, 2),
(12, 3, 3),
(13, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbltugas`
--

CREATE TABLE `tbltugas` (
  `id` int(11) NOT NULL,
  `teacher_id` varchar(50) NOT NULL,
  `materi_id` int(11) NOT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `tugas_name` varchar(255) NOT NULL,
  `tugas_konten` longtext NOT NULL,
  `tugas_attachment` varchar(255) DEFAULT NULL,
  `tugas_attachment_ext` varchar(50) DEFAULT NULL,
  `course` varchar(50) NOT NULL,
  `deadline` datetime DEFAULT NULL,
  `tugas_status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltugas`
--

INSERT INTO `tbltugas` (`id`, `teacher_id`, `materi_id`, `id_kelas`, `tugas_name`, `tugas_konten`, `tugas_attachment`, `tugas_attachment_ext`, `course`, `deadline`, `tugas_status`, `created_at`, `updated_at`) VALUES
(7, 'cChAqVbnLR4V', 10, NULL, 'tugas english simple past tense', '<p>[&#39;course&#39;,$id_kursus],</p>', NULL, NULL, 'english', '2020-12-26 16:06:00', 1, '2020-12-11 14:53:28', '2020-12-11 14:53:28'),
(8, 'cChAqVbnLR4V', 16, 2, 'jadi gini', '<p>$kelasSch</p>', 'cChAqVbnLR4V_2020_12_11_03_08_44pm_class.jpg', 'jpg', 'class', '2020-12-26 16:06:00', 1, '2020-12-11 15:08:45', '2020-12-11 15:08:45'),
(9, 'cChAqVbnLR4V', 15, NULL, 'tugas simple past tense 1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, NULL, 'english', '2020-12-26 16:06:00', 1, '2020-12-13 11:15:27', '2020-12-13 11:15:27'),
(10, 'cChAqVbnLR4V', 15, NULL, 'dsfasfa', '<p>m</p>', 'cChAqVbnLR4V_2020_12_13_11_49_52am_english.jpg', 'jpg', 'english', '2020-12-26 16:06:00', 1, '2020-12-13 11:49:53', '2020-12-13 11:49:53'),
(11, 'cChAqVbnLR4V', 20, NULL, 'tugas simple past tense 1 english', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'cChAqVbnLR4V_2020_12_13_01_29_28pm_english.xlsx', 'xlsx', 'english', '2021-01-07 16:02:00', 1, '2020-12-13 13:29:28', '2020-12-13 13:29:28'),
(12, 'cChAqVbnLR4V', 17, 1, 'tugas class', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'cChAqVbnLR4V_2020_12_15_01_22_10pm_class.jpg', 'jpg', 'class', '2020-12-24 14:21:10', 1, '2020-12-15 13:22:10', '2020-12-15 13:22:10'),
(13, 'cChAqVbnLR4V', 20, NULL, 'buat contoh kalimat simple past tense english', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, NULL, 'english', '2021-01-07 13:12:37', 1, '2020-12-24 12:22:08', '2020-12-24 12:22:08'),
(14, 'cChAqVbnLR4V', 20, NULL, 'buat contoh kalimat simple past tense 2 english', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'cChAqVbnLR4V_2020_12_24_12_23_21pm_english.jpg', 'jpg', 'english', '2020-12-24 12:34:00', 1, '2020-12-24 12:23:21', '2020-12-24 12:23:21'),
(15, 'cChAqVbnLR4V', 21, 2, 'ciri cerita pendek', '<p>&#39;deadline&#39;=&gt;$request-&gt;deadline,</p>', NULL, NULL, 'class', '2020-12-31 16:06:00', 1, '2020-12-24 16:06:51', '2020-12-24 16:06:51'),
(16, 'cChAqVbnLR4V', 21, 2, 'buatlah contoh cerita pendek', '<p>&lt;label&gt;Batas Waktu&lt;/label&gt;<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;input type=&quot;datetime-local&quot; name=&quot;deadline&quot; class=&quot;form-control&quot;&gt;</p>', NULL, NULL, 'class', '2020-12-31 15:00:00', 1, '2020-12-26 15:16:11', '2020-12-26 15:16:11'),
(17, 'cChAqVbnLR4V', 21, 2, 'safxxxz', '<p>$request-&gt;date.&#39; &#39;.$request-&gt;time</p>', NULL, NULL, 'class', '2020-12-31 15:17:00', 1, '2020-12-26 15:17:07', '2020-12-26 15:17:07'),
(18, 'cChAqVbnLR4V', 17, 1, 'safxxxz', '<p>m</p>', 'cChAqVbnLR4V_2021_01_13_04_05_45pm_class.jpg', 'jpg', 'class', '2021-01-14 16:05:00', 1, '2021-01-13 16:05:45', '2021-01-13 16:05:45'),
(19, 'cChAqVbnLR4V', 28, NULL, 'contoh tajwid', '<p>cek</p>', 'cChAqVbnLR4V_2021_02_08_01_06_30pm_arab.jpg', 'jpg', 'arab', '2021-02-27 13:06:00', 1, '2021-02-08 13:06:30', '2021-02-08 13:06:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbluas`
--

CREATE TABLE `tbluas` (
  `nis` varchar(255) NOT NULL,
  `nama_siswa` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluas`
--

INSERT INTO `tbluas` (`nis`, `nama_siswa`, `alamat`, `jurusan`) VALUES
('12345', 'Andika putra pradana', 'Malang', 'Rekayasa Perangkat Lunak'),
('12346', 'Ilham Aditya Nugraha', 'Malang', 'Rekayasa Perangkat Lunak');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(11) NOT NULL,
  `id_user` varchar(50) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `UserEmail` varchar(200) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(120) NOT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `agama` varchar(15) DEFAULT NULL,
  `orangtua` varchar(50) DEFAULT NULL,
  `pekerjaan` varchar(45) DEFAULT NULL,
  `jenis_kelamin` enum('0','1') NOT NULL,
  `UserPassword` varchar(200) NOT NULL,
  `UserAvatar` varchar(200) NOT NULL DEFAULT 'default.jpg',
  `fotoKTP` varchar(255) DEFAULT NULL,
  `UserType` int(11) DEFAULT NULL COMMENT '0=guru1=siswa',
  `pendidikan` varchar(255) DEFAULT NULL,
  `universitas` varchar(255) DEFAULT NULL,
  `IsEmailVerified` tinyint(4) NOT NULL DEFAULT 1,
  `UserStatus` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `UserXP` int(11) NOT NULL DEFAULT 0,
  `UserOTP` varchar(100) DEFAULT NULL,
  `UserOTP_b` varchar(100) DEFAULT NULL,
  `online` int(11) NOT NULL DEFAULT 0,
  `email_sent_count` int(11) NOT NULL DEFAULT 0,
  `month_created` int(11) NOT NULL,
  `year_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`id`, `id_user`, `UserName`, `UserEmail`, `tempat_lahir`, `tgl_lahir`, `alamat`, `telp`, `agama`, `orangtua`, `pekerjaan`, `jenis_kelamin`, `UserPassword`, `UserAvatar`, `fotoKTP`, `UserType`, `pendidikan`, `universitas`, `IsEmailVerified`, `UserStatus`, `created_at`, `UserXP`, `UserOTP`, `UserOTP_b`, `online`, `email_sent_count`, `month_created`, `year_created`) VALUES
(1, 'cChAqVbnLR4V', 'Zega Febrianto', 'guru1@gmail.com', 'Malang', '2020-11-06', 'blitar', '081252981231', NULL, NULL, NULL, '1', '$2y$10$Fy/AQC/jNjFHrOq1rfOh9.w9X.wOHNaWV9Xha16lbJ8sO6xaAnYZe', 'CRLDVWjX3cCw.jpg', NULL, 0, '1', 'Universitas Islam Balitar', 1, 1, '2020-10-07 06:43:38', 0, NULL, NULL, 0, 1, 10, 2020),
(6, 'u6KIKFhsAsKB', 'zega febrianto', 'zega@gmail.com', 'blitarian', '1998-02-04', 'blitarian', '081252867991', NULL, 'pujianto', 'wiraswasta', '1', '$2y$10$Cdw.wckkPSbMdgdrMhclpuM8049YEa1yHogyMaDh0yCZvmBO2hW.6', 'u6KIKFhsAsKB.jpg', '1.jpg', 1, NULL, NULL, 1, 1, '2020-11-06 07:35:44', 0, 'u6KIKFhsAsKB', NULL, 1, 1, 11, 2020),
(7, 'WKRVv5j6Uxms', 'guru2', 'guru2@gmail.com', 'blitar', '2020-11-06', 'blitar', '081252981231', NULL, NULL, NULL, '1', '$2y$10$Fy/AQC/jNjFHrOq1rfOh9.w9X.wOHNaWV9Xha16lbJ8sO6xaAnYZe', 'img/teacher_img/7.jpg', NULL, 0, 'Strata 1', 'unisba', 1, 1, '2020-11-06 10:14:00', 0, NULL, NULL, 0, 1, 11, 2020),
(8, 'uaYyJDuCSTIA', 'zega', 'randombox38@gmail.com', 'blitar', '2020-12-13', 'blitar', '081252867991', NULL, 'pujianto', 'wiraswasta', '1', '$2y$10$4jWwV0A.IE9A1YYXWPghMuN7P1jkSb81TDIimaD/YmFeDyUDtl/l2', 'default.jpg', '7.jpg', 1, NULL, NULL, 1, 1, '2020-12-13 07:58:09', 0, 'uaYyJDuCSTIA', NULL, 0, 3, 12, 2020),
(9, 'xW44aO', 'zega', 'coba@gmail.com', 'blitar', '2008-12-31', 'blitar', '081252867991', NULL, 'pujianto', 'wiraswasta', '1', '$2y$10$GIaV1zhFLRzmYvTUC0fMH.Itq7QQMjN720Qq/vI5bvTPX76NGGSC2', 'default.jpg', '8.jpg', 1, NULL, NULL, 1, 1, '2021-01-09 08:39:22', 0, 'xW44aO', NULL, 0, 1, 1, 2021),
(10, 'StpJGu1cgFvk', 'zega', 'zega1@gmail.com', 'blitar', '2006-10-31', 'blitar', '081252867991', NULL, 'pujianto', 'wiraswasta', '1', '$2y$10$wyb7jnPA8rYlUO5ilX9uHelPhBqC7CLFvGuf9H/oLuxVrsPTMnDbq', 'default.jpg', '9.jpg', 1, NULL, NULL, 1, 1, '2021-01-21 07:05:27', 0, 'StpJGu1cgFvk', NULL, 0, 1, 1, 2021),
(12, 'jPt4nDbtZ1RD', 'Oemar Bakri', 'ombak@gmail.com', 'blitar', '2021-02-05', 'blitar', '081081081081', NULL, NULL, NULL, '1', '$2y$10$BnlkDrRnHKm7jMqnNDF.Au1ApQdC5YL9VV5oie.3lsM.BiZHjGDhy', 'img/teacher_img/12.jpg', NULL, 0, 'Strata 2', 'unisba', 1, 1, '2021-02-05 09:08:25', 0, NULL, NULL, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbluseractivity`
--

CREATE TABLE `tbluseractivity` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `activity_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluseractivity`
--

INSERT INTO `tbluseractivity` (`id`, `category`, `activity_id`, `user_id`, `created_at`) VALUES
(1, '3', 'math', 'uaYyJDuCSTIA', '2021-07-12 02:19:08'),
(2, '3', 'class', 'uaYyJDuCSTIA', '2021-07-14 08:22:58'),
(3, '9', '17', 'uaYyJDuCSTIA', '2021-07-15 08:42:42'),
(4, '3', 'class', '1kJWyrcsLucWv6ZU', '2021-07-19 07:46:01'),
(5, '6', 'class', '1kJWyrcsLucWv6ZU', '2021-07-19 08:06:35'),
(6, '3', 'english', 'pv2uu9B7vjCbVcgc', '2021-07-22 06:07:40'),
(7, '9', '20', '1kJWyrcsLucWv6ZU', '2021-07-22 07:08:08'),
(8, '9', '27', '1kJWyrcsLucWv6ZU', '2021-07-22 08:55:08'),
(9, '9', '27', 'pv2uu9B7vjCbVcgc', '2021-07-22 09:01:49'),
(10, '6', 'math', '1kJWyrcsLucWv6ZU', '2021-07-23 08:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbluserclass`
--

CREATE TABLE `tbluserclass` (
  `id` int(11) NOT NULL,
  `kelas_id` int(11) DEFAULT NULL,
  `siswa_id` int(11) NOT NULL,
  `tahun_id` int(3) NOT NULL,
  `jenjang` int(11) NOT NULL,
  `tingkat` int(11) NOT NULL,
  `region` int(11) DEFAULT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 jika bukan, 1 jika ya',
  `indate` datetime NOT NULL DEFAULT current_timestamp(),
  `outdate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbluserclass`
--

INSERT INTO `tbluserclass` (`id`, `kelas_id`, `siswa_id`, `tahun_id`, `jenjang`, `tingkat`, `region`, `aktif`, `indate`, `outdate`) VALUES
(1, 49, 49, 1, 1, 2, NULL, 1, '2020-10-28 15:06:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusernotification`
--

CREATE TABLE `tblusernotification` (
  `NotificationID` int(11) NOT NULL,
  `NotificationContent` varchar(500) NOT NULL,
  `NotificationSenderID` int(11) NOT NULL,
  `NotificationReceiverID` int(11) NOT NULL,
  `NotificationRedirect` varchar(200) NOT NULL,
  `IsRead` tinyint(4) NOT NULL DEFAULT 0,
  `NotificationStatus` tinyint(4) NOT NULL DEFAULT 0,
  `CreatedDateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusernotification`
--

INSERT INTO `tblusernotification` (`NotificationID`, `NotificationContent`, `NotificationSenderID`, `NotificationReceiverID`, `NotificationRedirect`, `IsRead`, `NotificationStatus`, `CreatedDateTime`) VALUES
(1, 'You have been challenged by Jeni Biliyawala in HTML', 2, 1, '/challenge/play/1', 1, 0, '2018-04-10 10:26:35'),
(2, 'harsh.gundecha completed challenge in HTML', 1, 2, '/challenge/1', 1, 0, '2018-04-11 16:22:39'),
(3, 'You have been challenged by Tarun Kakadiya in HTML', 3, 2, '/challenge/play/3', 1, 0, '2018-04-11 23:08:28'),
(4, 'Jeni Biliyawala completed challenge in HTML', 2, 3, '/challenge/3', 1, 0, '2018-04-11 23:09:53'),
(5, 'harsh.gundecha answered your question \" == vs ===', 1, 2, '/ForumQuestion/1#answer-18', 1, 0, '2018-04-12 11:51:14'),
(6, 'harsh.gundecha answered your question \" == vs ===', 1, 2, '/ForumQuestion/1#answer-19', 1, 0, '2018-04-12 11:51:36'),
(7, 'harsh.gundecha answered your question \" == vs ===', 1, 2, '/ForumQuestion/1#answer-20', 1, 0, '2018-04-12 12:01:29'),
(8, 'You have been challenged by harsh.gundecha in HTML', 1, 2, '/challenge/play/4', 1, 0, '2018-04-13 11:56:14'),
(9, 'Jeni Biliyawala completed challenge in HTML', 2, 1, '/challenge/4', 1, 0, '2018-04-13 12:31:55'),
(10, 'harsh.gundecha answered your question \" == vs ===', 1, 2, '/ForumQuestion/1#answer-21', 1, 0, '2018-04-13 12:59:22'),
(11, 'harsh.gundecha answered your question \" == vs ===', 1, 2, '/ForumQuestion/1#answer-22', 1, 0, '2018-04-13 13:00:31'),
(12, 'harsh.gundecha answered your question \" == vs ===', 1, 2, '/ForumQuestion/1#answer-23', 1, 0, '2018-04-13 13:01:21'),
(13, 'You have been challenged by Tarun Kakadiya in HTML', 3, 1, '/challenge/play/5', 1, 0, '2018-04-13 15:34:10'),
(14, 'harsh.gundecha completed challenge in HTML', 1, 3, '/challenge/5', 0, 0, '2018-04-13 15:34:48'),
(15, 'Jeni Biliyawala answered your question \" Harsh', 2, 2, '/ForumQuestion/11#answer-24', 0, 0, '2018-04-17 15:24:08'),
(16, 'Jeni Biliyawala answered your question \" Harsh', 2, 2, '/ForumQuestion/11#answer-25', 0, 0, '2018-04-17 15:25:03'),
(17, 'Jeni Biliyawala answered your question \" Harsh', 2, 2, '/ForumQuestion/11#answer-26', 0, 0, '2018-04-17 15:30:38'),
(18, 'You have been challenged by harsh123 in HTML', 1, 5, '/challenge/play/8', 0, 0, '2020-05-04 20:13:11'),
(19, 'You have been challenged by Rina in HTML', 3, 1, '/challenge/play/2', 0, 0, '2020-06-22 18:58:41'),
(20, 'You have been challenged by Rina in CSS', 3, 1, '/challenge/play/9', 0, 0, '2020-06-22 19:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `tblvideochatroom`
--

CREATE TABLE `tblvideochatroom` (
  `id` int(4) NOT NULL,
  `roomName` varchar(50) NOT NULL,
  `course` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblvideochatroom`
--

INSERT INTO `tblvideochatroom` (`id`, `roomName`, `course`) VALUES
(1, 'jayabayabimbelenglishroomchat', 'english'),
(2, 'jayabayabimbelmathroomchat', 'math');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_classteacher`
--

CREATE TABLE `tbl_classteacher` (
  `id` int(11) NOT NULL,
  `id_teacher` varchar(50) NOT NULL,
  `id_program` varchar(50) NOT NULL,
  `id_kursus` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_classteacher`
--

INSERT INTO `tbl_classteacher` (`id`, `id_teacher`, `id_program`, `id_kursus`, `created_at`) VALUES
(1, 'cChAqVbnLR4V', 'kursus', 'english', '2021-02-05 08:00:26'),
(2, '5tMr1TUDcsBf', 'kursus', 'math', '2021-02-05 08:00:26'),
(4, 'cChAqVbnLR4V', 'class', '2', '2021-02-05 08:00:26'),
(6, 'cChAqVbnLR4V', 'class', '1', '2021-02-05 08:00:26'),
(7, 'WKRVv5j6Uxms', 'class', '3', '2021-02-05 08:00:26'),
(8, 'cChAqVbnLR4V', 'class', '5', '2021-02-05 08:00:26'),
(9, 'WKRVv5j6Uxms', 'class', '1', '2021-02-05 08:00:26'),
(10, 'WKRVv5j6Uxms', 'class', '1', '2021-02-05 08:00:26'),
(11, 'WKRVv5j6Uxms', 'class', '7', '2021-02-05 08:00:26'),
(12, 'cChAqVbnLR4V', 'class', '7', '2021-02-05 08:00:26'),
(13, 'cChAqVbnLR4V', 'class', '6', '2021-02-05 08:00:26'),
(14, 'cChAqVbnLR4V', 'class', '8', '2021-02-05 08:12:38'),
(15, 'jPt4nDbtZ1RD', 'class', '2', '2021-02-05 09:08:25'),
(16, 'cChAqVbnLR4V', 'kursus', 'arab', '2021-02-08 05:20:04'),
(17, 'cChAqVbnLR4V', 'kursus', 'english', '2021-07-12 02:50:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `jenjang` enum('sd','smp','sma') NOT NULL,
  `urutan` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=aktif 0=tidak'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id`, `nama`, `parent_id`, `jenjang`, `urutan`, `aktif`) VALUES
(1, 'KELAS VII', NULL, 'sd', 1, 1),
(2, 'KELAS VII - A', 1, 'sd', 2, 1),
(3, 'KELAS VII - B', 1, 'sd', 3, 1),
(4, 'KELAS VII - C', 1, 'sd', 4, 1),
(5, 'KELAS VII - D', 1, 'sd', 5, 1),
(6, 'KELAS VIII', NULL, 'sd', 6, 1),
(7, 'KELAS VIII - A', 6, 'sd', 7, 1),
(8, 'KELAS VIII - B', 6, 'sd', 8, 1),
(9, 'KELAS VIII - C', 6, 'sd', 9, 1),
(10, 'KELAS VIII - D', 6, 'sd', 10, 1),
(11, 'KELAS IX', NULL, 'sd', 11, 1),
(12, 'KELAS IX - A', 11, 'sd', 12, 1),
(13, 'KELAS IX - B', 11, 'sd', 13, 1),
(14, 'KELAS IX - C', 11, 'sd', 14, 1),
(15, 'KELAS IX - D', 11, 'sd', 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_komen`
--

CREATE TABLE `tbl_komen` (
  `komen_id` int(11) NOT NULL,
  `komen_status` int(11) DEFAULT NULL,
  `komen_nama` varchar(100) DEFAULT NULL,
  `komen_email` varchar(100) DEFAULT NULL,
  `komen_isi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_komen`
--

INSERT INTO `tbl_komen` (`komen_id`, `komen_status`, `komen_nama`, `komen_email`, `komen_isi`) VALUES
(1, 0, 'andi', 'an@gmail.com', 'oskoakso'),
(2, 1, 'koko', 'koko@gmail.com', 'hi'),
(3, 0, 'cok', 'cok@gmail.com', 'opo Cok'),
(4, 3, 'ko', 'ko@gmado.cmo', 'iyo cok'),
(5, 0, '', '', 'km'),
(6, 3, 'ko', 'koko@gmail.com', 'hoi'),
(7, 1, 'jiji', 'jiji@gamk', 'mcsic');

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries`
--

CREATE TABLE `telescope_entries` (
  `sequence` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT 1,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telescope_entries`
--

INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(1, '91c8ef25-356e-4707-8720-388a310573bd', '91c8ef25-878e-4a6c-af82-6769b1609744', '30e170c5ba9f54d116ac468622fc4b44', 0, 'exception', '{\"class\":\"Illuminate\\\\Database\\\\QueryException\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\",\"line\":671,\"message\":\"SQLSTATE[42000]: Syntax error or access violation: 1071 Specified key was too long; max key length is 767 bytes (SQL: alter table `telescope_entries` add index `telescope_entries_family_hash_index`(`family_hash`))\",\"context\":null,\"trace\":[{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\",\"line\":631},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\",\"line\":465},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Schema\\\\Blueprint.php\",\"line\":103},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Schema\\\\Builder.php\",\"line\":323},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Schema\\\\Builder.php\",\"line\":200},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\telescope\\\\src\\\\Storage\\\\migrations\\\\2018_08_08_100000_create_telescope_entries_table.php\",\"line\":58},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":392},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":401},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":200},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":165},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":110},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Console\\\\Migrations\\\\MigrateCommand.php\",\"line\":85},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":541},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Console\\\\Migrations\\\\MigrateCommand.php\",\"line\":94},[],{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\BoundMethod.php\",\"line\":37},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\Util.php\",\"line\":40},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\BoundMethod.php\",\"line\":95},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\BoundMethod.php\",\"line\":39},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\Container.php\",\"line\":596},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Console\\\\Command.php\",\"line\":136},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\symfony\\\\console\\\\Command\\\\Command.php\",\"line\":258},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Console\\\\Command.php\",\"line\":121},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":920},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":266},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":142},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Console\\\\Application.php\",\"line\":93},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Console\\\\Kernel.php\",\"line\":129},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\artisan\",\"line\":37}],\"line_preview\":{\"662\":\"        \\/\\/ took to execute and log the query SQL, bindings and time in our memory.\",\"663\":\"        try {\",\"664\":\"            $result = $callback($query, $bindings);\",\"665\":\"        }\",\"666\":\"\",\"667\":\"        \\/\\/ If an exception occurs when attempting to run a query, we\'ll format the error\",\"668\":\"        \\/\\/ message to include the bindings with SQL, which will make this exception a\",\"669\":\"        \\/\\/ lot more helpful to the developer instead of just the database\'s errors.\",\"670\":\"        catch (Exception $e) {\",\"671\":\"            throw new QueryException(\",\"672\":\"                $query, $this->prepareBindings($bindings), $e\",\"673\":\"            );\",\"674\":\"        }\",\"675\":\"\",\"676\":\"        return $result;\",\"677\":\"    }\",\"678\":\"\",\"679\":\"    \\/**\",\"680\":\"     * Log a query in the connection\'s query log.\",\"681\":\"     *\"},\"hostname\":\"zegapc\",\"occurrences\":1}', '2020-10-17 15:05:16'),
(2, '91c8ef22-52ea-4955-a529-631441e45b7e', '91c8ef25-878e-4a6c-af82-6769b1609744', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'ci_jayabaya\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"351.63\",\"slow\":true,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\artisan\",\"line\":37,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"zegapc\"}', '2020-10-17 15:05:14'),
(3, '91c8ef22-5acd-45f3-9d80-c4dbbcbfa68c', '91c8ef25-878e-4a6c-af82-6769b1609744', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'ci_jayabaya\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"1.06\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\artisan\",\"line\":37,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"zegapc\"}', '2020-10-17 15:05:14'),
(4, '91c8ef22-784f-47fd-8a18-7e02ab8f0463', '91c8ef25-878e-4a6c-af82-6769b1609744', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"74.43\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\artisan\",\"line\":37,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"zegapc\"}', '2020-10-17 15:05:15'),
(5, '91c8ef22-8263-46a6-965d-f7c10bc590a3', '91c8ef25-878e-4a6c-af82-6769b1609744', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"0.75\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\artisan\",\"line\":37,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"zegapc\"}', '2020-10-17 15:05:15'),
(6, '91c8ef22-94f1-4888-84f0-9bfe5f00c555', '91c8ef25-878e-4a6c-af82-6769b1609744', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`batch`) as aggregate from `migrations`\",\"time\":\"9.41\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\artisan\",\"line\":37,\"hash\":\"06e60d7b3d1a0c2de504de4e6f27735e\",\"hostname\":\"zegapc\"}', '2020-10-17 15:05:15'),
(7, '91c8ef24-4d98-443b-bfb4-543ff7b20f7a', '91c8ef25-878e-4a6c-af82-6769b1609744', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `telescope_entries` (`sequence` bigint unsigned not null auto_increment primary key, `uuid` char(36) not null, `batch_id` char(36) not null, `family_hash` varchar(255) null, `should_display_on_index` tinyint(1) not null default \'1\', `type` varchar(20) not null, `content` longtext not null, `created_at` datetime null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"1060.27\",\"slow\":true,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\artisan\",\"line\":37,\"hash\":\"d9429550f8856c1af1c89f24a6440cb5\",\"hostname\":\"zegapc\"}', '2020-10-17 15:05:16'),
(8, '91c8ef24-c401-48fc-9e58-c5bc5126d1b1', '91c8ef25-878e-4a6c-af82-6769b1609744', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add unique `telescope_entries_uuid_unique`(`uuid`)\",\"time\":\"301.99\",\"slow\":true,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\artisan\",\"line\":37,\"hash\":\"9fb859ae1faff74c6b9e0b70dfd8eea9\",\"hostname\":\"zegapc\"}', '2020-10-17 15:05:16'),
(9, '91c8ef25-1348-4c0f-bb89-8e5a297e2c08', '91c8ef25-878e-4a6c-af82-6769b1609744', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_batch_id_index`(`batch_id`)\",\"time\":\"201.83\",\"slow\":true,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\artisan\",\"line\":37,\"hash\":\"2b075509a9242d6e3f622536c5ccca07\",\"hostname\":\"zegapc\"}', '2020-10-17 15:05:16'),
(10, '91c8f242-710a-4a7d-abb1-8bc612c3d0fc', '91c8f243-2e44-41c5-add8-273d4c9a0a61', NULL, 1, 'view', '{\"name\":\"errors::404\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/404.blade.php\",\"data\":[\"exception\"],\"hostname\":\"zegapc\"}', '2020-10-17 15:13:59'),
(11, '91c8f243-15c1-4f72-b3cc-52946332e756', '91c8f243-2e44-41c5-add8-273d4c9a0a61', NULL, 1, 'view', '{\"name\":\"errors::minimal\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/minimal.blade.php\",\"data\":[\"exception\"],\"hostname\":\"zegapc\"}', '2020-10-17 15:13:59'),
(12, '91c8f243-2d79-46c8-9ec5-f3d95a8bcfc1', '91c8f243-2e44-41c5-add8-273d4c9a0a61', NULL, 1, 'request', '{\"ip_address\":\"::1\",\"uri\":\"\\/email\\/telescope\",\"method\":\"GET\",\"controller_action\":null,\"middleware\":[],\"headers\":{\"host\":\"localhost\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko\\/20100101 Firefox\\/81.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,*\\/*;q=0.8\",\"accept-language\":\"en-US,en;q=0.5\",\"accept-encoding\":\"gzip, deflate\",\"connection\":\"keep-alive\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6InpsMWZYM3dycjZid2l2QTZPRWF0VFE9PSIsInZhbHVlIjoiUXgzaVo4UTg3N3NtQU5QUUp2Rzl5TFNxbkptVU5LYnFxMmhWdUpZVWxMZG5aaTRKRVZqeFc2Qk9HbWVmUDUwTDk3d0cwbzJpNU9DVWZLYXJoSXIrSXNBMTBBenVVQnN0dUN4dUZGTEZJejM1MElwWG8waGVhTWVoL2RFeFl0dW8iLCJtYWMiOiI3NTFjZTZmYjE0YTNkZGNkMWM2MGU5ZTg4NjkwOWNjYzI4YmI3NTU2NTQwNGM3MWNkYmFmZTM3ZmEwYmMwMThiIn0%3D; laravel_session=eyJpdiI6IjhrWVIrRzA0Q0dOSkUyR21QZ3lZdkE9PSIsInZhbHVlIjoiVmYrSG5DVVI0QTNtbDJzSWZSZjlxUnFNQklDK1VqZG5SY3Z5UVlPUE9JK1VHNUgremh2bkJzUlRMVk5vZXNjNlc3MGRvdFR0WEMwT1VrYmhCTXNWaHRvUTB2ZUYxRXp1V1NmT3pCVFNwM21pUGg1bmRPanZIclNSUUNIQWl2TVkiLCJtYWMiOiI2ZTE3ZmI2ZDQwMTVjYzYyYzdlYzRjOTM2NzdjZjUyNjc3NjQ5ZGMwZWZkNzRlMmZkNjYxNTFjODI1NWQwYjdjIn0%3D\",\"upgrade-insecure-requests\":\"1\"},\"payload\":[],\"session\":[],\"response_status\":404,\"response\":\"HTML Response\",\"duration\":1663,\"memory\":10,\"hostname\":\"zegapc\"}', '2020-10-17 15:13:59'),
(13, '91c8f374-fc71-4617-b10e-f4099b897db8', '91c8f375-d46c-4cd7-ac53-3107b63eed51', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tblpartnership`\",\"time\":\"83.73\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":18,\"hash\":\"77aa2cbab5f6c73f0b1dfe29763108ce\",\"hostname\":\"zegapc\"}', '2020-10-17 15:17:20'),
(14, '91c8f375-035e-47b0-b48b-7a9c5f6b923f', '91c8f375-d46c-4cd7-ac53-3107b63eed51', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tbluser`\",\"time\":\"0.90\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":19,\"hash\":\"8bc58e25f7f628eac03bbbfc907e8ee3\",\"hostname\":\"zegapc\"}', '2020-10-17 15:17:20'),
(15, '91c8f375-0b96-4423-8c35-24e4fc36a83b', '91c8f375-d46c-4cd7-ac53-3107b63eed51', NULL, 1, 'view', '{\"name\":\"send_email\",\"path\":\"\\\\resources\\\\views\\/send_email.blade.php\",\"data\":[\"all_user\",\"partner\"],\"hostname\":\"zegapc\"}', '2020-10-17 15:17:20'),
(16, '91c8f375-d2ff-4eca-8eb0-dd65cf1c62d4', '91c8f375-d46c-4cd7-ac53-3107b63eed51', NULL, 1, 'request', '{\"ip_address\":\"::1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\EmailController@index\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko\\/20100101 Firefox\\/81.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,*\\/*;q=0.8\",\"accept-language\":\"en-US,en;q=0.5\",\"accept-encoding\":\"gzip, deflate\",\"connection\":\"keep-alive\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6InpsMWZYM3dycjZid2l2QTZPRWF0VFE9PSIsInZhbHVlIjoiUXgzaVo4UTg3N3NtQU5QUUp2Rzl5TFNxbkptVU5LYnFxMmhWdUpZVWxMZG5aaTRKRVZqeFc2Qk9HbWVmUDUwTDk3d0cwbzJpNU9DVWZLYXJoSXIrSXNBMTBBenVVQnN0dUN4dUZGTEZJejM1MElwWG8waGVhTWVoL2RFeFl0dW8iLCJtYWMiOiI3NTFjZTZmYjE0YTNkZGNkMWM2MGU5ZTg4NjkwOWNjYzI4YmI3NTU2NTQwNGM3MWNkYmFmZTM3ZmEwYmMwMThiIn0%3D; laravel_session=eyJpdiI6IjhrWVIrRzA0Q0dOSkUyR21QZ3lZdkE9PSIsInZhbHVlIjoiVmYrSG5DVVI0QTNtbDJzSWZSZjlxUnFNQklDK1VqZG5SY3Z5UVlPUE9JK1VHNUgremh2bkJzUlRMVk5vZXNjNlc3MGRvdFR0WEMwT1VrYmhCTXNWaHRvUTB2ZUYxRXp1V1NmT3pCVFNwM21pUGg1bmRPanZIclNSUUNIQWl2TVkiLCJtYWMiOiI2ZTE3ZmI2ZDQwMTVjYzYyYzdlYzRjOTM2NzdjZjUyNjc3NjQ5ZGMwZWZkNzRlMmZkNjYxNTFjODI1NWQwYjdjIn0%3D\",\"upgrade-insecure-requests\":\"1\"},\"payload\":[],\"session\":{\"_token\":\"O3jJ8u1HwdAwGq5Ey74ulZzLYri16v9STGSpIp4F\",\"_previous\":{\"url\":\"http:\\/\\/localhost\\/email\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\resources\\\\views\\/send_email.blade.php\",\"data\":{\"all_user\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":38,\"UserName\":\"zega febrianto\",\"UserEmail\":\"randombox38@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-08-31\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$QAiuuj420chlrISOvxmrJe5acaql8fjXjI6YucMWrDoFOFoWWfmLG\",\"UserAvatar\":\"38.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/4.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-08-31 16:33:39\",\"UserXP\":0,\"UserOTP\":\"EIDNRc\",\"UserOTP_b\":null,\"online\":0},{\"id\":42,\"UserName\":\"zega febriantoro\",\"UserEmail\":\"xegalol@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-01\",\"alamat\":\"jalan bengawan solo gg 6 no 19 rt 5 rw 3\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$vZ.Up7wtjVSwM6gfxU1u9.PLwhAHlN.ORNTWeymAzJlGFm4sUtnyq\",\"UserAvatar\":\"42.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/38.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-01 15:01:38\",\"UserXP\":0,\"UserOTP\":\"mK0Igk\",\"UserOTP_b\":\"lsgTuZUr\",\"online\":1},{\"id\":43,\"UserName\":\"zega febrianti\",\"UserEmail\":\"randombox381@gmail.com\",\"tempat_lahir\":\"Malang\",\"tgl_lahir\":\"2020-09-06\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"Pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$jy5C1BXHzcT0GcZpuFsrtuCvFWBpuq88LgTlu.LIv7ucjOPEiXYCG\",\"UserAvatar\":\"43.jpg\",\"fotoKTP\":\"42.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:35:40\",\"UserXP\":0,\"UserOTP\":\"hLryDa\",\"UserOTP_b\":null,\"online\":0},{\"id\":44,\"UserName\":\"Sugeng\",\"UserEmail\":\"randombox382@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-11\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$2V5rEESI9vzUYHKIoTq4xeJL6j4NzpO4YtDOTMGQgrofmdQ1E5JPO\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"43.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:38:03\",\"UserXP\":0,\"UserOTP\":\"pGQkXd\",\"UserOTP_b\":null,\"online\":0},{\"id\":45,\"UserName\":\"Almira\",\"UserEmail\":\"almira@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081098120929\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$.5o2VXmibXwYLf\\/GA3Byru4y\\/shrSTnIMA9pVPWqsmJqUunP0g5eK\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"44.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 14:44:21\",\"UserXP\":0,\"UserOTP\":\"a8FS0Y\",\"UserOTP_b\":null,\"online\":0},{\"id\":46,\"UserName\":\"Zsa zsa\",\"UserEmail\":\"zsa@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"garum\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"bapak zsazsa\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$hNTW2nW12vM6UJL4uFWZMOiNa9hO\\/sISZJqALlP8U3N51lgEw33jm\",\"UserAvatar\":\"46.jpg\",\"fotoKTP\":\"45.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 15:29:17\",\"UserXP\":0,\"UserOTP\":\"VCm7jE\",\"UserOTP_b\":null,\"online\":0},{\"id\":47,\"UserName\":\"Deddy Corbuzier\",\"UserEmail\":\"dedy@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-10-02\",\"alamat\":\"jalan rambutan\",\"telp\":\"081081081081\",\"agama\":null,\"orangtua\":\"bapak dedy\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$KU3ilDF9DkCzzFn3yW4yfOoywoZElfpMuomGab2IQG8YhQFA5ruU6\",\"UserAvatar\":\"47.jpg\",\"fotoKTP\":\"46.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-10-02 13:50:29\",\"UserXP\":0,\"UserOTP\":\"LgwpRK\",\"UserOTP_b\":null,\"online\":0}]},\"partner\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":1,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"9999\",\"alamat\":\"Kediri\",\"kepala\":\"Rohmat\",\"telpkepala\":\"888\",\"fotoKTP\":\"2\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":2,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"io\",\"alamat\":\"jojo\",\"kepala\":\"oojo\",\"telpkepala\":\"ooko\",\"fotoKTP\":\"909356294\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":3,\"instansi\":\"SMP negeri 5 kediri\",\"telpinstansi\":\"1111\",\"alamat\":\"Kediri\",\"kepala\":\"JIto\",\"telpkepala\":\"777\",\"fotoKTP\":\"8103b2331649b0521d687def5ed52fe7.png\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":4,\"instansi\":\"SD\",\"telpinstansi\":\"999\",\"alamat\":\"jkjkjk\",\"kepala\":\"9i9\",\"telpkepala\":\"kkoko\",\"fotoKTP\":\"b8baf9999b5ee6f75fb45e5f1039b409.PNG\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":5,\"instansi\":\"hoho\",\"telpinstansi\":\"88\",\"alamat\":\"ininini\",\"kepala\":\"ninini\",\"telpkepala\":\"55\",\"fotoKTP\":\"157599be8731e313424dff83d19b3048.jpg\",\"program\":\"english,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":6,\"instansi\":\"CV. Astar\",\"telpinstansi\":\"81252867991\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"9872148798\",\"fotoKTP\":\"CV. Astar_zega_4M1qTz.jpg\",\"program\":\"CV. Astar\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:32:59\"},{\"id\":7,\"instansi\":\"CV. Astar 2\",\"telpinstansi\":\"1234123412\",\"alamat\":\"jl bengawan solo gg 6 no 20\",\"kepala\":\"zega\",\"telpkepala\":\"12314124124\",\"fotoKTP\":\"CV. Astar 2_zega_R2rzTW.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:36:15\"},{\"id\":8,\"instansi\":\"zega\",\"telpinstansi\":\"12313123\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"124124124\",\"fotoKTP\":\"zega_zega_oxPmRS.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:37:59\"},{\"id\":9,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"097987124\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"087214970\",\"fotoKTP\":\"CV. Curiculum Vitae_zega_534M4O.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:42:21\"},{\"id\":10,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"102920947\",\"alamat\":\"jl bengawan solo gg 6 no 192\",\"kepala\":\"Pak\",\"telpkepala\":\"9812398498124\",\"fotoKTP\":\"CV. Curiculum Vitae_Pak_M029MS.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-05 13:30:20\"}]}}},\"duration\":1311,\"memory\":6,\"hostname\":\"zegapc\"}', '2020-10-17 15:17:20'),
(17, '91c8f497-bddf-4225-9c7a-67cb68e28cf6', '91c8f497-cf9d-4600-b936-0d551c4dc268', NULL, 1, 'view', '{\"name\":\"errors::404\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/404.blade.php\",\"data\":[\"exception\"],\"hostname\":\"zegapc\"}', '2020-10-17 15:20:30'),
(18, '91c8f497-cbcc-416e-9d3f-6effaae75e81', '91c8f497-cf9d-4600-b936-0d551c4dc268', NULL, 1, 'view', '{\"name\":\"errors::minimal\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/minimal.blade.php\",\"data\":[\"exception\"],\"hostname\":\"zegapc\"}', '2020-10-17 15:20:30'),
(19, '91c8f497-ccce-4b08-bf70-93cd0de24a7a', '91c8f497-cf9d-4600-b936-0d551c4dc268', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/email\",\"method\":\"GET\",\"controller_action\":null,\"middleware\":[],\"headers\":{\"host\":\"127.0.0.1:8000\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko\\/20100101 Firefox\\/81.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,*\\/*;q=0.8\",\"accept-language\":\"en-US,en;q=0.5\",\"accept-encoding\":\"gzip, deflate\",\"connection\":\"keep-alive\",\"upgrade-insecure-requests\":\"1\",\"cache-control\":\"max-age=0\"},\"payload\":[],\"session\":[],\"response_status\":404,\"response\":\"HTML Response\",\"duration\":582,\"memory\":18,\"hostname\":\"zegapc\"}', '2020-10-17 15:20:30'),
(20, '91c8f4a0-a7cd-4709-999a-039440ee8a07', '91c8f4a0-ff94-4a2c-a7b9-79b26f7b90a8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tblpartnership`\",\"time\":\"1.41\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":18,\"hash\":\"77aa2cbab5f6c73f0b1dfe29763108ce\",\"hostname\":\"zegapc\"}', '2020-10-17 15:20:36'),
(21, '91c8f4a0-e91e-4785-b7f5-d33ea4da38fa', '91c8f4a0-ff94-4a2c-a7b9-79b26f7b90a8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tbluser`\",\"time\":\"153.44\",\"slow\":true,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":19,\"hash\":\"8bc58e25f7f628eac03bbbfc907e8ee3\",\"hostname\":\"zegapc\"}', '2020-10-17 15:20:36'),
(22, '91c8f4a0-ec8f-4393-8373-b91efc935d87', '91c8f4a0-ff94-4a2c-a7b9-79b26f7b90a8', NULL, 1, 'view', '{\"name\":\"send_email\",\"path\":\"\\\\resources\\\\views\\/send_email.blade.php\",\"data\":[\"all_user\",\"partner\"],\"hostname\":\"zegapc\"}', '2020-10-17 15:20:36'),
(23, '91c8f4a0-fe5d-432f-b7cd-2afe3a725191', '91c8f4a0-ff94-4a2c-a7b9-79b26f7b90a8', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\EmailController@index\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko\\/20100101 Firefox\\/81.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,*\\/*;q=0.8\",\"accept-language\":\"en-US,en;q=0.5\",\"accept-encoding\":\"gzip, deflate\",\"connection\":\"keep-alive\",\"upgrade-insecure-requests\":\"1\"},\"payload\":[],\"session\":{\"_token\":\"M34xw3tkR3jlMZGvCElZQCTWWyY02uOFPyeUHruZ\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\resources\\\\views\\/send_email.blade.php\",\"data\":{\"all_user\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":38,\"UserName\":\"zega febrianto\",\"UserEmail\":\"randombox38@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-08-31\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$QAiuuj420chlrISOvxmrJe5acaql8fjXjI6YucMWrDoFOFoWWfmLG\",\"UserAvatar\":\"38.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/4.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-08-31 16:33:39\",\"UserXP\":0,\"UserOTP\":\"EIDNRc\",\"UserOTP_b\":null,\"online\":0},{\"id\":42,\"UserName\":\"zega febriantoro\",\"UserEmail\":\"xegalol@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-01\",\"alamat\":\"jalan bengawan solo gg 6 no 19 rt 5 rw 3\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$vZ.Up7wtjVSwM6gfxU1u9.PLwhAHlN.ORNTWeymAzJlGFm4sUtnyq\",\"UserAvatar\":\"42.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/38.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-01 15:01:38\",\"UserXP\":0,\"UserOTP\":\"mK0Igk\",\"UserOTP_b\":\"lsgTuZUr\",\"online\":1},{\"id\":43,\"UserName\":\"zega febrianti\",\"UserEmail\":\"randombox381@gmail.com\",\"tempat_lahir\":\"Malang\",\"tgl_lahir\":\"2020-09-06\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"Pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$jy5C1BXHzcT0GcZpuFsrtuCvFWBpuq88LgTlu.LIv7ucjOPEiXYCG\",\"UserAvatar\":\"43.jpg\",\"fotoKTP\":\"42.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:35:40\",\"UserXP\":0,\"UserOTP\":\"hLryDa\",\"UserOTP_b\":null,\"online\":0},{\"id\":44,\"UserName\":\"Sugeng\",\"UserEmail\":\"randombox382@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-11\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$2V5rEESI9vzUYHKIoTq4xeJL6j4NzpO4YtDOTMGQgrofmdQ1E5JPO\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"43.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:38:03\",\"UserXP\":0,\"UserOTP\":\"pGQkXd\",\"UserOTP_b\":null,\"online\":0},{\"id\":45,\"UserName\":\"Almira\",\"UserEmail\":\"almira@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081098120929\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$.5o2VXmibXwYLf\\/GA3Byru4y\\/shrSTnIMA9pVPWqsmJqUunP0g5eK\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"44.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 14:44:21\",\"UserXP\":0,\"UserOTP\":\"a8FS0Y\",\"UserOTP_b\":null,\"online\":0},{\"id\":46,\"UserName\":\"Zsa zsa\",\"UserEmail\":\"zsa@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"garum\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"bapak zsazsa\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$hNTW2nW12vM6UJL4uFWZMOiNa9hO\\/sISZJqALlP8U3N51lgEw33jm\",\"UserAvatar\":\"46.jpg\",\"fotoKTP\":\"45.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 15:29:17\",\"UserXP\":0,\"UserOTP\":\"VCm7jE\",\"UserOTP_b\":null,\"online\":0},{\"id\":47,\"UserName\":\"Deddy Corbuzier\",\"UserEmail\":\"dedy@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-10-02\",\"alamat\":\"jalan rambutan\",\"telp\":\"081081081081\",\"agama\":null,\"orangtua\":\"bapak dedy\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$KU3ilDF9DkCzzFn3yW4yfOoywoZElfpMuomGab2IQG8YhQFA5ruU6\",\"UserAvatar\":\"47.jpg\",\"fotoKTP\":\"46.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-10-02 13:50:29\",\"UserXP\":0,\"UserOTP\":\"LgwpRK\",\"UserOTP_b\":null,\"online\":0}]},\"partner\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":1,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"9999\",\"alamat\":\"Kediri\",\"kepala\":\"Rohmat\",\"telpkepala\":\"888\",\"fotoKTP\":\"2\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":2,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"io\",\"alamat\":\"jojo\",\"kepala\":\"oojo\",\"telpkepala\":\"ooko\",\"fotoKTP\":\"909356294\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":3,\"instansi\":\"SMP negeri 5 kediri\",\"telpinstansi\":\"1111\",\"alamat\":\"Kediri\",\"kepala\":\"JIto\",\"telpkepala\":\"777\",\"fotoKTP\":\"8103b2331649b0521d687def5ed52fe7.png\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":4,\"instansi\":\"SD\",\"telpinstansi\":\"999\",\"alamat\":\"jkjkjk\",\"kepala\":\"9i9\",\"telpkepala\":\"kkoko\",\"fotoKTP\":\"b8baf9999b5ee6f75fb45e5f1039b409.PNG\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":5,\"instansi\":\"hoho\",\"telpinstansi\":\"88\",\"alamat\":\"ininini\",\"kepala\":\"ninini\",\"telpkepala\":\"55\",\"fotoKTP\":\"157599be8731e313424dff83d19b3048.jpg\",\"program\":\"english,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":6,\"instansi\":\"CV. Astar\",\"telpinstansi\":\"81252867991\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"9872148798\",\"fotoKTP\":\"CV. Astar_zega_4M1qTz.jpg\",\"program\":\"CV. Astar\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:32:59\"},{\"id\":7,\"instansi\":\"CV. Astar 2\",\"telpinstansi\":\"1234123412\",\"alamat\":\"jl bengawan solo gg 6 no 20\",\"kepala\":\"zega\",\"telpkepala\":\"12314124124\",\"fotoKTP\":\"CV. Astar 2_zega_R2rzTW.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:36:15\"},{\"id\":8,\"instansi\":\"zega\",\"telpinstansi\":\"12313123\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"124124124\",\"fotoKTP\":\"zega_zega_oxPmRS.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:37:59\"},{\"id\":9,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"097987124\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"087214970\",\"fotoKTP\":\"CV. Curiculum Vitae_zega_534M4O.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:42:21\"},{\"id\":10,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"102920947\",\"alamat\":\"jl bengawan solo gg 6 no 192\",\"kepala\":\"Pak\",\"telpkepala\":\"9812398498124\",\"fotoKTP\":\"CV. Curiculum Vitae_Pak_M029MS.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-05 13:30:20\"}]}}},\"duration\":550,\"memory\":10,\"hostname\":\"zegapc\"}', '2020-10-17 15:20:36'),
(24, '91c8f4af-64e0-4c44-8f6f-a1da4a4900a8', '91c8f4af-7a35-4ae2-995b-23b771568db0', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tblpartnership`\",\"time\":\"1.55\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":18,\"hash\":\"77aa2cbab5f6c73f0b1dfe29763108ce\",\"hostname\":\"zegapc\"}', '2020-10-17 15:20:46'),
(25, '91c8f4af-6d38-4820-83ab-cc4a99bc70e7', '91c8f4af-7a35-4ae2-995b-23b771568db0', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tbluser`\",\"time\":\"0.82\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":19,\"hash\":\"8bc58e25f7f628eac03bbbfc907e8ee3\",\"hostname\":\"zegapc\"}', '2020-10-17 15:20:46'),
(26, '91c8f4af-714c-4236-a5a5-6145cd0dde90', '91c8f4af-7a35-4ae2-995b-23b771568db0', NULL, 1, 'view', '{\"name\":\"send_email\",\"path\":\"\\\\resources\\\\views\\/send_email.blade.php\",\"data\":[\"all_user\",\"partner\"],\"hostname\":\"zegapc\"}', '2020-10-17 15:20:46'),
(27, '91c8f4af-77db-42cf-9465-2e9e6e5033fa', '91c8f4af-7a35-4ae2-995b-23b771568db0', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\EmailController@index\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko\\/20100101 Firefox\\/81.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,*\\/*;q=0.8\",\"accept-language\":\"en-US,en;q=0.5\",\"accept-encoding\":\"gzip, deflate\",\"connection\":\"keep-alive\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6Ik5CZExaWEVoZy80VDBHY0xLREpoN2c9PSIsInZhbHVlIjoiZTJrMkxPWTUyM0YyL1pRVjNXUDRwUGRJQ0thK2YycTVTN1pVNk1TbjBXWG5wN2MrVEF4c2NYcWd2cUxYK0NKbjQzcjV0blM1Z3hSbnFYOHRGMTkyN2FCUkI4eVUxQTA4djdab1E0MEpSa21MbXpnOW5SRkZQYVFkdyt4a3h0TEIiLCJtYWMiOiI5ZmQxMjc4ZDg3ZmQ4NTY4M2E1OTVjNDYzMTkyN2E4Mzc4OTA0OTU3Mzc2Mjk3MzdmNmQzN2JjNGZiNTI5Y2NhIn0%3D; laravel_session=eyJpdiI6IkxyZkNtWDllWkRLVTRrNWFmdDVReHc9PSIsInZhbHVlIjoiZ2FwL2FaL2VIODE4Vm9CL29CeUJNZjN1Ymx4RFlWNDlPdGdhdHlhRHJpbk9nRlg3Y1dGMlJ5eGp5aHZHMHhJaWd5UFJSb3I3dnJmUnNaKzFQaDE3a1pPbjBLb2RmWlpGdHFHQ0FBaG5tdzJsUlNmMUdyWU1WSXI1OWJSSitDVTIiLCJtYWMiOiI2NDAzNTE2NWU1NmU3YTg0NmM5Y2JiYWQ4YTk2YTBiZTU0ZTEzZjExZWVjZDA1ZWVmZmVkYmZmOWJkYjFmZWIzIn0%3D\",\"upgrade-insecure-requests\":\"1\",\"cache-control\":\"max-age=0\"},\"payload\":[],\"session\":{\"_token\":\"M34xw3tkR3jlMZGvCElZQCTWWyY02uOFPyeUHruZ\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\resources\\\\views\\/send_email.blade.php\",\"data\":{\"all_user\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":38,\"UserName\":\"zega febrianto\",\"UserEmail\":\"randombox38@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-08-31\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$QAiuuj420chlrISOvxmrJe5acaql8fjXjI6YucMWrDoFOFoWWfmLG\",\"UserAvatar\":\"38.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/4.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-08-31 16:33:39\",\"UserXP\":0,\"UserOTP\":\"EIDNRc\",\"UserOTP_b\":null,\"online\":0},{\"id\":42,\"UserName\":\"zega febriantoro\",\"UserEmail\":\"xegalol@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-01\",\"alamat\":\"jalan bengawan solo gg 6 no 19 rt 5 rw 3\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$vZ.Up7wtjVSwM6gfxU1u9.PLwhAHlN.ORNTWeymAzJlGFm4sUtnyq\",\"UserAvatar\":\"42.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/38.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-01 15:01:38\",\"UserXP\":0,\"UserOTP\":\"mK0Igk\",\"UserOTP_b\":\"lsgTuZUr\",\"online\":1},{\"id\":43,\"UserName\":\"zega febrianti\",\"UserEmail\":\"randombox381@gmail.com\",\"tempat_lahir\":\"Malang\",\"tgl_lahir\":\"2020-09-06\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"Pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$jy5C1BXHzcT0GcZpuFsrtuCvFWBpuq88LgTlu.LIv7ucjOPEiXYCG\",\"UserAvatar\":\"43.jpg\",\"fotoKTP\":\"42.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:35:40\",\"UserXP\":0,\"UserOTP\":\"hLryDa\",\"UserOTP_b\":null,\"online\":0},{\"id\":44,\"UserName\":\"Sugeng\",\"UserEmail\":\"randombox382@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-11\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$2V5rEESI9vzUYHKIoTq4xeJL6j4NzpO4YtDOTMGQgrofmdQ1E5JPO\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"43.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:38:03\",\"UserXP\":0,\"UserOTP\":\"pGQkXd\",\"UserOTP_b\":null,\"online\":0},{\"id\":45,\"UserName\":\"Almira\",\"UserEmail\":\"almira@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081098120929\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$.5o2VXmibXwYLf\\/GA3Byru4y\\/shrSTnIMA9pVPWqsmJqUunP0g5eK\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"44.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 14:44:21\",\"UserXP\":0,\"UserOTP\":\"a8FS0Y\",\"UserOTP_b\":null,\"online\":0},{\"id\":46,\"UserName\":\"Zsa zsa\",\"UserEmail\":\"zsa@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"garum\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"bapak zsazsa\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$hNTW2nW12vM6UJL4uFWZMOiNa9hO\\/sISZJqALlP8U3N51lgEw33jm\",\"UserAvatar\":\"46.jpg\",\"fotoKTP\":\"45.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 15:29:17\",\"UserXP\":0,\"UserOTP\":\"VCm7jE\",\"UserOTP_b\":null,\"online\":0},{\"id\":47,\"UserName\":\"Deddy Corbuzier\",\"UserEmail\":\"dedy@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-10-02\",\"alamat\":\"jalan rambutan\",\"telp\":\"081081081081\",\"agama\":null,\"orangtua\":\"bapak dedy\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$KU3ilDF9DkCzzFn3yW4yfOoywoZElfpMuomGab2IQG8YhQFA5ruU6\",\"UserAvatar\":\"47.jpg\",\"fotoKTP\":\"46.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-10-02 13:50:29\",\"UserXP\":0,\"UserOTP\":\"LgwpRK\",\"UserOTP_b\":null,\"online\":0}]},\"partner\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":1,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"9999\",\"alamat\":\"Kediri\",\"kepala\":\"Rohmat\",\"telpkepala\":\"888\",\"fotoKTP\":\"2\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":2,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"io\",\"alamat\":\"jojo\",\"kepala\":\"oojo\",\"telpkepala\":\"ooko\",\"fotoKTP\":\"909356294\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":3,\"instansi\":\"SMP negeri 5 kediri\",\"telpinstansi\":\"1111\",\"alamat\":\"Kediri\",\"kepala\":\"JIto\",\"telpkepala\":\"777\",\"fotoKTP\":\"8103b2331649b0521d687def5ed52fe7.png\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":4,\"instansi\":\"SD\",\"telpinstansi\":\"999\",\"alamat\":\"jkjkjk\",\"kepala\":\"9i9\",\"telpkepala\":\"kkoko\",\"fotoKTP\":\"b8baf9999b5ee6f75fb45e5f1039b409.PNG\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":5,\"instansi\":\"hoho\",\"telpinstansi\":\"88\",\"alamat\":\"ininini\",\"kepala\":\"ninini\",\"telpkepala\":\"55\",\"fotoKTP\":\"157599be8731e313424dff83d19b3048.jpg\",\"program\":\"english,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":6,\"instansi\":\"CV. Astar\",\"telpinstansi\":\"81252867991\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"9872148798\",\"fotoKTP\":\"CV. Astar_zega_4M1qTz.jpg\",\"program\":\"CV. Astar\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:32:59\"},{\"id\":7,\"instansi\":\"CV. Astar 2\",\"telpinstansi\":\"1234123412\",\"alamat\":\"jl bengawan solo gg 6 no 20\",\"kepala\":\"zega\",\"telpkepala\":\"12314124124\",\"fotoKTP\":\"CV. Astar 2_zega_R2rzTW.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:36:15\"},{\"id\":8,\"instansi\":\"zega\",\"telpinstansi\":\"12313123\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"124124124\",\"fotoKTP\":\"zega_zega_oxPmRS.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:37:59\"},{\"id\":9,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"097987124\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"087214970\",\"fotoKTP\":\"CV. Curiculum Vitae_zega_534M4O.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:42:21\"},{\"id\":10,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"102920947\",\"alamat\":\"jl bengawan solo gg 6 no 192\",\"kepala\":\"Pak\",\"telpkepala\":\"9812398498124\",\"fotoKTP\":\"CV. Curiculum Vitae_Pak_M029MS.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-05 13:30:20\"}]}}},\"duration\":513,\"memory\":18,\"hostname\":\"zegapc\"}', '2020-10-17 15:20:46'),
(28, '91c8f4bf-e0fa-44c5-b78f-d0b89a443050', '91c8f4bf-f22a-4a06-a3a0-7bf9f24b9862', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tblpartnership`\",\"time\":\"16.83\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":18,\"hash\":\"77aa2cbab5f6c73f0b1dfe29763108ce\",\"hostname\":\"zegapc\"}', '2020-10-17 15:20:57'),
(29, '91c8f4bf-e857-464c-8e13-4efe9155beae', '91c8f4bf-f22a-4a06-a3a0-7bf9f24b9862', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tbluser`\",\"time\":\"0.98\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":19,\"hash\":\"8bc58e25f7f628eac03bbbfc907e8ee3\",\"hostname\":\"zegapc\"}', '2020-10-17 15:20:57'),
(30, '91c8f4bf-ec23-412a-8d9e-3cadcc783c62', '91c8f4bf-f22a-4a06-a3a0-7bf9f24b9862', NULL, 1, 'view', '{\"name\":\"send_email\",\"path\":\"\\\\resources\\\\views\\/send_email.blade.php\",\"data\":[\"all_user\",\"partner\"],\"hostname\":\"zegapc\"}', '2020-10-17 15:20:57');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(31, '91c8f4bf-f165-4861-91f0-bd8ed2c6de71', '91c8f4bf-f22a-4a06-a3a0-7bf9f24b9862', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\EmailController@index\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko\\/20100101 Firefox\\/81.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,*\\/*;q=0.8\",\"accept-language\":\"en-US,en;q=0.5\",\"accept-encoding\":\"gzip, deflate\",\"connection\":\"keep-alive\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6ImZJODZPMHJtR0lWaWtZQ2k3Smx3bGc9PSIsInZhbHVlIjoiTGlML0tyaHZmWWo2ekxMSFVOaXJZeTFERCtOV2lBRlZ4bTg4ZW5VcHpNNHR4Q0xMKzFjUXNBVzRScjcvbytramVLZDhiTXZhekJ3WWNCWkNrY295L1ZTVnFaRTFzVGtnL0hURGJLYWQwWXlhQ3VFeWxkdDE4eFBRRmwzbEQ4d3giLCJtYWMiOiI3YjM4N2Q3ZDg5ZDQ3YWRjYWZmNGFkNzAwNGQwMjdhODE5NTI2NWY0YzU3Y2YxNjMxZjdkZTBhOGJjODk5YmIwIn0%3D; laravel_session=eyJpdiI6ImVXRXpHMEJueEJkY3MyeFZTN0wwRVE9PSIsInZhbHVlIjoiN1J6SWVTdXdBS3Y4OEVFNG5jaG56RmZGWFowWWtnc3VwaHpRb2ZJSk5Hd1hHS2M2RG00YVg2WXpEQWwrZVYxcm9RTlRuejVxYU1uYWd4U2FGQzlOZEdEcjZ5cHovcUFyNHlGaVI5ZFVkRUJzV0FiN2NnUFNaUGRMOFJWajFZeFciLCJtYWMiOiIyOTVlNDNkMWQwYzdhY2E1ZjM1MjBkYjRjMWRkZmY3NDU4MzlhNzhmN2NhMDQ1ZjA3ZDU1ODAzYTA5Y2ZjODk2In0%3D\",\"upgrade-insecure-requests\":\"1\",\"cache-control\":\"max-age=0\"},\"payload\":[],\"session\":{\"_token\":\"M34xw3tkR3jlMZGvCElZQCTWWyY02uOFPyeUHruZ\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\resources\\\\views\\/send_email.blade.php\",\"data\":{\"all_user\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":38,\"UserName\":\"zega febrianto\",\"UserEmail\":\"randombox38@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-08-31\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$QAiuuj420chlrISOvxmrJe5acaql8fjXjI6YucMWrDoFOFoWWfmLG\",\"UserAvatar\":\"38.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/4.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-08-31 16:33:39\",\"UserXP\":0,\"UserOTP\":\"EIDNRc\",\"UserOTP_b\":null,\"online\":0},{\"id\":42,\"UserName\":\"zega febriantoro\",\"UserEmail\":\"xegalol@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-01\",\"alamat\":\"jalan bengawan solo gg 6 no 19 rt 5 rw 3\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$vZ.Up7wtjVSwM6gfxU1u9.PLwhAHlN.ORNTWeymAzJlGFm4sUtnyq\",\"UserAvatar\":\"42.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/38.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-01 15:01:38\",\"UserXP\":0,\"UserOTP\":\"mK0Igk\",\"UserOTP_b\":\"lsgTuZUr\",\"online\":1},{\"id\":43,\"UserName\":\"zega febrianti\",\"UserEmail\":\"randombox381@gmail.com\",\"tempat_lahir\":\"Malang\",\"tgl_lahir\":\"2020-09-06\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"Pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$jy5C1BXHzcT0GcZpuFsrtuCvFWBpuq88LgTlu.LIv7ucjOPEiXYCG\",\"UserAvatar\":\"43.jpg\",\"fotoKTP\":\"42.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:35:40\",\"UserXP\":0,\"UserOTP\":\"hLryDa\",\"UserOTP_b\":null,\"online\":0},{\"id\":44,\"UserName\":\"Sugeng\",\"UserEmail\":\"randombox382@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-11\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$2V5rEESI9vzUYHKIoTq4xeJL6j4NzpO4YtDOTMGQgrofmdQ1E5JPO\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"43.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:38:03\",\"UserXP\":0,\"UserOTP\":\"pGQkXd\",\"UserOTP_b\":null,\"online\":0},{\"id\":45,\"UserName\":\"Almira\",\"UserEmail\":\"almira@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081098120929\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$.5o2VXmibXwYLf\\/GA3Byru4y\\/shrSTnIMA9pVPWqsmJqUunP0g5eK\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"44.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 14:44:21\",\"UserXP\":0,\"UserOTP\":\"a8FS0Y\",\"UserOTP_b\":null,\"online\":0},{\"id\":46,\"UserName\":\"Zsa zsa\",\"UserEmail\":\"zsa@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"garum\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"bapak zsazsa\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$hNTW2nW12vM6UJL4uFWZMOiNa9hO\\/sISZJqALlP8U3N51lgEw33jm\",\"UserAvatar\":\"46.jpg\",\"fotoKTP\":\"45.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 15:29:17\",\"UserXP\":0,\"UserOTP\":\"VCm7jE\",\"UserOTP_b\":null,\"online\":0},{\"id\":47,\"UserName\":\"Deddy Corbuzier\",\"UserEmail\":\"dedy@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-10-02\",\"alamat\":\"jalan rambutan\",\"telp\":\"081081081081\",\"agama\":null,\"orangtua\":\"bapak dedy\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$KU3ilDF9DkCzzFn3yW4yfOoywoZElfpMuomGab2IQG8YhQFA5ruU6\",\"UserAvatar\":\"47.jpg\",\"fotoKTP\":\"46.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-10-02 13:50:29\",\"UserXP\":0,\"UserOTP\":\"LgwpRK\",\"UserOTP_b\":null,\"online\":0}]},\"partner\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":1,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"9999\",\"alamat\":\"Kediri\",\"kepala\":\"Rohmat\",\"telpkepala\":\"888\",\"fotoKTP\":\"2\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":2,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"io\",\"alamat\":\"jojo\",\"kepala\":\"oojo\",\"telpkepala\":\"ooko\",\"fotoKTP\":\"909356294\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":3,\"instansi\":\"SMP negeri 5 kediri\",\"telpinstansi\":\"1111\",\"alamat\":\"Kediri\",\"kepala\":\"JIto\",\"telpkepala\":\"777\",\"fotoKTP\":\"8103b2331649b0521d687def5ed52fe7.png\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":4,\"instansi\":\"SD\",\"telpinstansi\":\"999\",\"alamat\":\"jkjkjk\",\"kepala\":\"9i9\",\"telpkepala\":\"kkoko\",\"fotoKTP\":\"b8baf9999b5ee6f75fb45e5f1039b409.PNG\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":5,\"instansi\":\"hoho\",\"telpinstansi\":\"88\",\"alamat\":\"ininini\",\"kepala\":\"ninini\",\"telpkepala\":\"55\",\"fotoKTP\":\"157599be8731e313424dff83d19b3048.jpg\",\"program\":\"english,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":6,\"instansi\":\"CV. Astar\",\"telpinstansi\":\"81252867991\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"9872148798\",\"fotoKTP\":\"CV. Astar_zega_4M1qTz.jpg\",\"program\":\"CV. Astar\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:32:59\"},{\"id\":7,\"instansi\":\"CV. Astar 2\",\"telpinstansi\":\"1234123412\",\"alamat\":\"jl bengawan solo gg 6 no 20\",\"kepala\":\"zega\",\"telpkepala\":\"12314124124\",\"fotoKTP\":\"CV. Astar 2_zega_R2rzTW.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:36:15\"},{\"id\":8,\"instansi\":\"zega\",\"telpinstansi\":\"12313123\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"124124124\",\"fotoKTP\":\"zega_zega_oxPmRS.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:37:59\"},{\"id\":9,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"097987124\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"087214970\",\"fotoKTP\":\"CV. Curiculum Vitae_zega_534M4O.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:42:21\"},{\"id\":10,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"102920947\",\"alamat\":\"jl bengawan solo gg 6 no 192\",\"kepala\":\"Pak\",\"telpkepala\":\"9812398498124\",\"fotoKTP\":\"CV. Curiculum Vitae_Pak_M029MS.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-05 13:30:20\"}]}}},\"duration\":1384,\"memory\":10,\"hostname\":\"zegapc\"}', '2020-10-17 15:20:57'),
(32, '91c8f4e2-f02f-43ce-90d7-295a04d78896', '91c8f4e7-512c-46e4-8aaa-d950390b0244', NULL, 1, 'log', '{\"level\":\"info\",\"message\":\"Start\",\"context\":[],\"hostname\":\"zegapc\"}', '2020-10-17 15:21:20'),
(33, '91c8f4e7-2441-4bb2-ae43-5293a6a513df', '91c8f4e7-512c-46e4-8aaa-d950390b0244', NULL, 1, 'job', '{\"status\":\"pending\",\"connection\":\"database\",\"queue\":\"default\",\"name\":\"App\\\\Mail\\\\KirimEmail\",\"tries\":null,\"timeout\":null,\"data\":{\"mailable\":{\"class\":\"App\\\\Mail\\\\KirimEmail\",\"properties\":{\"recipient\":{\"email\":\"xegalol@gmail.com\",\"subjek\":\"akjb\",\"konten\":\"kjasbkjb\"},\"locale\":null,\"from\":[],\"to\":[{\"name\":null,\"address\":\"xegalol@gmail.com\"}],\"cc\":[],\"bcc\":[],\"replyTo\":[],\"subject\":null,\"view\":null,\"textView\":null,\"viewData\":[],\"attachments\":[],\"rawAttachments\":[],\"diskAttachments\":[],\"callbacks\":[],\"theme\":null,\"mailer\":\"smtp\",\"connection\":null,\"queue\":null,\"chainConnection\":null,\"chainQueue\":null,\"chainCatchCallbacks\":null,\"delay\":null,\"middleware\":[],\"chained\":[]}},\"tries\":null,\"timeout\":null},\"hostname\":\"zegapc\"}', '2020-10-17 15:21:22'),
(34, '91c8f4e7-4ad9-459d-8f1a-703f3ba96ad6', '91c8f4e7-512c-46e4-8aaa-d950390b0244', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `jobs` (`queue`, `attempts`, `reserved_at`, `available_at`, `created_at`, `payload`) values (\'default\', 0, null, 1602922882, 1602922882, \'{\\\\\\\"uuid\\\\\\\":\\\\\\\"6a035bf1-ed4a-4095-94d9-ec3f820a1c70\\\\\\\",\\\\\\\"displayName\\\\\\\":\\\\\\\"App\\\\\\\\Mail\\\\\\\\KirimEmail\\\\\\\",\\\\\\\"job\\\\\\\":\\\\\\\"Illuminate\\\\\\\\Queue\\\\\\\\CallQueuedHandler@call\\\\\\\",\\\\\\\"maxTries\\\\\\\":null,\\\\\\\"maxExceptions\\\\\\\":null,\\\\\\\"backoff\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"timeout\\\\\\\":null,\\\\\\\"retryUntil\\\\\\\":null,\\\\\\\"data\\\\\\\":{\\\\\\\"commandName\\\\\\\":\\\\\\\"Illuminate\\\\\\\\Mail\\\\\\\\SendQueuedMailable\\\\\\\",\\\\\\\"command\\\\\\\":\\\\\\\"O:34:\\\\\\\\\\\"Illuminate\\\\\\\\Mail\\\\\\\\SendQueuedMailable\\\\\\\\\\\":3:{s:8:\\\\\\\\\\\"mailable\\\\\\\\\\\";O:19:\\\\\\\\\\\"App\\\\\\\\Mail\\\\\\\\KirimEmail\\\\\\\\\\\":27:{s:9:\\\\\\\\\\\"recipient\\\\\\\\\\\";a:3:{s:5:\\\\\\\\\\\"email\\\\\\\\\\\";s:17:\\\\\\\\\\\"xegalol@gmail.com\\\\\\\\\\\";s:6:\\\\\\\\\\\"subjek\\\\\\\\\\\";s:4:\\\\\\\\\\\"akjb\\\\\\\\\\\";s:6:\\\\\\\\\\\"konten\\\\\\\\\\\";s:8:\\\\\\\\\\\"kjasbkjb\\\\\\\\\\\";}s:6:\\\\\\\\\\\"locale\\\\\\\\\\\";N;s:4:\\\\\\\\\\\"from\\\\\\\\\\\";a:0:{}s:2:\\\\\\\\\\\"to\\\\\\\\\\\";a:1:{i:0;a:2:{s:4:\\\\\\\\\\\"name\\\\\\\\\\\";N;s:7:\\\\\\\\\\\"address\\\\\\\\\\\";s:17:\\\\\\\\\\\"xegalol@gmail.com\\\\\\\\\\\";}}s:2:\\\\\\\\\\\"cc\\\\\\\\\\\";a:0:{}s:3:\\\\\\\\\\\"bcc\\\\\\\\\\\";a:0:{}s:7:\\\\\\\\\\\"replyTo\\\\\\\\\\\";a:0:{}s:7:\\\\\\\\\\\"subject\\\\\\\\\\\";N;s:11:\\\\\\\\\\\"\\\\u0000*\\\\u0000markdown\\\\\\\\\\\";N;s:7:\\\\\\\\\\\"\\\\u0000*\\\\u0000html\\\\\\\\\\\";N;s:4:\\\\\\\\\\\"view\\\\\\\\\\\";N;s:8:\\\\\\\\\\\"textView\\\\\\\\\\\";N;s:8:\\\\\\\\\\\"viewData\\\\\\\\\\\";a:0:{}s:11:\\\\\\\\\\\"attachments\\\\\\\\\\\";a:0:{}s:14:\\\\\\\\\\\"rawAttachments\\\\\\\\\\\";a:0:{}s:15:\\\\\\\\\\\"diskAttachments\\\\\\\\\\\";a:0:{}s:9:\\\\\\\\\\\"callbacks\\\\\\\\\\\";a:0:{}s:5:\\\\\\\\\\\"theme\\\\\\\\\\\";N;s:6:\\\\\\\\\\\"mailer\\\\\\\\\\\";s:4:\\\\\\\\\\\"smtp\\\\\\\\\\\";s:10:\\\\\\\\\\\"connection\\\\\\\\\\\";N;s:5:\\\\\\\\\\\"queue\\\\\\\\\\\";N;s:15:\\\\\\\\\\\"chainConnection\\\\\\\\\\\";N;s:10:\\\\\\\\\\\"chainQueue\\\\\\\\\\\";N;s:19:\\\\\\\\\\\"chainCatchCallbacks\\\\\\\\\\\";N;s:5:\\\\\\\\\\\"delay\\\\\\\\\\\";N;s:10:\\\\\\\\\\\"middleware\\\\\\\\\\\";a:0:{}s:7:\\\\\\\\\\\"chained\\\\\\\\\\\";a:0:{}}s:5:\\\\\\\\\\\"tries\\\\\\\\\\\";N;s:7:\\\\\\\\\\\"timeout\\\\\\\\\\\";N;}\\\\\\\"},\\\\\\\"telescope_uuid\\\\\\\":\\\\\\\"91c8f4e7-2441-4bb2-ae43-5293a6a513df\\\\\\\"}\')\",\"time\":\"84.00\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":31,\"hash\":\"dcb5bc575158ce02a6c28ed0691de7a9\",\"hostname\":\"zegapc\"}', '2020-10-17 15:21:22'),
(35, '91c8f4e7-4b30-4b40-a665-4eaf1370bdc9', '91c8f4e7-512c-46e4-8aaa-d950390b0244', NULL, 1, 'log', '{\"level\":\"info\",\"message\":\"End\",\"context\":[],\"hostname\":\"zegapc\"}', '2020-10-17 15:21:22'),
(36, '91c8f4e7-5083-4c37-a5ba-f7032ecf88c6', '91c8f4e7-512c-46e4-8aaa-d950390b0244', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/send_email\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\EmailController@enqueue\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko\\/20100101 Firefox\\/81.0\",\"accept\":\"*\\/*\",\"accept-language\":\"en-US,en;q=0.5\",\"accept-encoding\":\"gzip, deflate\",\"content-type\":\"application\\/x-www-form-urlencoded; charset=UTF-8\",\"x-csrf-token\":\"M34xw3tkR3jlMZGvCElZQCTWWyY02uOFPyeUHruZ\",\"x-requested-with\":\"XMLHttpRequest\",\"content-length\":\"90\",\"origin\":\"http:\\/\\/127.0.0.1:8000\",\"connection\":\"keep-alive\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IllnYWlNdWtRZzZWS1ZRV21lbXpLWFE9PSIsInZhbHVlIjoiMFIxdGJLaVd5cEtKMDhFT0ZoVG1XOTFPMldMMFBHd2RRaHVFOFoyV1ZLUDIydGg3aXprQTdJbTR1MXBvMm9lSUlvT1I1V0NMVjBMMDlzN2JRa0JNemQwK3ZZSElSMHNUaXliRHZoVzVVTDYycjkzaUdibmFTNkN2UEZsbFdZdlUiLCJtYWMiOiIyNTJhYWI2MzM1OTJhOTZjMThhNWMyYWNlNjA5M2FlYWEwOWI0ZTJlMzM1ZWM4Y2VlNmE2NDRkOTIwNzU3YjNiIn0%3D; laravel_session=eyJpdiI6IlJiaEFlU1c2OUxHWmxLc0MzUmw5WlE9PSIsInZhbHVlIjoiUmx0WnRuQUZHdjlLenBjVUl3Mm9ORGV4RnhieEZSa0x0RVA1T0lTUlhIQUhwUFJHbE94SlRrV0hreTBTdGVPVHRlSnJqNGhoOUk5ejRGTkJ2STh5aVBuejJLNEhONmNOTktiWWd3UVBrMkNCZVN5MGs0WFhUU0R0TFg5UUpHOWsiLCJtYWMiOiI3YzEwOWU5NGMzN2IzZDgyNzFiM2Y0OGYwYTJiZTg2YjVmNzJmOGI4ZDAzOTdjZjU2N2M4NmQ4MTAxZWU2NTQxIn0%3D\"},\"payload\":{\"recipient\":\"xegalol@gmail.com\",\"subjek\":\"akjb\",\"konten\":\"kjasbkjb\"},\"session\":{\"_token\":\"M34xw3tkR3jlMZGvCElZQCTWWyY02uOFPyeUHruZ\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":\"HTML Response\",\"duration\":3391,\"memory\":6,\"hostname\":\"zegapc\"}', '2020-10-17 15:21:22'),
(37, '91c8f507-4592-4cf0-ab33-5eadbda3e296', '91c8f507-61a7-46ad-9265-57edd2dbe22e', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tblpartnership`\",\"time\":\"3.71\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":18,\"hash\":\"77aa2cbab5f6c73f0b1dfe29763108ce\",\"hostname\":\"zegapc\"}', '2020-10-17 15:21:43'),
(38, '91c8f507-5070-4f2e-8c89-cd6c8bb75e29', '91c8f507-61a7-46ad-9265-57edd2dbe22e', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tbluser`\",\"time\":\"5.13\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":19,\"hash\":\"8bc58e25f7f628eac03bbbfc907e8ee3\",\"hostname\":\"zegapc\"}', '2020-10-17 15:21:43'),
(39, '91c8f507-56cc-4109-a270-e83d0c39c870', '91c8f507-61a7-46ad-9265-57edd2dbe22e', NULL, 1, 'view', '{\"name\":\"send_email\",\"path\":\"\\\\resources\\\\views\\/send_email.blade.php\",\"data\":[\"all_user\",\"partner\"],\"hostname\":\"zegapc\"}', '2020-10-17 15:21:43'),
(40, '91c8f507-5e42-4bad-b44e-299fbc402e89', '91c8f507-61a7-46ad-9265-57edd2dbe22e', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\EmailController@index\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko\\/20100101 Firefox\\/81.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,*\\/*;q=0.8\",\"accept-language\":\"en-US,en;q=0.5\",\"accept-encoding\":\"gzip, deflate\",\"connection\":\"keep-alive\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6ImVzcFhGYXo1Mjdubi9MRnpUdG5ZbWc9PSIsInZhbHVlIjoiZzhETFlXZDJWdUtUbEZrcUpHd25xdjFzV3ZEMWRZemd0V2VReXhXc2NyRjJCYXJpMVRNOTYybnRPdTM0ejhXRFZJOUplbUJUQ0dXY3pMZzFIRytJeDZIM1YvaDNQd3ZzZ1N1NmxSRjkveHp0SUpCT0pVY1d0SGwxSnZudXRhQUMiLCJtYWMiOiIwMTFmNDhjYTYwOGNhMjdiNTliNmQzNWNlMzc3ZWM5NDg5YmY4MTc0NjdhOTk1Njg4YjA1MTljODg2MTExNjM5In0%3D; laravel_session=eyJpdiI6IjgyNGFVM2dSTXlaTDZDbklTeUVTNkE9PSIsInZhbHVlIjoicEpuWHQ3QVFaUW5oUXFEenZQMWE4NWFNalJoWG16M1ZaTjJHdXJ0eUFWSW9sckJ1WUZQbWpidy81UHJ4ZXB3K1ZkeG5EWnN3V3Q3L0dIU0N0bWhxTiszd1V2MDR3eFR3dTBaVjJjTWtCRjk3K3MzWktzS0pSOTY0NXh0N0NzdEMiLCJtYWMiOiI2Yjk4NmM5ZWM5MGUyNzM4OWU3ZWU5OWEwMDQ2M2JmYzJlODAzMzYwNWEwYTJjMjRmYTUwMTgzZWEzNzdhZWM2In0%3D\",\"upgrade-insecure-requests\":\"1\"},\"payload\":[],\"session\":{\"_token\":\"M34xw3tkR3jlMZGvCElZQCTWWyY02uOFPyeUHruZ\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\resources\\\\views\\/send_email.blade.php\",\"data\":{\"all_user\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":38,\"UserName\":\"zega febrianto\",\"UserEmail\":\"randombox38@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-08-31\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$QAiuuj420chlrISOvxmrJe5acaql8fjXjI6YucMWrDoFOFoWWfmLG\",\"UserAvatar\":\"38.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/4.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-08-31 16:33:39\",\"UserXP\":0,\"UserOTP\":\"EIDNRc\",\"UserOTP_b\":null,\"online\":0},{\"id\":42,\"UserName\":\"zega febriantoro\",\"UserEmail\":\"xegalol@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-01\",\"alamat\":\"jalan bengawan solo gg 6 no 19 rt 5 rw 3\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$vZ.Up7wtjVSwM6gfxU1u9.PLwhAHlN.ORNTWeymAzJlGFm4sUtnyq\",\"UserAvatar\":\"42.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/38.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-01 15:01:38\",\"UserXP\":0,\"UserOTP\":\"mK0Igk\",\"UserOTP_b\":\"lsgTuZUr\",\"online\":1},{\"id\":43,\"UserName\":\"zega febrianti\",\"UserEmail\":\"randombox381@gmail.com\",\"tempat_lahir\":\"Malang\",\"tgl_lahir\":\"2020-09-06\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"Pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$jy5C1BXHzcT0GcZpuFsrtuCvFWBpuq88LgTlu.LIv7ucjOPEiXYCG\",\"UserAvatar\":\"43.jpg\",\"fotoKTP\":\"42.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:35:40\",\"UserXP\":0,\"UserOTP\":\"hLryDa\",\"UserOTP_b\":null,\"online\":0},{\"id\":44,\"UserName\":\"Sugeng\",\"UserEmail\":\"randombox382@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-11\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$2V5rEESI9vzUYHKIoTq4xeJL6j4NzpO4YtDOTMGQgrofmdQ1E5JPO\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"43.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:38:03\",\"UserXP\":0,\"UserOTP\":\"pGQkXd\",\"UserOTP_b\":null,\"online\":0},{\"id\":45,\"UserName\":\"Almira\",\"UserEmail\":\"almira@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081098120929\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$.5o2VXmibXwYLf\\/GA3Byru4y\\/shrSTnIMA9pVPWqsmJqUunP0g5eK\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"44.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 14:44:21\",\"UserXP\":0,\"UserOTP\":\"a8FS0Y\",\"UserOTP_b\":null,\"online\":0},{\"id\":46,\"UserName\":\"Zsa zsa\",\"UserEmail\":\"zsa@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"garum\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"bapak zsazsa\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$hNTW2nW12vM6UJL4uFWZMOiNa9hO\\/sISZJqALlP8U3N51lgEw33jm\",\"UserAvatar\":\"46.jpg\",\"fotoKTP\":\"45.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 15:29:17\",\"UserXP\":0,\"UserOTP\":\"VCm7jE\",\"UserOTP_b\":null,\"online\":0},{\"id\":47,\"UserName\":\"Deddy Corbuzier\",\"UserEmail\":\"dedy@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-10-02\",\"alamat\":\"jalan rambutan\",\"telp\":\"081081081081\",\"agama\":null,\"orangtua\":\"bapak dedy\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$KU3ilDF9DkCzzFn3yW4yfOoywoZElfpMuomGab2IQG8YhQFA5ruU6\",\"UserAvatar\":\"47.jpg\",\"fotoKTP\":\"46.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-10-02 13:50:29\",\"UserXP\":0,\"UserOTP\":\"LgwpRK\",\"UserOTP_b\":null,\"online\":0}]},\"partner\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":1,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"9999\",\"alamat\":\"Kediri\",\"kepala\":\"Rohmat\",\"telpkepala\":\"888\",\"fotoKTP\":\"2\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":2,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"io\",\"alamat\":\"jojo\",\"kepala\":\"oojo\",\"telpkepala\":\"ooko\",\"fotoKTP\":\"909356294\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":3,\"instansi\":\"SMP negeri 5 kediri\",\"telpinstansi\":\"1111\",\"alamat\":\"Kediri\",\"kepala\":\"JIto\",\"telpkepala\":\"777\",\"fotoKTP\":\"8103b2331649b0521d687def5ed52fe7.png\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":4,\"instansi\":\"SD\",\"telpinstansi\":\"999\",\"alamat\":\"jkjkjk\",\"kepala\":\"9i9\",\"telpkepala\":\"kkoko\",\"fotoKTP\":\"b8baf9999b5ee6f75fb45e5f1039b409.PNG\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":5,\"instansi\":\"hoho\",\"telpinstansi\":\"88\",\"alamat\":\"ininini\",\"kepala\":\"ninini\",\"telpkepala\":\"55\",\"fotoKTP\":\"157599be8731e313424dff83d19b3048.jpg\",\"program\":\"english,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":6,\"instansi\":\"CV. Astar\",\"telpinstansi\":\"81252867991\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"9872148798\",\"fotoKTP\":\"CV. Astar_zega_4M1qTz.jpg\",\"program\":\"CV. Astar\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:32:59\"},{\"id\":7,\"instansi\":\"CV. Astar 2\",\"telpinstansi\":\"1234123412\",\"alamat\":\"jl bengawan solo gg 6 no 20\",\"kepala\":\"zega\",\"telpkepala\":\"12314124124\",\"fotoKTP\":\"CV. Astar 2_zega_R2rzTW.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:36:15\"},{\"id\":8,\"instansi\":\"zega\",\"telpinstansi\":\"12313123\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"124124124\",\"fotoKTP\":\"zega_zega_oxPmRS.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:37:59\"},{\"id\":9,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"097987124\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"087214970\",\"fotoKTP\":\"CV. Curiculum Vitae_zega_534M4O.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:42:21\"},{\"id\":10,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"102920947\",\"alamat\":\"jl bengawan solo gg 6 no 192\",\"kepala\":\"Pak\",\"telpkepala\":\"9812398498124\",\"fotoKTP\":\"CV. Curiculum Vitae_Pak_M029MS.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-05 13:30:20\"}]}}},\"duration\":971,\"memory\":8,\"hostname\":\"zegapc\"}', '2020-10-17 15:21:43'),
(41, '91c8f543-67a7-4a52-856e-984b9ba896e9', '91c8f543-b085-48a3-b920-b4d676d2161f', NULL, 1, 'log', '{\"level\":\"info\",\"message\":\"Start\",\"context\":[],\"hostname\":\"zegapc\"}', '2020-10-17 15:22:23'),
(42, '91c8f543-8515-4627-b396-fa18367ef590', '91c8f543-b085-48a3-b920-b4d676d2161f', NULL, 1, 'job', '{\"status\":\"pending\",\"connection\":\"database\",\"queue\":\"default\",\"name\":\"App\\\\Mail\\\\KirimEmail\",\"tries\":null,\"timeout\":null,\"data\":{\"mailable\":{\"class\":\"App\\\\Mail\\\\KirimEmail\",\"properties\":{\"recipient\":{\"email\":\"xegalol@gmail.com\",\"subjek\":\"akjb\",\"konten\":\"zega\"},\"locale\":null,\"from\":[],\"to\":[{\"name\":null,\"address\":\"xegalol@gmail.com\"}],\"cc\":[],\"bcc\":[],\"replyTo\":[],\"subject\":null,\"view\":null,\"textView\":null,\"viewData\":[],\"attachments\":[],\"rawAttachments\":[],\"diskAttachments\":[],\"callbacks\":[],\"theme\":null,\"mailer\":\"smtp\",\"connection\":null,\"queue\":null,\"chainConnection\":null,\"chainQueue\":null,\"chainCatchCallbacks\":null,\"delay\":null,\"middleware\":[],\"chained\":[]}},\"tries\":null,\"timeout\":null},\"hostname\":\"zegapc\"}', '2020-10-17 15:22:23'),
(43, '91c8f543-aa26-4162-bb21-864db9dfddaf', '91c8f543-b085-48a3-b920-b4d676d2161f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `jobs` (`queue`, `attempts`, `reserved_at`, `available_at`, `created_at`, `payload`) values (\'default\', 0, null, 1602922943, 1602922943, \'{\\\\\\\"uuid\\\\\\\":\\\\\\\"816cb234-db03-4e0e-9d06-481242992405\\\\\\\",\\\\\\\"displayName\\\\\\\":\\\\\\\"App\\\\\\\\Mail\\\\\\\\KirimEmail\\\\\\\",\\\\\\\"job\\\\\\\":\\\\\\\"Illuminate\\\\\\\\Queue\\\\\\\\CallQueuedHandler@call\\\\\\\",\\\\\\\"maxTries\\\\\\\":null,\\\\\\\"maxExceptions\\\\\\\":null,\\\\\\\"backoff\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"timeout\\\\\\\":null,\\\\\\\"retryUntil\\\\\\\":null,\\\\\\\"data\\\\\\\":{\\\\\\\"commandName\\\\\\\":\\\\\\\"Illuminate\\\\\\\\Mail\\\\\\\\SendQueuedMailable\\\\\\\",\\\\\\\"command\\\\\\\":\\\\\\\"O:34:\\\\\\\\\\\"Illuminate\\\\\\\\Mail\\\\\\\\SendQueuedMailable\\\\\\\\\\\":3:{s:8:\\\\\\\\\\\"mailable\\\\\\\\\\\";O:19:\\\\\\\\\\\"App\\\\\\\\Mail\\\\\\\\KirimEmail\\\\\\\\\\\":27:{s:9:\\\\\\\\\\\"recipient\\\\\\\\\\\";a:3:{s:5:\\\\\\\\\\\"email\\\\\\\\\\\";s:17:\\\\\\\\\\\"xegalol@gmail.com\\\\\\\\\\\";s:6:\\\\\\\\\\\"subjek\\\\\\\\\\\";s:4:\\\\\\\\\\\"akjb\\\\\\\\\\\";s:6:\\\\\\\\\\\"konten\\\\\\\\\\\";s:4:\\\\\\\\\\\"zega\\\\\\\\\\\";}s:6:\\\\\\\\\\\"locale\\\\\\\\\\\";N;s:4:\\\\\\\\\\\"from\\\\\\\\\\\";a:0:{}s:2:\\\\\\\\\\\"to\\\\\\\\\\\";a:1:{i:0;a:2:{s:4:\\\\\\\\\\\"name\\\\\\\\\\\";N;s:7:\\\\\\\\\\\"address\\\\\\\\\\\";s:17:\\\\\\\\\\\"xegalol@gmail.com\\\\\\\\\\\";}}s:2:\\\\\\\\\\\"cc\\\\\\\\\\\";a:0:{}s:3:\\\\\\\\\\\"bcc\\\\\\\\\\\";a:0:{}s:7:\\\\\\\\\\\"replyTo\\\\\\\\\\\";a:0:{}s:7:\\\\\\\\\\\"subject\\\\\\\\\\\";N;s:11:\\\\\\\\\\\"\\\\u0000*\\\\u0000markdown\\\\\\\\\\\";N;s:7:\\\\\\\\\\\"\\\\u0000*\\\\u0000html\\\\\\\\\\\";N;s:4:\\\\\\\\\\\"view\\\\\\\\\\\";N;s:8:\\\\\\\\\\\"textView\\\\\\\\\\\";N;s:8:\\\\\\\\\\\"viewData\\\\\\\\\\\";a:0:{}s:11:\\\\\\\\\\\"attachments\\\\\\\\\\\";a:0:{}s:14:\\\\\\\\\\\"rawAttachments\\\\\\\\\\\";a:0:{}s:15:\\\\\\\\\\\"diskAttachments\\\\\\\\\\\";a:0:{}s:9:\\\\\\\\\\\"callbacks\\\\\\\\\\\";a:0:{}s:5:\\\\\\\\\\\"theme\\\\\\\\\\\";N;s:6:\\\\\\\\\\\"mailer\\\\\\\\\\\";s:4:\\\\\\\\\\\"smtp\\\\\\\\\\\";s:10:\\\\\\\\\\\"connection\\\\\\\\\\\";N;s:5:\\\\\\\\\\\"queue\\\\\\\\\\\";N;s:15:\\\\\\\\\\\"chainConnection\\\\\\\\\\\";N;s:10:\\\\\\\\\\\"chainQueue\\\\\\\\\\\";N;s:19:\\\\\\\\\\\"chainCatchCallbacks\\\\\\\\\\\";N;s:5:\\\\\\\\\\\"delay\\\\\\\\\\\";N;s:10:\\\\\\\\\\\"middleware\\\\\\\\\\\";a:0:{}s:7:\\\\\\\\\\\"chained\\\\\\\\\\\";a:0:{}}s:5:\\\\\\\\\\\"tries\\\\\\\\\\\";N;s:7:\\\\\\\\\\\"timeout\\\\\\\\\\\";N;}\\\\\\\"},\\\\\\\"telescope_uuid\\\\\\\":\\\\\\\"91c8f543-8515-4627-b396-fa18367ef590\\\\\\\"}\')\",\"time\":\"90.47\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":31,\"hash\":\"dcb5bc575158ce02a6c28ed0691de7a9\",\"hostname\":\"zegapc\"}', '2020-10-17 15:22:23'),
(44, '91c8f543-aa7b-465a-9d3f-6f300e5c183b', '91c8f543-b085-48a3-b920-b4d676d2161f', NULL, 1, 'log', '{\"level\":\"info\",\"message\":\"End\",\"context\":[],\"hostname\":\"zegapc\"}', '2020-10-17 15:22:23'),
(45, '91c8f543-afe9-4338-b3d9-2bc6be02a871', '91c8f543-b085-48a3-b920-b4d676d2161f', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/send_email\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\EmailController@enqueue\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko\\/20100101 Firefox\\/81.0\",\"accept\":\"*\\/*\",\"accept-language\":\"en-US,en;q=0.5\",\"accept-encoding\":\"gzip, deflate\",\"content-type\":\"application\\/x-www-form-urlencoded; charset=UTF-8\",\"x-csrf-token\":\"M34xw3tkR3jlMZGvCElZQCTWWyY02uOFPyeUHruZ\",\"x-requested-with\":\"XMLHttpRequest\",\"content-length\":\"87\",\"origin\":\"http:\\/\\/127.0.0.1:8000\",\"connection\":\"keep-alive\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6Im96aGpndmlTWThaNDdXRHFDbXZINlE9PSIsInZhbHVlIjoiOFg1RmdCc0FCYVcvSmFiT0pNY252V29nOTJqVjhiQ3J0RTFISDFxZmoyRkxuUWVQSHNwb3VkUmI5TWtWK0FxMkIxTG4wbi81cGZ5TEttcGYzZkpvQ3h3ZWZubW1kVkFOdHcvRVAyTm9MS2pSN29zdXhLN050VVZ6c081YUx5bUQiLCJtYWMiOiJlYjFmYjI0ZWMzNzhkOTJhYWQ4MzQzMmU0NGQ1NDkzM2Y1YzczZWQwMDc1OTRhMmRiMWE5OTBiYjE1Yjg4NDZiIn0%3D; laravel_session=eyJpdiI6IjlkSWhLbXMzeDJ3UTR6NDMvSzJWR1E9PSIsInZhbHVlIjoiSGI0ekdyRXQ1U3BsNERrRUtlU3ZKdnlpbkkzcU5nVG5iNE9sOC9wMUtnZGhOU21Ma0NUR000TUNOSUJ4eisxUUVIcnc3U0E1Ym5QN3pNNHBZWVhtUFM1RHBINGo4UGdhcVVYQmJSRWY4c2d4MjFEWitLeUc1UUVHU3c2YTc4azQiLCJtYWMiOiJiMjhhNGMwYmQxZDRkZmFkOTg4YzVjY2ZkNDY4MDU0ZTFmY2E4YjIwNDY3MDMzZDQ2NjI0Y2JkZDA1NTRiNDZkIn0%3D\"},\"payload\":{\"recipient\":\"xegalol@gmail.com\",\"subjek\":\"akjb\",\"konten\":\"zega\"},\"session\":{\"_token\":\"M34xw3tkR3jlMZGvCElZQCTWWyY02uOFPyeUHruZ\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\\/telescope\\/telescope-api\\/requests\\/91c8f4e7-5083-4c37-a5ba-f7032ecf88c6\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":\"HTML Response\",\"duration\":568,\"memory\":2,\"hostname\":\"zegapc\"}', '2020-10-17 15:22:23'),
(46, '91c8f55e-501f-4e7a-b653-0f1428ae793b', '91c8f55e-6843-4343-8470-f9a85408b42e', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tblpartnership`\",\"time\":\"3.21\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":18,\"hash\":\"77aa2cbab5f6c73f0b1dfe29763108ce\",\"hostname\":\"zegapc\"}', '2020-10-17 15:22:40'),
(47, '91c8f55e-5df5-4d9c-ad41-3c3b420263e6', '91c8f55e-6843-4343-8470-f9a85408b42e', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tbluser`\",\"time\":\"1.32\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":19,\"hash\":\"8bc58e25f7f628eac03bbbfc907e8ee3\",\"hostname\":\"zegapc\"}', '2020-10-17 15:22:40'),
(48, '91c8f55e-620c-4c82-b583-26af9d309d08', '91c8f55e-6843-4343-8470-f9a85408b42e', NULL, 1, 'view', '{\"name\":\"send_email\",\"path\":\"\\\\resources\\\\views\\/send_email.blade.php\",\"data\":[\"all_user\",\"partner\"],\"hostname\":\"zegapc\"}', '2020-10-17 15:22:40'),
(49, '91c8f55e-6777-4c0e-9418-a977c9aed3ed', '91c8f55e-6843-4343-8470-f9a85408b42e', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\EmailController@index\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko\\/20100101 Firefox\\/81.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,*\\/*;q=0.8\",\"accept-language\":\"en-US,en;q=0.5\",\"accept-encoding\":\"gzip, deflate\",\"connection\":\"keep-alive\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlVVZmpZaVViRlNVZ2VuWHB3c0J2UFE9PSIsInZhbHVlIjoidC8wOTFKZ1diclc2M1hNSkZFc3ovUkkxS2c5bnNEaVpZbmdrY1JPcWVGYW1ZNkRPb2xlcnBiTkFKYkpWOXR2M2Y2UU1NbitKSFAvUHpyUC9rclE4WDZYRmU4eDAwdHF4ZVArclFOK0JOQWNFWFkyUEVLTzM3VkErQkFNRy9pK0ciLCJtYWMiOiJkNzAzNmQ1YzZmZGRmYTI3OWE2MTgyYWIxOGYwNTM0YTJkYTRjNDc5NDE1OTljYzIwY2FjMTRjNGFkMjQyYTZiIn0%3D; laravel_session=eyJpdiI6IlhwOVNvdHpGbVFLRkE2Sis3c01xQWc9PSIsInZhbHVlIjoiTVdDZ0VSa0F3VEI2WlArT1M0ekJsZkw0WXVzMFZBdU5JaHdlL1l6K3ZRMU5rSlJCSktzeWF6eHVLWTNPVlIwNXdOTUljU0ZJRm1FWWRMdDFqbDY5ZGxsZVcybm1DUGcyTlBDQVluWWE4QzJUdHFOa1RMQVNCcnRiUGozdXd3VksiLCJtYWMiOiIyMGU3ODZkODc0MDQ2M2Y1MjA4YmRhYWMwMjM5NTViNjMyZmQ0YWZhMGI3YzRhNjljOGQzZWJiZmQyMTJlODUwIn0%3D\",\"upgrade-insecure-requests\":\"1\",\"cache-control\":\"max-age=0\"},\"payload\":[],\"session\":{\"_token\":\"M34xw3tkR3jlMZGvCElZQCTWWyY02uOFPyeUHruZ\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\resources\\\\views\\/send_email.blade.php\",\"data\":{\"all_user\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":38,\"UserName\":\"zega febrianto\",\"UserEmail\":\"randombox38@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-08-31\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$QAiuuj420chlrISOvxmrJe5acaql8fjXjI6YucMWrDoFOFoWWfmLG\",\"UserAvatar\":\"38.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/4.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-08-31 16:33:39\",\"UserXP\":0,\"UserOTP\":\"EIDNRc\",\"UserOTP_b\":null,\"online\":0},{\"id\":42,\"UserName\":\"zega febriantoro\",\"UserEmail\":\"xegalol@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-01\",\"alamat\":\"jalan bengawan solo gg 6 no 19 rt 5 rw 3\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$vZ.Up7wtjVSwM6gfxU1u9.PLwhAHlN.ORNTWeymAzJlGFm4sUtnyq\",\"UserAvatar\":\"42.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/38.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-01 15:01:38\",\"UserXP\":0,\"UserOTP\":\"mK0Igk\",\"UserOTP_b\":\"lsgTuZUr\",\"online\":1},{\"id\":43,\"UserName\":\"zega febrianti\",\"UserEmail\":\"randombox381@gmail.com\",\"tempat_lahir\":\"Malang\",\"tgl_lahir\":\"2020-09-06\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"Pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$jy5C1BXHzcT0GcZpuFsrtuCvFWBpuq88LgTlu.LIv7ucjOPEiXYCG\",\"UserAvatar\":\"43.jpg\",\"fotoKTP\":\"42.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:35:40\",\"UserXP\":0,\"UserOTP\":\"hLryDa\",\"UserOTP_b\":null,\"online\":0},{\"id\":44,\"UserName\":\"Sugeng\",\"UserEmail\":\"randombox382@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-11\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$2V5rEESI9vzUYHKIoTq4xeJL6j4NzpO4YtDOTMGQgrofmdQ1E5JPO\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"43.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:38:03\",\"UserXP\":0,\"UserOTP\":\"pGQkXd\",\"UserOTP_b\":null,\"online\":0},{\"id\":45,\"UserName\":\"Almira\",\"UserEmail\":\"almira@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081098120929\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$.5o2VXmibXwYLf\\/GA3Byru4y\\/shrSTnIMA9pVPWqsmJqUunP0g5eK\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"44.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 14:44:21\",\"UserXP\":0,\"UserOTP\":\"a8FS0Y\",\"UserOTP_b\":null,\"online\":0},{\"id\":46,\"UserName\":\"Zsa zsa\",\"UserEmail\":\"zsa@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"garum\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"bapak zsazsa\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$hNTW2nW12vM6UJL4uFWZMOiNa9hO\\/sISZJqALlP8U3N51lgEw33jm\",\"UserAvatar\":\"46.jpg\",\"fotoKTP\":\"45.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 15:29:17\",\"UserXP\":0,\"UserOTP\":\"VCm7jE\",\"UserOTP_b\":null,\"online\":0},{\"id\":47,\"UserName\":\"Deddy Corbuzier\",\"UserEmail\":\"dedy@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-10-02\",\"alamat\":\"jalan rambutan\",\"telp\":\"081081081081\",\"agama\":null,\"orangtua\":\"bapak dedy\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$KU3ilDF9DkCzzFn3yW4yfOoywoZElfpMuomGab2IQG8YhQFA5ruU6\",\"UserAvatar\":\"47.jpg\",\"fotoKTP\":\"46.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-10-02 13:50:29\",\"UserXP\":0,\"UserOTP\":\"LgwpRK\",\"UserOTP_b\":null,\"online\":0}]},\"partner\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":1,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"9999\",\"alamat\":\"Kediri\",\"kepala\":\"Rohmat\",\"telpkepala\":\"888\",\"fotoKTP\":\"2\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":2,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"io\",\"alamat\":\"jojo\",\"kepala\":\"oojo\",\"telpkepala\":\"ooko\",\"fotoKTP\":\"909356294\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":3,\"instansi\":\"SMP negeri 5 kediri\",\"telpinstansi\":\"1111\",\"alamat\":\"Kediri\",\"kepala\":\"JIto\",\"telpkepala\":\"777\",\"fotoKTP\":\"8103b2331649b0521d687def5ed52fe7.png\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":4,\"instansi\":\"SD\",\"telpinstansi\":\"999\",\"alamat\":\"jkjkjk\",\"kepala\":\"9i9\",\"telpkepala\":\"kkoko\",\"fotoKTP\":\"b8baf9999b5ee6f75fb45e5f1039b409.PNG\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":5,\"instansi\":\"hoho\",\"telpinstansi\":\"88\",\"alamat\":\"ininini\",\"kepala\":\"ninini\",\"telpkepala\":\"55\",\"fotoKTP\":\"157599be8731e313424dff83d19b3048.jpg\",\"program\":\"english,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":6,\"instansi\":\"CV. Astar\",\"telpinstansi\":\"81252867991\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"9872148798\",\"fotoKTP\":\"CV. Astar_zega_4M1qTz.jpg\",\"program\":\"CV. Astar\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:32:59\"},{\"id\":7,\"instansi\":\"CV. Astar 2\",\"telpinstansi\":\"1234123412\",\"alamat\":\"jl bengawan solo gg 6 no 20\",\"kepala\":\"zega\",\"telpkepala\":\"12314124124\",\"fotoKTP\":\"CV. Astar 2_zega_R2rzTW.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:36:15\"},{\"id\":8,\"instansi\":\"zega\",\"telpinstansi\":\"12313123\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"124124124\",\"fotoKTP\":\"zega_zega_oxPmRS.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:37:59\"},{\"id\":9,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"097987124\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"087214970\",\"fotoKTP\":\"CV. Curiculum Vitae_zega_534M4O.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:42:21\"},{\"id\":10,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"102920947\",\"alamat\":\"jl bengawan solo gg 6 no 192\",\"kepala\":\"Pak\",\"telpkepala\":\"9812398498124\",\"fotoKTP\":\"CV. Curiculum Vitae_Pak_M029MS.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-05 13:30:20\"}]}}},\"duration\":689,\"memory\":2,\"hostname\":\"zegapc\"}', '2020-10-17 15:22:40'),
(50, '91c8f56f-6a51-4a46-8650-e4a2ce21f047', '91c8f56f-786c-4665-997c-e81dbc83e8a7', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tblpartnership`\",\"time\":\"1.33\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":18,\"hash\":\"77aa2cbab5f6c73f0b1dfe29763108ce\",\"hostname\":\"zegapc\"}', '2020-10-17 15:22:52'),
(51, '91c8f56f-6f53-4b5c-87f7-d2529ba90219', '91c8f56f-786c-4665-997c-e81dbc83e8a7', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tbluser`\",\"time\":\"0.73\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":19,\"hash\":\"8bc58e25f7f628eac03bbbfc907e8ee3\",\"hostname\":\"zegapc\"}', '2020-10-17 15:22:52'),
(52, '91c8f56f-71b3-4830-bd51-2e00eb64e060', '91c8f56f-786c-4665-997c-e81dbc83e8a7', NULL, 1, 'view', '{\"name\":\"send_email\",\"path\":\"\\\\resources\\\\views\\/send_email.blade.php\",\"data\":[\"all_user\",\"partner\"],\"hostname\":\"zegapc\"}', '2020-10-17 15:22:52');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(53, '91c8f56f-7637-4ebd-ae5e-0fe5574e4ce7', '91c8f56f-786c-4665-997c-e81dbc83e8a7', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\EmailController@index\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko\\/20100101 Firefox\\/81.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,*\\/*;q=0.8\",\"accept-language\":\"en-US,en;q=0.5\",\"accept-encoding\":\"gzip, deflate\",\"connection\":\"keep-alive\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6ImIrQmNlL2FXYmtwK0NXNnNuOFEvY3c9PSIsInZhbHVlIjoiMDdEa1VWeENPS1R5SDQveG0vQzFIUE1XL2w3Z1oyclR3blRZRUtCQ2Ewak1TcU93THYzTHcxaW1mcjNVaXJ3REJ5NWtKekJ0OVpEZVg5RjRiSkxzeXFNOTdUSUNIazI2dEhRcHNtQ3VHYkxMZkhlTzd1SHp4Y0ttVC9Pdyt4WFEiLCJtYWMiOiJjYzMwNTg3MzczNDk0ZjQyYTRhNmQxNWQ3NDE2MGNkNWY1NGI2ZTdjZDA3ZjkyZjc1NWI0MTIzZTAzOWM3NTFhIn0%3D; laravel_session=eyJpdiI6InRMR3RLeUMxbkVRVkR1TXdjQXR0NFE9PSIsInZhbHVlIjoiUytqdlRUUERiVnNRaTYyNEt1TFJQcERBWk9DbEhUandpcTlsSnZHOXFMazJMNUpkcHpOR01QY2RxMDNyZFB5Y3RCSGsxU1dSSmkrZnhHWnhuYm85eTVUaUxodlB3b2tJMUdETlNXcm43aW1jOUIwT1Bxcmp3RUVQZkpSNUhaTFgiLCJtYWMiOiIzYmEyMWE0ODdjMWZkYTQxMTJkNjE3Yzg2NDkwYTMyMDJkOGU1ZWM3NzMxZTg0MmUzOGZiMzc3ZWRlYWRhZWUzIn0%3D\",\"upgrade-insecure-requests\":\"1\"},\"payload\":[],\"session\":{\"_token\":\"M34xw3tkR3jlMZGvCElZQCTWWyY02uOFPyeUHruZ\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\resources\\\\views\\/send_email.blade.php\",\"data\":{\"all_user\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":38,\"UserName\":\"zega febrianto\",\"UserEmail\":\"randombox38@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-08-31\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$QAiuuj420chlrISOvxmrJe5acaql8fjXjI6YucMWrDoFOFoWWfmLG\",\"UserAvatar\":\"38.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/4.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-08-31 16:33:39\",\"UserXP\":0,\"UserOTP\":\"EIDNRc\",\"UserOTP_b\":null,\"online\":0},{\"id\":42,\"UserName\":\"zega febriantoro\",\"UserEmail\":\"xegalol@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-01\",\"alamat\":\"jalan bengawan solo gg 6 no 19 rt 5 rw 3\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$vZ.Up7wtjVSwM6gfxU1u9.PLwhAHlN.ORNTWeymAzJlGFm4sUtnyq\",\"UserAvatar\":\"42.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/38.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-01 15:01:38\",\"UserXP\":0,\"UserOTP\":\"mK0Igk\",\"UserOTP_b\":\"lsgTuZUr\",\"online\":1},{\"id\":43,\"UserName\":\"zega febrianti\",\"UserEmail\":\"randombox381@gmail.com\",\"tempat_lahir\":\"Malang\",\"tgl_lahir\":\"2020-09-06\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"Pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$jy5C1BXHzcT0GcZpuFsrtuCvFWBpuq88LgTlu.LIv7ucjOPEiXYCG\",\"UserAvatar\":\"43.jpg\",\"fotoKTP\":\"42.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:35:40\",\"UserXP\":0,\"UserOTP\":\"hLryDa\",\"UserOTP_b\":null,\"online\":0},{\"id\":44,\"UserName\":\"Sugeng\",\"UserEmail\":\"randombox382@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-11\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$2V5rEESI9vzUYHKIoTq4xeJL6j4NzpO4YtDOTMGQgrofmdQ1E5JPO\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"43.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:38:03\",\"UserXP\":0,\"UserOTP\":\"pGQkXd\",\"UserOTP_b\":null,\"online\":0},{\"id\":45,\"UserName\":\"Almira\",\"UserEmail\":\"almira@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081098120929\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$.5o2VXmibXwYLf\\/GA3Byru4y\\/shrSTnIMA9pVPWqsmJqUunP0g5eK\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"44.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 14:44:21\",\"UserXP\":0,\"UserOTP\":\"a8FS0Y\",\"UserOTP_b\":null,\"online\":0},{\"id\":46,\"UserName\":\"Zsa zsa\",\"UserEmail\":\"zsa@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"garum\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"bapak zsazsa\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$hNTW2nW12vM6UJL4uFWZMOiNa9hO\\/sISZJqALlP8U3N51lgEw33jm\",\"UserAvatar\":\"46.jpg\",\"fotoKTP\":\"45.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 15:29:17\",\"UserXP\":0,\"UserOTP\":\"VCm7jE\",\"UserOTP_b\":null,\"online\":0},{\"id\":47,\"UserName\":\"Deddy Corbuzier\",\"UserEmail\":\"dedy@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-10-02\",\"alamat\":\"jalan rambutan\",\"telp\":\"081081081081\",\"agama\":null,\"orangtua\":\"bapak dedy\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$KU3ilDF9DkCzzFn3yW4yfOoywoZElfpMuomGab2IQG8YhQFA5ruU6\",\"UserAvatar\":\"47.jpg\",\"fotoKTP\":\"46.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-10-02 13:50:29\",\"UserXP\":0,\"UserOTP\":\"LgwpRK\",\"UserOTP_b\":null,\"online\":0}]},\"partner\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":1,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"9999\",\"alamat\":\"Kediri\",\"kepala\":\"Rohmat\",\"telpkepala\":\"888\",\"fotoKTP\":\"2\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":2,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"io\",\"alamat\":\"jojo\",\"kepala\":\"oojo\",\"telpkepala\":\"ooko\",\"fotoKTP\":\"909356294\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":3,\"instansi\":\"SMP negeri 5 kediri\",\"telpinstansi\":\"1111\",\"alamat\":\"Kediri\",\"kepala\":\"JIto\",\"telpkepala\":\"777\",\"fotoKTP\":\"8103b2331649b0521d687def5ed52fe7.png\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":4,\"instansi\":\"SD\",\"telpinstansi\":\"999\",\"alamat\":\"jkjkjk\",\"kepala\":\"9i9\",\"telpkepala\":\"kkoko\",\"fotoKTP\":\"b8baf9999b5ee6f75fb45e5f1039b409.PNG\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":5,\"instansi\":\"hoho\",\"telpinstansi\":\"88\",\"alamat\":\"ininini\",\"kepala\":\"ninini\",\"telpkepala\":\"55\",\"fotoKTP\":\"157599be8731e313424dff83d19b3048.jpg\",\"program\":\"english,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":6,\"instansi\":\"CV. Astar\",\"telpinstansi\":\"81252867991\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"9872148798\",\"fotoKTP\":\"CV. Astar_zega_4M1qTz.jpg\",\"program\":\"CV. Astar\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:32:59\"},{\"id\":7,\"instansi\":\"CV. Astar 2\",\"telpinstansi\":\"1234123412\",\"alamat\":\"jl bengawan solo gg 6 no 20\",\"kepala\":\"zega\",\"telpkepala\":\"12314124124\",\"fotoKTP\":\"CV. Astar 2_zega_R2rzTW.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:36:15\"},{\"id\":8,\"instansi\":\"zega\",\"telpinstansi\":\"12313123\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"124124124\",\"fotoKTP\":\"zega_zega_oxPmRS.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:37:59\"},{\"id\":9,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"097987124\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"087214970\",\"fotoKTP\":\"CV. Curiculum Vitae_zega_534M4O.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:42:21\"},{\"id\":10,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"102920947\",\"alamat\":\"jl bengawan solo gg 6 no 192\",\"kepala\":\"Pak\",\"telpkepala\":\"9812398498124\",\"fotoKTP\":\"CV. Curiculum Vitae_Pak_M029MS.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-05 13:30:20\"}]}}},\"duration\":353,\"memory\":2,\"hostname\":\"zegapc\"}', '2020-10-17 15:22:52'),
(54, '91c8f620-161d-4cf2-ba93-c4c98d1c64fe', '91c8f620-28c7-4689-91fd-d0a148152bcb', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tblpartnership`\",\"time\":\"1.57\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":18,\"hash\":\"77aa2cbab5f6c73f0b1dfe29763108ce\",\"hostname\":\"zegapc\"}', '2020-10-17 15:24:47'),
(55, '91c8f620-1c8e-4c6f-9bd3-49aa332cb7b4', '91c8f620-28c7-4689-91fd-d0a148152bcb', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tbluser`\",\"time\":\"0.72\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":19,\"hash\":\"8bc58e25f7f628eac03bbbfc907e8ee3\",\"hostname\":\"zegapc\"}', '2020-10-17 15:24:47'),
(56, '91c8f620-2087-4c9e-8b75-77bd63f0ab61', '91c8f620-28c7-4689-91fd-d0a148152bcb', NULL, 1, 'view', '{\"name\":\"send_email\",\"path\":\"\\\\resources\\\\views\\/send_email.blade.php\",\"data\":[\"all_user\",\"partner\"],\"hostname\":\"zegapc\"}', '2020-10-17 15:24:47'),
(57, '91c8f620-254b-47f2-b817-3ea19357256c', '91c8f620-28c7-4689-91fd-d0a148152bcb', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\EmailController@index\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko\\/20100101 Firefox\\/81.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,*\\/*;q=0.8\",\"accept-language\":\"en-US,en;q=0.5\",\"accept-encoding\":\"gzip, deflate\",\"connection\":\"keep-alive\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6InBqRFIxWXQrTUhiZE1SSCszZmh4Y2c9PSIsInZhbHVlIjoiL2dhczJRclUwUytmZUhMV2lQdGo0aFI2NmNMMDBCeXpma05EWWhvejY4RHNjMDhkd0RCRmtiT2VkSm5BQ0JhUG9LVlBrZnRCNE16cFZjOFpZQ05EMEJ5VjA2N1dLcFg2aVJ0ZDJWY3BUWDlFU05aUjdCL1lrVm5rNk5oTS8xRkoiLCJtYWMiOiI1MWU2Yzg0ZGY1MmE2NTJmZTJiYTgzYmE0ODYyMGFkMGVjNTMyYjkyZDgyODM3MzNiYzNhM2RmZWYxMGRhZWYyIn0%3D; laravel_session=eyJpdiI6IjVEUTZmV1dMZVI2emgzd0wwRHJpZlE9PSIsInZhbHVlIjoia0JPQTNGeFEreVJYdXE0ekpra0E5NUgzdDVZSWZYTXkvKzgvNWVQZjFSc2ozSGtaODZwUWlyT0FTcUp0bzNqYUs0eHkvS1hRV2JHbmFPaDkxcGF5TGtzY3B6V2VwdE9FemptV0ZCK0lGV2FBSFVhTDkwUlRVZU14U0Y0a01rbU0iLCJtYWMiOiJlNjc0YzZiNTExMmVhNWM2ZjljOGQ3ZjMwZDI1NjYyY2YwZGI0OTMzMWZlMWU2MGQ4NDc2MmMzYmQzNzRjNjc5In0%3D\",\"upgrade-insecure-requests\":\"1\",\"cache-control\":\"max-age=0\"},\"payload\":[],\"session\":{\"_token\":\"M34xw3tkR3jlMZGvCElZQCTWWyY02uOFPyeUHruZ\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\resources\\\\views\\/send_email.blade.php\",\"data\":{\"all_user\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":38,\"UserName\":\"zega febrianto\",\"UserEmail\":\"randombox38@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-08-31\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$QAiuuj420chlrISOvxmrJe5acaql8fjXjI6YucMWrDoFOFoWWfmLG\",\"UserAvatar\":\"38.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/4.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-08-31 16:33:39\",\"UserXP\":0,\"UserOTP\":\"EIDNRc\",\"UserOTP_b\":null,\"online\":0},{\"id\":42,\"UserName\":\"zega febriantoro\",\"UserEmail\":\"xegalol@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-01\",\"alamat\":\"jalan bengawan solo gg 6 no 19 rt 5 rw 3\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$vZ.Up7wtjVSwM6gfxU1u9.PLwhAHlN.ORNTWeymAzJlGFm4sUtnyq\",\"UserAvatar\":\"42.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/38.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-01 15:01:38\",\"UserXP\":0,\"UserOTP\":\"mK0Igk\",\"UserOTP_b\":\"lsgTuZUr\",\"online\":1},{\"id\":43,\"UserName\":\"zega febrianti\",\"UserEmail\":\"randombox381@gmail.com\",\"tempat_lahir\":\"Malang\",\"tgl_lahir\":\"2020-09-06\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"Pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$jy5C1BXHzcT0GcZpuFsrtuCvFWBpuq88LgTlu.LIv7ucjOPEiXYCG\",\"UserAvatar\":\"43.jpg\",\"fotoKTP\":\"42.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:35:40\",\"UserXP\":0,\"UserOTP\":\"hLryDa\",\"UserOTP_b\":null,\"online\":0},{\"id\":44,\"UserName\":\"Sugeng\",\"UserEmail\":\"randombox382@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-11\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$2V5rEESI9vzUYHKIoTq4xeJL6j4NzpO4YtDOTMGQgrofmdQ1E5JPO\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"43.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:38:03\",\"UserXP\":0,\"UserOTP\":\"pGQkXd\",\"UserOTP_b\":null,\"online\":0},{\"id\":45,\"UserName\":\"Almira\",\"UserEmail\":\"almira@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081098120929\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$.5o2VXmibXwYLf\\/GA3Byru4y\\/shrSTnIMA9pVPWqsmJqUunP0g5eK\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"44.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 14:44:21\",\"UserXP\":0,\"UserOTP\":\"a8FS0Y\",\"UserOTP_b\":null,\"online\":0},{\"id\":46,\"UserName\":\"Zsa zsa\",\"UserEmail\":\"zsa@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"garum\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"bapak zsazsa\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$hNTW2nW12vM6UJL4uFWZMOiNa9hO\\/sISZJqALlP8U3N51lgEw33jm\",\"UserAvatar\":\"46.jpg\",\"fotoKTP\":\"45.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 15:29:17\",\"UserXP\":0,\"UserOTP\":\"VCm7jE\",\"UserOTP_b\":null,\"online\":0},{\"id\":47,\"UserName\":\"Deddy Corbuzier\",\"UserEmail\":\"dedy@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-10-02\",\"alamat\":\"jalan rambutan\",\"telp\":\"081081081081\",\"agama\":null,\"orangtua\":\"bapak dedy\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$KU3ilDF9DkCzzFn3yW4yfOoywoZElfpMuomGab2IQG8YhQFA5ruU6\",\"UserAvatar\":\"47.jpg\",\"fotoKTP\":\"46.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-10-02 13:50:29\",\"UserXP\":0,\"UserOTP\":\"LgwpRK\",\"UserOTP_b\":null,\"online\":0}]},\"partner\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":1,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"9999\",\"alamat\":\"Kediri\",\"kepala\":\"Rohmat\",\"telpkepala\":\"888\",\"fotoKTP\":\"2\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":2,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"io\",\"alamat\":\"jojo\",\"kepala\":\"oojo\",\"telpkepala\":\"ooko\",\"fotoKTP\":\"909356294\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":3,\"instansi\":\"SMP negeri 5 kediri\",\"telpinstansi\":\"1111\",\"alamat\":\"Kediri\",\"kepala\":\"JIto\",\"telpkepala\":\"777\",\"fotoKTP\":\"8103b2331649b0521d687def5ed52fe7.png\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":4,\"instansi\":\"SD\",\"telpinstansi\":\"999\",\"alamat\":\"jkjkjk\",\"kepala\":\"9i9\",\"telpkepala\":\"kkoko\",\"fotoKTP\":\"b8baf9999b5ee6f75fb45e5f1039b409.PNG\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":5,\"instansi\":\"hoho\",\"telpinstansi\":\"88\",\"alamat\":\"ininini\",\"kepala\":\"ninini\",\"telpkepala\":\"55\",\"fotoKTP\":\"157599be8731e313424dff83d19b3048.jpg\",\"program\":\"english,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":6,\"instansi\":\"CV. Astar\",\"telpinstansi\":\"81252867991\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"9872148798\",\"fotoKTP\":\"CV. Astar_zega_4M1qTz.jpg\",\"program\":\"CV. Astar\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:32:59\"},{\"id\":7,\"instansi\":\"CV. Astar 2\",\"telpinstansi\":\"1234123412\",\"alamat\":\"jl bengawan solo gg 6 no 20\",\"kepala\":\"zega\",\"telpkepala\":\"12314124124\",\"fotoKTP\":\"CV. Astar 2_zega_R2rzTW.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:36:15\"},{\"id\":8,\"instansi\":\"zega\",\"telpinstansi\":\"12313123\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"124124124\",\"fotoKTP\":\"zega_zega_oxPmRS.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:37:59\"},{\"id\":9,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"097987124\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"087214970\",\"fotoKTP\":\"CV. Curiculum Vitae_zega_534M4O.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:42:21\"},{\"id\":10,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"102920947\",\"alamat\":\"jl bengawan solo gg 6 no 192\",\"kepala\":\"Pak\",\"telpkepala\":\"9812398498124\",\"fotoKTP\":\"CV. Curiculum Vitae_Pak_M029MS.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-05 13:30:20\"}]}}},\"duration\":413,\"memory\":2,\"hostname\":\"zegapc\"}', '2020-10-17 15:24:47'),
(58, '91c8f67a-9f1a-4f1c-9305-a081020bb5f7', '91c8f67a-ae9a-4d65-9ffe-fe81695e2a37', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tblpartnership`\",\"time\":\"1.26\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":18,\"hash\":\"77aa2cbab5f6c73f0b1dfe29763108ce\",\"hostname\":\"zegapc\"}', '2020-10-17 15:25:47'),
(59, '91c8f67a-a533-4734-b9ec-67b51a375618', '91c8f67a-ae9a-4d65-9ffe-fe81695e2a37', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tbluser`\",\"time\":\"0.76\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":19,\"hash\":\"8bc58e25f7f628eac03bbbfc907e8ee3\",\"hostname\":\"zegapc\"}', '2020-10-17 15:25:47'),
(60, '91c8f67a-a8d5-4f4d-a80b-561b215279c1', '91c8f67a-ae9a-4d65-9ffe-fe81695e2a37', NULL, 1, 'view', '{\"name\":\"send_email\",\"path\":\"\\\\resources\\\\views\\/send_email.blade.php\",\"data\":[\"all_user\",\"partner\"],\"hostname\":\"zegapc\"}', '2020-10-17 15:25:47'),
(61, '91c8f67a-ac5e-47d9-8a1c-9fc84767c8d5', '91c8f67a-ae9a-4d65-9ffe-fe81695e2a37', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\EmailController@index\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko\\/20100101 Firefox\\/81.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,*\\/*;q=0.8\",\"accept-language\":\"en-US,en;q=0.5\",\"accept-encoding\":\"gzip, deflate\",\"connection\":\"keep-alive\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IjB2ZHRZd051QlB4UGsxY3lEbFFIZnc9PSIsInZhbHVlIjoiYjFEOTNqejdETjEyazJQWWpCa2lZLzd2VUlMa1NYaFVuUFFrazJsODVmUlNzWXc1cVR5dFJIeHJkYnhwQ2ZtMi91T0pBeXlsR21KMDJhS1hIdXoydVBrdUZMdTMyZ2FlT05PeGFpeFVHV3hNTWl2Vy9HcnRQUXJTZWFxYWhPQTciLCJtYWMiOiJmOGU5N2M5Mzk1NWI5MTIwMTBhMTcwYTUxYzU0NzNhMTgyNzAwMTEzZGMzOWZmODEyYzUyNjIzYjJhMzFmMjI2In0%3D; laravel_session=eyJpdiI6InNpTWpGamJ0SVJaeGM4NUJMSE1wdXc9PSIsInZhbHVlIjoiNGhjTkpWKzBaM3FCVTJNVFFyakswSTVUYXI4c1RWQlczYmFacDJ5T2tGL1N0cElWaWJXVktpUUYvdSsweVFtWDRyc3ZYMzVoNWJxRzdIeUdhQzlMMUdZQ1hWMmZoUGZxOFN0NjZ1R3E2aFJzT25CQkdXeG1QTEw0UWZvVEpIL2oiLCJtYWMiOiI2MzRhOTZiMDM5MjQ4M2YzOGI3MjRiOWM5YzRjMmRkYjNjMDUxOTRkY2FhMTE0OTA0NDNiOWZiMWM1NGZlMTU4In0%3D\",\"upgrade-insecure-requests\":\"1\",\"cache-control\":\"max-age=0\"},\"payload\":[],\"session\":{\"_token\":\"M34xw3tkR3jlMZGvCElZQCTWWyY02uOFPyeUHruZ\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\resources\\\\views\\/send_email.blade.php\",\"data\":{\"all_user\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":38,\"UserName\":\"zega febrianto\",\"UserEmail\":\"randombox38@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-08-31\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$QAiuuj420chlrISOvxmrJe5acaql8fjXjI6YucMWrDoFOFoWWfmLG\",\"UserAvatar\":\"38.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/4.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-08-31 16:33:39\",\"UserXP\":0,\"UserOTP\":\"EIDNRc\",\"UserOTP_b\":null,\"online\":0},{\"id\":42,\"UserName\":\"zega febriantoro\",\"UserEmail\":\"xegalol@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-01\",\"alamat\":\"jalan bengawan solo gg 6 no 19 rt 5 rw 3\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$vZ.Up7wtjVSwM6gfxU1u9.PLwhAHlN.ORNTWeymAzJlGFm4sUtnyq\",\"UserAvatar\":\"42.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/38.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-01 15:01:38\",\"UserXP\":0,\"UserOTP\":\"mK0Igk\",\"UserOTP_b\":\"lsgTuZUr\",\"online\":1},{\"id\":43,\"UserName\":\"zega febrianti\",\"UserEmail\":\"randombox381@gmail.com\",\"tempat_lahir\":\"Malang\",\"tgl_lahir\":\"2020-09-06\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"Pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$jy5C1BXHzcT0GcZpuFsrtuCvFWBpuq88LgTlu.LIv7ucjOPEiXYCG\",\"UserAvatar\":\"43.jpg\",\"fotoKTP\":\"42.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:35:40\",\"UserXP\":0,\"UserOTP\":\"hLryDa\",\"UserOTP_b\":null,\"online\":0},{\"id\":44,\"UserName\":\"Sugeng\",\"UserEmail\":\"randombox382@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-11\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$2V5rEESI9vzUYHKIoTq4xeJL6j4NzpO4YtDOTMGQgrofmdQ1E5JPO\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"43.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:38:03\",\"UserXP\":0,\"UserOTP\":\"pGQkXd\",\"UserOTP_b\":null,\"online\":0},{\"id\":45,\"UserName\":\"Almira\",\"UserEmail\":\"almira@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081098120929\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$.5o2VXmibXwYLf\\/GA3Byru4y\\/shrSTnIMA9pVPWqsmJqUunP0g5eK\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"44.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 14:44:21\",\"UserXP\":0,\"UserOTP\":\"a8FS0Y\",\"UserOTP_b\":null,\"online\":0},{\"id\":46,\"UserName\":\"Zsa zsa\",\"UserEmail\":\"zsa@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"garum\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"bapak zsazsa\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$hNTW2nW12vM6UJL4uFWZMOiNa9hO\\/sISZJqALlP8U3N51lgEw33jm\",\"UserAvatar\":\"46.jpg\",\"fotoKTP\":\"45.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 15:29:17\",\"UserXP\":0,\"UserOTP\":\"VCm7jE\",\"UserOTP_b\":null,\"online\":0},{\"id\":47,\"UserName\":\"Deddy Corbuzier\",\"UserEmail\":\"dedy@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-10-02\",\"alamat\":\"jalan rambutan\",\"telp\":\"081081081081\",\"agama\":null,\"orangtua\":\"bapak dedy\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$KU3ilDF9DkCzzFn3yW4yfOoywoZElfpMuomGab2IQG8YhQFA5ruU6\",\"UserAvatar\":\"47.jpg\",\"fotoKTP\":\"46.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-10-02 13:50:29\",\"UserXP\":0,\"UserOTP\":\"LgwpRK\",\"UserOTP_b\":null,\"online\":0}]},\"partner\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":1,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"9999\",\"alamat\":\"Kediri\",\"kepala\":\"Rohmat\",\"telpkepala\":\"888\",\"fotoKTP\":\"2\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":2,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"io\",\"alamat\":\"jojo\",\"kepala\":\"oojo\",\"telpkepala\":\"ooko\",\"fotoKTP\":\"909356294\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":3,\"instansi\":\"SMP negeri 5 kediri\",\"telpinstansi\":\"1111\",\"alamat\":\"Kediri\",\"kepala\":\"JIto\",\"telpkepala\":\"777\",\"fotoKTP\":\"8103b2331649b0521d687def5ed52fe7.png\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":4,\"instansi\":\"SD\",\"telpinstansi\":\"999\",\"alamat\":\"jkjkjk\",\"kepala\":\"9i9\",\"telpkepala\":\"kkoko\",\"fotoKTP\":\"b8baf9999b5ee6f75fb45e5f1039b409.PNG\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":5,\"instansi\":\"hoho\",\"telpinstansi\":\"88\",\"alamat\":\"ininini\",\"kepala\":\"ninini\",\"telpkepala\":\"55\",\"fotoKTP\":\"157599be8731e313424dff83d19b3048.jpg\",\"program\":\"english,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":6,\"instansi\":\"CV. Astar\",\"telpinstansi\":\"81252867991\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"9872148798\",\"fotoKTP\":\"CV. Astar_zega_4M1qTz.jpg\",\"program\":\"CV. Astar\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:32:59\"},{\"id\":7,\"instansi\":\"CV. Astar 2\",\"telpinstansi\":\"1234123412\",\"alamat\":\"jl bengawan solo gg 6 no 20\",\"kepala\":\"zega\",\"telpkepala\":\"12314124124\",\"fotoKTP\":\"CV. Astar 2_zega_R2rzTW.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:36:15\"},{\"id\":8,\"instansi\":\"zega\",\"telpinstansi\":\"12313123\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"124124124\",\"fotoKTP\":\"zega_zega_oxPmRS.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:37:59\"},{\"id\":9,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"097987124\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"087214970\",\"fotoKTP\":\"CV. Curiculum Vitae_zega_534M4O.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:42:21\"},{\"id\":10,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"102920947\",\"alamat\":\"jl bengawan solo gg 6 no 192\",\"kepala\":\"Pak\",\"telpkepala\":\"9812398498124\",\"fotoKTP\":\"CV. Curiculum Vitae_Pak_M029MS.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-05 13:30:20\"}]}}},\"duration\":368,\"memory\":4,\"hostname\":\"zegapc\"}', '2020-10-17 15:25:47'),
(62, '91c8f6d8-a29d-47e3-8ef4-47c707d33df6', '91c8f6d8-b040-4348-b1b0-f1a3a62b90d0', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tblpartnership`\",\"time\":\"1.26\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":18,\"hash\":\"77aa2cbab5f6c73f0b1dfe29763108ce\",\"hostname\":\"zegapc\"}', '2020-10-17 15:26:48'),
(63, '91c8f6d8-a7bf-4ea8-91a4-4751c9f6b8ce', '91c8f6d8-b040-4348-b1b0-f1a3a62b90d0', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tbluser`\",\"time\":\"0.74\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":19,\"hash\":\"8bc58e25f7f628eac03bbbfc907e8ee3\",\"hostname\":\"zegapc\"}', '2020-10-17 15:26:48'),
(64, '91c8f6d8-aa08-4379-96c6-8a1a19512b8a', '91c8f6d8-b040-4348-b1b0-f1a3a62b90d0', NULL, 1, 'view', '{\"name\":\"send_email\",\"path\":\"\\\\resources\\\\views\\/send_email.blade.php\",\"data\":[\"all_user\",\"partner\"],\"hostname\":\"zegapc\"}', '2020-10-17 15:26:48'),
(65, '91c8f6d8-ae8b-45f0-bdfb-646302af0d84', '91c8f6d8-b040-4348-b1b0-f1a3a62b90d0', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\EmailController@index\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko\\/20100101 Firefox\\/81.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,*\\/*;q=0.8\",\"accept-language\":\"en-US,en;q=0.5\",\"accept-encoding\":\"gzip, deflate\",\"connection\":\"keep-alive\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IkNWb2x4RWRHNFJCSCs2ZWRtOTVWVWc9PSIsInZhbHVlIjoic3cxc2RWdERPRndqZlhpelJhdFJnY1A1dUplZWxYNTljY3NVbDBmeHMrazZrSXlGaVUrRGFBR0Y3RjZuditMN3JuSExuU253UU1CTGpubm9kSzZSU3FBZEFFNlRPZlIvVEtxRjdQUmpFWVFuc1RrS1J0WTBBaFMwNmVUemNvbmIiLCJtYWMiOiJhNTRiMGYzMTIxODcxZTVlMDNmOTRkYjYxOTgxNzg1ZjVkNzMzZDExMmZlNTE5Y2M3YzRkN2Y0MzI4YjRjNWNiIn0%3D; laravel_session=eyJpdiI6ImN3R2c2Y2liM1JiRVJOdDhCREdWS0E9PSIsInZhbHVlIjoickt2T1pNMDNMSzNzRmN6aEdKUTlocTBBOUNKSE9POXJPZ3FUQjYrWjdHNENPNExHZVlFWGl4dUszZ3owRzdRTEYyTHhIWFQxbDNPN0NmdURCRGsyM1FuUldHUFRmN3JWTk5OdmVpSmlXK2VZd3BtSlBTaG50eER3QzgwL2V0M0oiLCJtYWMiOiJkMTAzZmNjYTYxZmRhYzA2YTI2NThiOThhZmQxN2MwY2VmOGU2ZmEyNmEzZGIwYmJmMTc1NTc3ZWFjNjY5ZDQzIn0%3D\",\"upgrade-insecure-requests\":\"1\",\"cache-control\":\"max-age=0\"},\"payload\":[],\"session\":{\"_token\":\"M34xw3tkR3jlMZGvCElZQCTWWyY02uOFPyeUHruZ\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\resources\\\\views\\/send_email.blade.php\",\"data\":{\"all_user\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":38,\"UserName\":\"zega febrianto\",\"UserEmail\":\"randombox38@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-08-31\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$QAiuuj420chlrISOvxmrJe5acaql8fjXjI6YucMWrDoFOFoWWfmLG\",\"UserAvatar\":\"38.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/4.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-08-31 16:33:39\",\"UserXP\":0,\"UserOTP\":\"EIDNRc\",\"UserOTP_b\":null,\"online\":0},{\"id\":42,\"UserName\":\"zega febriantoro\",\"UserEmail\":\"xegalol@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-01\",\"alamat\":\"jalan bengawan solo gg 6 no 19 rt 5 rw 3\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$vZ.Up7wtjVSwM6gfxU1u9.PLwhAHlN.ORNTWeymAzJlGFm4sUtnyq\",\"UserAvatar\":\"42.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/38.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-01 15:01:38\",\"UserXP\":0,\"UserOTP\":\"mK0Igk\",\"UserOTP_b\":\"lsgTuZUr\",\"online\":1},{\"id\":43,\"UserName\":\"zega febrianti\",\"UserEmail\":\"randombox381@gmail.com\",\"tempat_lahir\":\"Malang\",\"tgl_lahir\":\"2020-09-06\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"Pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$jy5C1BXHzcT0GcZpuFsrtuCvFWBpuq88LgTlu.LIv7ucjOPEiXYCG\",\"UserAvatar\":\"43.jpg\",\"fotoKTP\":\"42.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:35:40\",\"UserXP\":0,\"UserOTP\":\"hLryDa\",\"UserOTP_b\":null,\"online\":0},{\"id\":44,\"UserName\":\"Sugeng\",\"UserEmail\":\"randombox382@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-11\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$2V5rEESI9vzUYHKIoTq4xeJL6j4NzpO4YtDOTMGQgrofmdQ1E5JPO\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"43.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:38:03\",\"UserXP\":0,\"UserOTP\":\"pGQkXd\",\"UserOTP_b\":null,\"online\":0},{\"id\":45,\"UserName\":\"Almira\",\"UserEmail\":\"almira@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081098120929\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$.5o2VXmibXwYLf\\/GA3Byru4y\\/shrSTnIMA9pVPWqsmJqUunP0g5eK\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"44.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 14:44:21\",\"UserXP\":0,\"UserOTP\":\"a8FS0Y\",\"UserOTP_b\":null,\"online\":0},{\"id\":46,\"UserName\":\"Zsa zsa\",\"UserEmail\":\"zsa@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"garum\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"bapak zsazsa\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$hNTW2nW12vM6UJL4uFWZMOiNa9hO\\/sISZJqALlP8U3N51lgEw33jm\",\"UserAvatar\":\"46.jpg\",\"fotoKTP\":\"45.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 15:29:17\",\"UserXP\":0,\"UserOTP\":\"VCm7jE\",\"UserOTP_b\":null,\"online\":0},{\"id\":47,\"UserName\":\"Deddy Corbuzier\",\"UserEmail\":\"dedy@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-10-02\",\"alamat\":\"jalan rambutan\",\"telp\":\"081081081081\",\"agama\":null,\"orangtua\":\"bapak dedy\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$KU3ilDF9DkCzzFn3yW4yfOoywoZElfpMuomGab2IQG8YhQFA5ruU6\",\"UserAvatar\":\"47.jpg\",\"fotoKTP\":\"46.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-10-02 13:50:29\",\"UserXP\":0,\"UserOTP\":\"LgwpRK\",\"UserOTP_b\":null,\"online\":0}]},\"partner\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":1,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"9999\",\"alamat\":\"Kediri\",\"kepala\":\"Rohmat\",\"telpkepala\":\"888\",\"fotoKTP\":\"2\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":2,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"io\",\"alamat\":\"jojo\",\"kepala\":\"oojo\",\"telpkepala\":\"ooko\",\"fotoKTP\":\"909356294\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":3,\"instansi\":\"SMP negeri 5 kediri\",\"telpinstansi\":\"1111\",\"alamat\":\"Kediri\",\"kepala\":\"JIto\",\"telpkepala\":\"777\",\"fotoKTP\":\"8103b2331649b0521d687def5ed52fe7.png\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":4,\"instansi\":\"SD\",\"telpinstansi\":\"999\",\"alamat\":\"jkjkjk\",\"kepala\":\"9i9\",\"telpkepala\":\"kkoko\",\"fotoKTP\":\"b8baf9999b5ee6f75fb45e5f1039b409.PNG\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":5,\"instansi\":\"hoho\",\"telpinstansi\":\"88\",\"alamat\":\"ininini\",\"kepala\":\"ninini\",\"telpkepala\":\"55\",\"fotoKTP\":\"157599be8731e313424dff83d19b3048.jpg\",\"program\":\"english,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":6,\"instansi\":\"CV. Astar\",\"telpinstansi\":\"81252867991\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"9872148798\",\"fotoKTP\":\"CV. Astar_zega_4M1qTz.jpg\",\"program\":\"CV. Astar\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:32:59\"},{\"id\":7,\"instansi\":\"CV. Astar 2\",\"telpinstansi\":\"1234123412\",\"alamat\":\"jl bengawan solo gg 6 no 20\",\"kepala\":\"zega\",\"telpkepala\":\"12314124124\",\"fotoKTP\":\"CV. Astar 2_zega_R2rzTW.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:36:15\"},{\"id\":8,\"instansi\":\"zega\",\"telpinstansi\":\"12313123\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"124124124\",\"fotoKTP\":\"zega_zega_oxPmRS.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:37:59\"},{\"id\":9,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"097987124\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"087214970\",\"fotoKTP\":\"CV. Curiculum Vitae_zega_534M4O.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:42:21\"},{\"id\":10,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"102920947\",\"alamat\":\"jl bengawan solo gg 6 no 192\",\"kepala\":\"Pak\",\"telpkepala\":\"9812398498124\",\"fotoKTP\":\"CV. Curiculum Vitae_Pak_M029MS.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-05 13:30:20\"}]}}},\"duration\":351,\"memory\":2,\"hostname\":\"zegapc\"}', '2020-10-17 15:26:48'),
(66, '91c8f757-173d-441d-9de5-8398396f0108', '91c8f757-459e-4878-87da-8cd1f16c9990', NULL, 1, 'log', '{\"level\":\"info\",\"message\":\"Start\",\"context\":[],\"hostname\":\"zegapc\"}', '2020-10-17 15:28:11'),
(67, '91c8f757-2f67-4702-adb8-65de26769e4b', '91c8f757-459e-4878-87da-8cd1f16c9990', NULL, 1, 'job', '{\"status\":\"pending\",\"connection\":\"database\",\"queue\":\"default\",\"name\":\"App\\\\Mail\\\\KirimEmail\",\"tries\":null,\"timeout\":null,\"data\":{\"mailable\":{\"class\":\"App\\\\Mail\\\\KirimEmail\",\"properties\":{\"recipient\":{\"email\":\"xegalol@gmail.com\",\"subjek\":\"akjb\",\"konten\":\"sajc jiuqwfiub\"},\"locale\":null,\"from\":[],\"to\":[{\"name\":null,\"address\":\"xegalol@gmail.com\"}],\"cc\":[],\"bcc\":[],\"replyTo\":[],\"subject\":null,\"view\":null,\"textView\":null,\"viewData\":[],\"attachments\":[],\"rawAttachments\":[],\"diskAttachments\":[],\"callbacks\":[],\"theme\":null,\"mailer\":\"smtp\",\"connection\":null,\"queue\":null,\"chainConnection\":null,\"chainQueue\":null,\"chainCatchCallbacks\":null,\"delay\":null,\"middleware\":[],\"chained\":[]}},\"tries\":null,\"timeout\":null},\"hostname\":\"zegapc\"}', '2020-10-17 15:28:11'),
(68, '91c8f757-4155-484c-b2cb-5fb856000cde', '91c8f757-459e-4878-87da-8cd1f16c9990', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `jobs` (`queue`, `attempts`, `reserved_at`, `available_at`, `created_at`, `payload`) values (\'default\', 0, null, 1602923291, 1602923291, \'{\\\\\\\"uuid\\\\\\\":\\\\\\\"9bdd7c14-4437-4d7a-9c10-5758000189b5\\\\\\\",\\\\\\\"displayName\\\\\\\":\\\\\\\"App\\\\\\\\Mail\\\\\\\\KirimEmail\\\\\\\",\\\\\\\"job\\\\\\\":\\\\\\\"Illuminate\\\\\\\\Queue\\\\\\\\CallQueuedHandler@call\\\\\\\",\\\\\\\"maxTries\\\\\\\":null,\\\\\\\"maxExceptions\\\\\\\":null,\\\\\\\"backoff\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"timeout\\\\\\\":null,\\\\\\\"retryUntil\\\\\\\":null,\\\\\\\"data\\\\\\\":{\\\\\\\"commandName\\\\\\\":\\\\\\\"Illuminate\\\\\\\\Mail\\\\\\\\SendQueuedMailable\\\\\\\",\\\\\\\"command\\\\\\\":\\\\\\\"O:34:\\\\\\\\\\\"Illuminate\\\\\\\\Mail\\\\\\\\SendQueuedMailable\\\\\\\\\\\":3:{s:8:\\\\\\\\\\\"mailable\\\\\\\\\\\";O:19:\\\\\\\\\\\"App\\\\\\\\Mail\\\\\\\\KirimEmail\\\\\\\\\\\":27:{s:9:\\\\\\\\\\\"recipient\\\\\\\\\\\";a:3:{s:5:\\\\\\\\\\\"email\\\\\\\\\\\";s:17:\\\\\\\\\\\"xegalol@gmail.com\\\\\\\\\\\";s:6:\\\\\\\\\\\"subjek\\\\\\\\\\\";s:4:\\\\\\\\\\\"akjb\\\\\\\\\\\";s:6:\\\\\\\\\\\"konten\\\\\\\\\\\";s:14:\\\\\\\\\\\"sajc jiuqwfiub\\\\\\\\\\\";}s:6:\\\\\\\\\\\"locale\\\\\\\\\\\";N;s:4:\\\\\\\\\\\"from\\\\\\\\\\\";a:0:{}s:2:\\\\\\\\\\\"to\\\\\\\\\\\";a:1:{i:0;a:2:{s:4:\\\\\\\\\\\"name\\\\\\\\\\\";N;s:7:\\\\\\\\\\\"address\\\\\\\\\\\";s:17:\\\\\\\\\\\"xegalol@gmail.com\\\\\\\\\\\";}}s:2:\\\\\\\\\\\"cc\\\\\\\\\\\";a:0:{}s:3:\\\\\\\\\\\"bcc\\\\\\\\\\\";a:0:{}s:7:\\\\\\\\\\\"replyTo\\\\\\\\\\\";a:0:{}s:7:\\\\\\\\\\\"subject\\\\\\\\\\\";N;s:11:\\\\\\\\\\\"\\\\u0000*\\\\u0000markdown\\\\\\\\\\\";N;s:7:\\\\\\\\\\\"\\\\u0000*\\\\u0000html\\\\\\\\\\\";N;s:4:\\\\\\\\\\\"view\\\\\\\\\\\";N;s:8:\\\\\\\\\\\"textView\\\\\\\\\\\";N;s:8:\\\\\\\\\\\"viewData\\\\\\\\\\\";a:0:{}s:11:\\\\\\\\\\\"attachments\\\\\\\\\\\";a:0:{}s:14:\\\\\\\\\\\"rawAttachments\\\\\\\\\\\";a:0:{}s:15:\\\\\\\\\\\"diskAttachments\\\\\\\\\\\";a:0:{}s:9:\\\\\\\\\\\"callbacks\\\\\\\\\\\";a:0:{}s:5:\\\\\\\\\\\"theme\\\\\\\\\\\";N;s:6:\\\\\\\\\\\"mailer\\\\\\\\\\\";s:4:\\\\\\\\\\\"smtp\\\\\\\\\\\";s:10:\\\\\\\\\\\"connection\\\\\\\\\\\";N;s:5:\\\\\\\\\\\"queue\\\\\\\\\\\";N;s:15:\\\\\\\\\\\"chainConnection\\\\\\\\\\\";N;s:10:\\\\\\\\\\\"chainQueue\\\\\\\\\\\";N;s:19:\\\\\\\\\\\"chainCatchCallbacks\\\\\\\\\\\";N;s:5:\\\\\\\\\\\"delay\\\\\\\\\\\";N;s:10:\\\\\\\\\\\"middleware\\\\\\\\\\\";a:0:{}s:7:\\\\\\\\\\\"chained\\\\\\\\\\\";a:0:{}}s:5:\\\\\\\\\\\"tries\\\\\\\\\\\";N;s:7:\\\\\\\\\\\"timeout\\\\\\\\\\\";N;}\\\\\\\"},\\\\\\\"telescope_uuid\\\\\\\":\\\\\\\"91c8f757-2f67-4702-adb8-65de26769e4b\\\\\\\"}\')\",\"time\":\"41.52\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":31,\"hash\":\"dcb5bc575158ce02a6c28ed0691de7a9\",\"hostname\":\"zegapc\"}', '2020-10-17 15:28:11'),
(69, '91c8f757-41b0-43d5-babc-853ee815b24c', '91c8f757-459e-4878-87da-8cd1f16c9990', NULL, 1, 'log', '{\"level\":\"info\",\"message\":\"End\",\"context\":[],\"hostname\":\"zegapc\"}', '2020-10-17 15:28:11'),
(70, '91c8f757-450e-4d1d-bc1f-c22534f2051d', '91c8f757-459e-4878-87da-8cd1f16c9990', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/send_email\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\EmailController@enqueue\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko\\/20100101 Firefox\\/81.0\",\"accept\":\"*\\/*\",\"accept-language\":\"en-US,en;q=0.5\",\"accept-encoding\":\"gzip, deflate\",\"content-type\":\"application\\/x-www-form-urlencoded; charset=UTF-8\",\"x-csrf-token\":\"M34xw3tkR3jlMZGvCElZQCTWWyY02uOFPyeUHruZ\",\"x-requested-with\":\"XMLHttpRequest\",\"content-length\":\"96\",\"origin\":\"http:\\/\\/127.0.0.1:8000\",\"connection\":\"keep-alive\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IkFtblZ1enpuZHJFSGIwYkZhSkR6VkE9PSIsInZhbHVlIjoiTzhHUEdGb0pZVGZrQWxzSWlLSkptL3ZNc3BhbE5Malh5aDArSkdVSG1DUmNsTkFEU3YwM0xYOUIwSGVwcGxSMjE5di93SGRwVEdEWi8ydHh6YnRVeEtVc1lld1VHK0FNaW9RellSaVhLRGM5SGgwVmlmb2lMcnQ1bWdOVys1MXYiLCJtYWMiOiI1NmYwMGY3NjI5NmNiYTk4MjE2NTc2OWE5NjYxOWMzODYzNTRhZTZiODExMzI4MWIyMTNiYWFlNDk0NDg3MGIyIn0%3D; laravel_session=eyJpdiI6Ik5Vd2tWRmJmc2M3QXAwWWo5aktYTHc9PSIsInZhbHVlIjoiSjgyVTQwcUdvTHd2MXFPRk8yKy9iR3hsY0kvZWpMUk0zZzRVNU5rOGJJMWJnbTIrOTdiMjRndDBrTGozWEV0SWg5VUV5cXRqL0xVUUpOYUgvZnBmVE5WRHVSaGRJcXlJd1l4bm5uV1QwMCtqdlNCRVJkaGVNa3M0NXozUTM2c0YiLCJtYWMiOiIxM2QxMTQ5NzFmMjQyMjMzZmI1NjJiNDQ2NjgyMzM1N2IwMzRkODYxZWFlNzI4ZWU4NWY1YzRmYWVjYWFlOWFjIn0%3D\"},\"payload\":{\"recipient\":\"xegalol@gmail.com\",\"subjek\":\"akjb\",\"konten\":\"sajc jiuqwfiub\"},\"session\":{\"_token\":\"M34xw3tkR3jlMZGvCElZQCTWWyY02uOFPyeUHruZ\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\\/telescope\\/telescope-api\\/jobs\\/91c8f543-8515-4627-b396-fa18367ef590\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":\"HTML Response\",\"duration\":479,\"memory\":2,\"hostname\":\"zegapc\"}', '2020-10-17 15:28:11'),
(71, '91c8f789-93f5-4db4-96e9-d02350feb1b2', '91c8f78f-96fc-46e5-b3bc-c8fc5ad7a7a1', NULL, 1, 'view', '{\"name\":\"email_format\",\"path\":\"\\\\resources\\\\views\\/email_format.blade.php\",\"data\":[\"konten\",\"__telescope\",\"__telescope_mailable\",\"__telescope_queued\",\"recipient\",\"connection\",\"queue\",\"chainConnection\",\"chainQueue\",\"chainCatchCallbacks\",\"delay\",\"middleware\",\"chained\",\"message\"],\"hostname\":\"zegapc\"}', '2020-10-17 15:28:44');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(72, '91c8f78f-67f3-4c7f-aa1c-32e4075f8343', '91c8f78f-96fc-46e5-b3bc-c8fc5ad7a7a1', NULL, 1, 'mail', '{\"mailable\":\"App\\\\Mail\\\\KirimEmail\",\"queued\":false,\"from\":{\"cobajyby@gmail.com\":\"Jayabaya Bimbel\"},\"replyTo\":null,\"to\":{\"xegalol@gmail.com\":null},\"cc\":null,\"bcc\":[],\"subject\":\"akjb\",\"html\":\"<!DOCTYPE html>\\r\\n<html>\\r\\n<head>\\r\\n\\t<title><\\/title>\\r\\n<\\/head>\\r\\n<body>\\r\\n\\t<table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n        <tr>\\r\\n            <td>\\r\\n                <p>Hi <\\/p>\\r\\n                <p>Terimakasih telah mendaftar<\\/p>\\r\\n\\r\\n                <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n                    <tbody>\\r\\n                    <tr>\\r\\n                        <td align=\\\"left\\\">\\r\\n                            <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n                                <tbody>\\r\\n                                <tr>\\r\\n                                    <td> <div class=\\\"container\\\">\\r\\n                                            <center><p>OTP anda :<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            <center><p>kjasbkjb<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            <center><p>Masukkan Kode OTP diatas untuk memverifikasi akun Anda<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            Terimakasih telah mendaftar ke Jayabaya Bimbel.<\\/p><\\/center>\\r\\n                                        <\\/div>\\r\\n                                    <\\/td>\\r\\n                                <\\/tr>\\r\\n                                <\\/tbody>\\r\\n                            <\\/table>\\r\\n                        <\\/td>\\r\\n                    <\\/tr>\\r\\n                    <\\/tbody>\\r\\n                <\\/table>\\r\\n                \\r\\n            <\\/td>\\r\\n        <\\/tr>\\r\\n    <\\/table>\\t\\r\\n<\\/body>\\r\\n<\\/html>\",\"raw\":\"Message-ID: <5f75ba8909ef88435adbf46e08ad1ebd@swift.generated>\\r\\nDate: Sat, 17 Oct 2020 15:28:44 +0700\\r\\nSubject: akjb\\r\\nFrom: Jayabaya Bimbel <cobajyby@gmail.com>\\r\\nTo: xegalol@gmail.com\\r\\nMIME-Version: 1.0\\r\\nContent-Type: text\\/html; charset=utf-8\\r\\nContent-Transfer-Encoding: quoted-printable\\r\\n\\r\\n<!DOCTYPE html>\\r\\n<html>\\r\\n<head>\\r\\n=09<title><\\/title>\\r\\n<\\/head>\\r\\n<body>\\r\\n=09<table border=3D\\\"0\\\" cellpadding=3D\\\"0\\\" cellspacing=3D\\\"0\\\">\\r\\n        <tr>\\r\\n            <td>\\r\\n                <p>Hi <\\/p>\\r\\n                <p>Terimakasih telah mendaftar<\\/p>\\r\\n\\r\\n                <table border=3D\\\"0\\\" cellpadding=3D\\\"0\\\" cellspacing=3D\\\"0\\\">\\r\\n                    <tbody>\\r\\n                    <tr>\\r\\n                        <td align=3D\\\"left\\\">\\r\\n                            <table border=3D\\\"0\\\" cellpadding=3D\\\"0\\\" cellspaci=\\r\\nng=3D\\\"0\\\">\\r\\n                                <tbody>\\r\\n                                <tr>\\r\\n                                    <td> <div class=3D\\\"container\\\">\\r\\n                                            <center><p>OTP anda :<\\/p><\\/cent=\\r\\ner>\\r\\n                                            <hr>\\r\\n                                            <center><p>kjasbkjb<\\/p><\\/center=\\r\\n>\\r\\n                                            <hr>\\r\\n                                            <center><p>Masukkan Kode OTP di=\\r\\natas untuk memverifikasi akun Anda<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            Terimakasih telah mendaftar ke =\\r\\nJayabaya Bimbel.<\\/p><\\/center>\\r\\n                                        <\\/div>\\r\\n                                    <\\/td>\\r\\n                                <\\/tr>\\r\\n                                <\\/tbody>\\r\\n                            <\\/table>\\r\\n                        <\\/td>\\r\\n                    <\\/tr>\\r\\n                    <\\/tbody>\\r\\n                <\\/table>\\r\\n               =20\\r\\n            <\\/td>\\r\\n        <\\/tr>\\r\\n    <\\/table>=09\\r\\n<\\/body>\\r\\n<\\/html>\",\"hostname\":\"zegapc\"}', '2020-10-17 15:28:48'),
(73, '91c8f78f-68f7-4cd9-b029-179fd3d27ecc', '91c8f78f-96fc-46e5-b3bc-c8fc5ad7a7a1', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `jobs` where `id` = 1 limit 1 for update\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\artisan\",\"line\":37,\"hash\":\"701e0eff6beceb4d961bc890c63f6ecd\",\"hostname\":\"zegapc\"}', '2020-10-17 15:28:48'),
(74, '91c8f78f-7002-43b5-8d3e-cff705b39da8', '91c8f78f-96fc-46e5-b3bc-c8fc5ad7a7a1', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `jobs` where `id` = 1\",\"time\":\"16.89\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\artisan\",\"line\":37,\"hash\":\"8d1bddd6e09fe9e9537d55b08cba190b\",\"hostname\":\"zegapc\"}', '2020-10-17 15:28:48'),
(75, '91c8f791-3c98-401b-8750-20bf02f998ef', '91c8f795-4530-4b1e-bfc3-2cd1d31eaa89', NULL, 1, 'view', '{\"name\":\"email_format\",\"path\":\"\\\\resources\\\\views\\/email_format.blade.php\",\"data\":[\"konten\",\"__telescope\",\"__telescope_mailable\",\"__telescope_queued\",\"recipient\",\"connection\",\"queue\",\"chainConnection\",\"chainQueue\",\"chainCatchCallbacks\",\"delay\",\"middleware\",\"chained\",\"message\"],\"hostname\":\"zegapc\"}', '2020-10-17 15:28:49'),
(76, '91c8f795-2ee4-43d0-bb29-4592248035b9', '91c8f795-4530-4b1e-bfc3-2cd1d31eaa89', NULL, 1, 'mail', '{\"mailable\":\"App\\\\Mail\\\\KirimEmail\",\"queued\":false,\"from\":{\"cobajyby@gmail.com\":\"Jayabaya Bimbel\"},\"replyTo\":null,\"to\":{\"xegalol@gmail.com\":null},\"cc\":null,\"bcc\":[],\"subject\":\"akjb\",\"html\":\"<!DOCTYPE html>\\r\\n<html>\\r\\n<head>\\r\\n\\t<title><\\/title>\\r\\n<\\/head>\\r\\n<body>\\r\\n\\t<table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n        <tr>\\r\\n            <td>\\r\\n                <p>Hi <\\/p>\\r\\n                <p>Terimakasih telah mendaftar<\\/p>\\r\\n\\r\\n                <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n                    <tbody>\\r\\n                    <tr>\\r\\n                        <td align=\\\"left\\\">\\r\\n                            <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n                                <tbody>\\r\\n                                <tr>\\r\\n                                    <td> <div class=\\\"container\\\">\\r\\n                                            <center><p>OTP anda :<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            <center><p>zega<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            <center><p>Masukkan Kode OTP diatas untuk memverifikasi akun Anda<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            Terimakasih telah mendaftar ke Jayabaya Bimbel.<\\/p><\\/center>\\r\\n                                        <\\/div>\\r\\n                                    <\\/td>\\r\\n                                <\\/tr>\\r\\n                                <\\/tbody>\\r\\n                            <\\/table>\\r\\n                        <\\/td>\\r\\n                    <\\/tr>\\r\\n                    <\\/tbody>\\r\\n                <\\/table>\\r\\n                \\r\\n            <\\/td>\\r\\n        <\\/tr>\\r\\n    <\\/table>\\t\\r\\n<\\/body>\\r\\n<\\/html>\",\"raw\":\"Message-ID: <52ff041a2bd4bd27ee3846e990e430f5@swift.generated>\\r\\nDate: Sat, 17 Oct 2020 15:28:49 +0700\\r\\nSubject: akjb\\r\\nFrom: Jayabaya Bimbel <cobajyby@gmail.com>\\r\\nTo: xegalol@gmail.com\\r\\nMIME-Version: 1.0\\r\\nContent-Type: text\\/html; charset=utf-8\\r\\nContent-Transfer-Encoding: quoted-printable\\r\\n\\r\\n<!DOCTYPE html>\\r\\n<html>\\r\\n<head>\\r\\n=09<title><\\/title>\\r\\n<\\/head>\\r\\n<body>\\r\\n=09<table border=3D\\\"0\\\" cellpadding=3D\\\"0\\\" cellspacing=3D\\\"0\\\">\\r\\n        <tr>\\r\\n            <td>\\r\\n                <p>Hi <\\/p>\\r\\n                <p>Terimakasih telah mendaftar<\\/p>\\r\\n\\r\\n                <table border=3D\\\"0\\\" cellpadding=3D\\\"0\\\" cellspacing=3D\\\"0\\\">\\r\\n                    <tbody>\\r\\n                    <tr>\\r\\n                        <td align=3D\\\"left\\\">\\r\\n                            <table border=3D\\\"0\\\" cellpadding=3D\\\"0\\\" cellspaci=\\r\\nng=3D\\\"0\\\">\\r\\n                                <tbody>\\r\\n                                <tr>\\r\\n                                    <td> <div class=3D\\\"container\\\">\\r\\n                                            <center><p>OTP anda :<\\/p><\\/cent=\\r\\ner>\\r\\n                                            <hr>\\r\\n                                            <center><p>zega<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            <center><p>Masukkan Kode OTP di=\\r\\natas untuk memverifikasi akun Anda<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            Terimakasih telah mendaftar ke =\\r\\nJayabaya Bimbel.<\\/p><\\/center>\\r\\n                                        <\\/div>\\r\\n                                    <\\/td>\\r\\n                                <\\/tr>\\r\\n                                <\\/tbody>\\r\\n                            <\\/table>\\r\\n                        <\\/td>\\r\\n                    <\\/tr>\\r\\n                    <\\/tbody>\\r\\n                <\\/table>\\r\\n               =20\\r\\n            <\\/td>\\r\\n        <\\/tr>\\r\\n    <\\/table>=09\\r\\n<\\/body>\\r\\n<\\/html>\",\"hostname\":\"zegapc\"}', '2020-10-17 15:28:52'),
(77, '91c8f795-3042-4fab-9f6e-b8d6fbc84a62', '91c8f795-4530-4b1e-bfc3-2cd1d31eaa89', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `jobs` where `id` = 2 limit 1 for update\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\artisan\",\"line\":37,\"hash\":\"701e0eff6beceb4d961bc890c63f6ecd\",\"hostname\":\"zegapc\"}', '2020-10-17 15:28:52'),
(78, '91c8f795-361f-4c66-b313-f3a9a92cdc68', '91c8f795-4530-4b1e-bfc3-2cd1d31eaa89', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `jobs` where `id` = 2\",\"time\":\"14.03\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\artisan\",\"line\":37,\"hash\":\"8d1bddd6e09fe9e9537d55b08cba190b\",\"hostname\":\"zegapc\"}', '2020-10-17 15:28:52'),
(79, '91c8f796-c705-4718-9aff-b096c6b317c0', '91c8f79b-51d5-40e9-9489-d981c43ce892', NULL, 1, 'view', '{\"name\":\"email_format\",\"path\":\"\\\\resources\\\\views\\/email_format.blade.php\",\"data\":[\"konten\",\"__telescope\",\"__telescope_mailable\",\"__telescope_queued\",\"recipient\",\"connection\",\"queue\",\"chainConnection\",\"chainQueue\",\"chainCatchCallbacks\",\"delay\",\"middleware\",\"chained\",\"message\"],\"hostname\":\"zegapc\"}', '2020-10-17 15:28:53'),
(80, '91c8f79b-416e-40fe-9c28-553c22f7769c', '91c8f79b-51d5-40e9-9489-d981c43ce892', NULL, 1, 'mail', '{\"mailable\":\"App\\\\Mail\\\\KirimEmail\",\"queued\":false,\"from\":{\"cobajyby@gmail.com\":\"Jayabaya Bimbel\"},\"replyTo\":null,\"to\":{\"xegalol@gmail.com\":null},\"cc\":null,\"bcc\":[],\"subject\":\"akjb\",\"html\":\"<!DOCTYPE html>\\r\\n<html>\\r\\n<head>\\r\\n\\t<title><\\/title>\\r\\n<\\/head>\\r\\n<body>\\r\\n\\t<table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n        <tr>\\r\\n            <td>\\r\\n                <p>Hi <\\/p>\\r\\n                <p>Terimakasih telah mendaftar<\\/p>\\r\\n\\r\\n                <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n                    <tbody>\\r\\n                    <tr>\\r\\n                        <td align=\\\"left\\\">\\r\\n                            <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n                                <tbody>\\r\\n                                <tr>\\r\\n                                    <td> <div class=\\\"container\\\">\\r\\n                                            <center><p>OTP anda :<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            <center><p>sajc jiuqwfiub<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            <center><p>Masukkan Kode OTP diatas untuk memverifikasi akun Anda<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            Terimakasih telah mendaftar ke Jayabaya Bimbel.<\\/p><\\/center>\\r\\n                                        <\\/div>\\r\\n                                    <\\/td>\\r\\n                                <\\/tr>\\r\\n                                <\\/tbody>\\r\\n                            <\\/table>\\r\\n                        <\\/td>\\r\\n                    <\\/tr>\\r\\n                    <\\/tbody>\\r\\n                <\\/table>\\r\\n                \\r\\n            <\\/td>\\r\\n        <\\/tr>\\r\\n    <\\/table>\\t\\r\\n<\\/body>\\r\\n<\\/html>\",\"raw\":\"Message-ID: <be7d164a747c8dcc2e049b55f8a61d0f@swift.generated>\\r\\nDate: Sat, 17 Oct 2020 15:28:53 +0700\\r\\nSubject: akjb\\r\\nFrom: Jayabaya Bimbel <cobajyby@gmail.com>\\r\\nTo: xegalol@gmail.com\\r\\nMIME-Version: 1.0\\r\\nContent-Type: text\\/html; charset=utf-8\\r\\nContent-Transfer-Encoding: quoted-printable\\r\\n\\r\\n<!DOCTYPE html>\\r\\n<html>\\r\\n<head>\\r\\n=09<title><\\/title>\\r\\n<\\/head>\\r\\n<body>\\r\\n=09<table border=3D\\\"0\\\" cellpadding=3D\\\"0\\\" cellspacing=3D\\\"0\\\">\\r\\n        <tr>\\r\\n            <td>\\r\\n                <p>Hi <\\/p>\\r\\n                <p>Terimakasih telah mendaftar<\\/p>\\r\\n\\r\\n                <table border=3D\\\"0\\\" cellpadding=3D\\\"0\\\" cellspacing=3D\\\"0\\\">\\r\\n                    <tbody>\\r\\n                    <tr>\\r\\n                        <td align=3D\\\"left\\\">\\r\\n                            <table border=3D\\\"0\\\" cellpadding=3D\\\"0\\\" cellspaci=\\r\\nng=3D\\\"0\\\">\\r\\n                                <tbody>\\r\\n                                <tr>\\r\\n                                    <td> <div class=3D\\\"container\\\">\\r\\n                                            <center><p>OTP anda :<\\/p><\\/cent=\\r\\ner>\\r\\n                                            <hr>\\r\\n                                            <center><p>sajc jiuqwfiub<\\/p><\\/=\\r\\ncenter>\\r\\n                                            <hr>\\r\\n                                            <center><p>Masukkan Kode OTP di=\\r\\natas untuk memverifikasi akun Anda<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            Terimakasih telah mendaftar ke =\\r\\nJayabaya Bimbel.<\\/p><\\/center>\\r\\n                                        <\\/div>\\r\\n                                    <\\/td>\\r\\n                                <\\/tr>\\r\\n                                <\\/tbody>\\r\\n                            <\\/table>\\r\\n                        <\\/td>\\r\\n                    <\\/tr>\\r\\n                    <\\/tbody>\\r\\n                <\\/table>\\r\\n               =20\\r\\n            <\\/td>\\r\\n        <\\/tr>\\r\\n    <\\/table>=09\\r\\n<\\/body>\\r\\n<\\/html>\",\"hostname\":\"zegapc\"}', '2020-10-17 15:28:56'),
(81, '91c8f79b-42b0-4ac1-a67f-fef1c828b5c2', '91c8f79b-51d5-40e9-9489-d981c43ce892', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `jobs` where `id` = 3 limit 1 for update\",\"time\":\"0.78\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\artisan\",\"line\":37,\"hash\":\"701e0eff6beceb4d961bc890c63f6ecd\",\"hostname\":\"zegapc\"}', '2020-10-17 15:28:56'),
(82, '91c8f79b-437b-4980-b5b0-a0dc3ef405ca', '91c8f79b-51d5-40e9-9489-d981c43ce892', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `jobs` where `id` = 3\",\"time\":\"0.94\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\artisan\",\"line\":37,\"hash\":\"8d1bddd6e09fe9e9537d55b08cba190b\",\"hostname\":\"zegapc\"}', '2020-10-17 15:28:56'),
(83, '91c8f7c6-0771-42ab-8f4d-1880b39ebd42', '91c8f7c6-2059-492a-8b7d-528f72993699', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tblpartnership`\",\"time\":\"16.76\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":18,\"hash\":\"77aa2cbab5f6c73f0b1dfe29763108ce\",\"hostname\":\"zegapc\"}', '2020-10-17 15:29:24'),
(84, '91c8f7c6-143c-4524-a601-ec4cc82df996', '91c8f7c6-2059-492a-8b7d-528f72993699', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tbluser`\",\"time\":\"7.13\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":19,\"hash\":\"8bc58e25f7f628eac03bbbfc907e8ee3\",\"hostname\":\"zegapc\"}', '2020-10-17 15:29:24'),
(85, '91c8f7c6-1812-4a6b-92e6-a3e47b0fbf38', '91c8f7c6-2059-492a-8b7d-528f72993699', NULL, 1, 'view', '{\"name\":\"send_email\",\"path\":\"\\\\resources\\\\views\\/send_email.blade.php\",\"data\":[\"all_user\",\"partner\"],\"hostname\":\"zegapc\"}', '2020-10-17 15:29:24'),
(86, '91c8f7c6-1ddb-46e6-b64b-08b2bfa4fdc3', '91c8f7c6-2059-492a-8b7d-528f72993699', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\EmailController@index\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko\\/20100101 Firefox\\/81.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,*\\/*;q=0.8\",\"accept-language\":\"en-US,en;q=0.5\",\"accept-encoding\":\"gzip, deflate\",\"connection\":\"keep-alive\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6InhQcjJORlZMRkpoakM1RVFMd2ZVQ3c9PSIsInZhbHVlIjoickNUeWdNRlU1TzAzblN5OXkxaWE2dFU2UC8zSWNPWFZHM21aek16bnRRbEllWkF5ckxadXgreEtJb0pOZU04Y1FRNXZKTmcvcmhJYVQzSHd5Y0o5YmVSUmhFQzFSbkZRckJrRHpWTnN3d3l5cVpYSlVoMHUyV1d0bmtobHdtTkQiLCJtYWMiOiJiOTMyNmM4MmQ2YzlmYjk5MjlhN2Y5NjdmNDkyODk0YjIxNGU5ZDVmNmMxYWQ3MzkyNGU4NTk1OWQ1YmEzMTc5In0%3D; laravel_session=eyJpdiI6InpCVmN3ekhHQmo1cHhyT1NkcnYxWGc9PSIsInZhbHVlIjoiZmhJS2kwdU4xYVJ0emJYUStySGtGN2dQVU5FMVlNbVU4Z1d6UHFpbXljdWNYK2ZlUWhqenlLWXA5RWZ6R3BMQTBxTytOS0pxS0UvNkMwM1hTWnJ3ZDFmVjV0NVY0d0ltWDYvSG1odVVwZUkzdEhBRnkvUWxiaStRRmVDdDdwVFAiLCJtYWMiOiIxNmFmMDM2ODc0MDllY2YzOWI1ZjYzN2UyNDU0ZWM4ZjcxMTdjNTQ2Zjk0OWMzODc1ZGExOGM4N2M2MGE2NzY2In0%3D\",\"upgrade-insecure-requests\":\"1\",\"cache-control\":\"max-age=0\"},\"payload\":[],\"session\":{\"_token\":\"M34xw3tkR3jlMZGvCElZQCTWWyY02uOFPyeUHruZ\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\resources\\\\views\\/send_email.blade.php\",\"data\":{\"all_user\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":38,\"UserName\":\"zega febrianto\",\"UserEmail\":\"randombox38@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-08-31\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$QAiuuj420chlrISOvxmrJe5acaql8fjXjI6YucMWrDoFOFoWWfmLG\",\"UserAvatar\":\"38.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/4.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-08-31 16:33:39\",\"UserXP\":0,\"UserOTP\":\"EIDNRc\",\"UserOTP_b\":null,\"online\":0},{\"id\":42,\"UserName\":\"zega febriantoro\",\"UserEmail\":\"xegalol@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-01\",\"alamat\":\"jalan bengawan solo gg 6 no 19 rt 5 rw 3\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$vZ.Up7wtjVSwM6gfxU1u9.PLwhAHlN.ORNTWeymAzJlGFm4sUtnyq\",\"UserAvatar\":\"42.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/38.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-01 15:01:38\",\"UserXP\":0,\"UserOTP\":\"mK0Igk\",\"UserOTP_b\":\"lsgTuZUr\",\"online\":1},{\"id\":43,\"UserName\":\"zega febrianti\",\"UserEmail\":\"randombox381@gmail.com\",\"tempat_lahir\":\"Malang\",\"tgl_lahir\":\"2020-09-06\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"Pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$jy5C1BXHzcT0GcZpuFsrtuCvFWBpuq88LgTlu.LIv7ucjOPEiXYCG\",\"UserAvatar\":\"43.jpg\",\"fotoKTP\":\"42.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:35:40\",\"UserXP\":0,\"UserOTP\":\"hLryDa\",\"UserOTP_b\":null,\"online\":0},{\"id\":44,\"UserName\":\"Sugeng\",\"UserEmail\":\"randombox382@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-11\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$2V5rEESI9vzUYHKIoTq4xeJL6j4NzpO4YtDOTMGQgrofmdQ1E5JPO\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"43.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:38:03\",\"UserXP\":0,\"UserOTP\":\"pGQkXd\",\"UserOTP_b\":null,\"online\":0},{\"id\":45,\"UserName\":\"Almira\",\"UserEmail\":\"almira@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081098120929\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$.5o2VXmibXwYLf\\/GA3Byru4y\\/shrSTnIMA9pVPWqsmJqUunP0g5eK\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"44.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 14:44:21\",\"UserXP\":0,\"UserOTP\":\"a8FS0Y\",\"UserOTP_b\":null,\"online\":0},{\"id\":46,\"UserName\":\"Zsa zsa\",\"UserEmail\":\"zsa@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"garum\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"bapak zsazsa\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$hNTW2nW12vM6UJL4uFWZMOiNa9hO\\/sISZJqALlP8U3N51lgEw33jm\",\"UserAvatar\":\"46.jpg\",\"fotoKTP\":\"45.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 15:29:17\",\"UserXP\":0,\"UserOTP\":\"VCm7jE\",\"UserOTP_b\":null,\"online\":0},{\"id\":47,\"UserName\":\"Deddy Corbuzier\",\"UserEmail\":\"dedy@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-10-02\",\"alamat\":\"jalan rambutan\",\"telp\":\"081081081081\",\"agama\":null,\"orangtua\":\"bapak dedy\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$KU3ilDF9DkCzzFn3yW4yfOoywoZElfpMuomGab2IQG8YhQFA5ruU6\",\"UserAvatar\":\"47.jpg\",\"fotoKTP\":\"46.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-10-02 13:50:29\",\"UserXP\":0,\"UserOTP\":\"LgwpRK\",\"UserOTP_b\":null,\"online\":0}]},\"partner\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":1,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"9999\",\"alamat\":\"Kediri\",\"kepala\":\"Rohmat\",\"telpkepala\":\"888\",\"fotoKTP\":\"2\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":2,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"io\",\"alamat\":\"jojo\",\"kepala\":\"oojo\",\"telpkepala\":\"ooko\",\"fotoKTP\":\"909356294\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":3,\"instansi\":\"SMP negeri 5 kediri\",\"telpinstansi\":\"1111\",\"alamat\":\"Kediri\",\"kepala\":\"JIto\",\"telpkepala\":\"777\",\"fotoKTP\":\"8103b2331649b0521d687def5ed52fe7.png\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":4,\"instansi\":\"SD\",\"telpinstansi\":\"999\",\"alamat\":\"jkjkjk\",\"kepala\":\"9i9\",\"telpkepala\":\"kkoko\",\"fotoKTP\":\"b8baf9999b5ee6f75fb45e5f1039b409.PNG\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":5,\"instansi\":\"hoho\",\"telpinstansi\":\"88\",\"alamat\":\"ininini\",\"kepala\":\"ninini\",\"telpkepala\":\"55\",\"fotoKTP\":\"157599be8731e313424dff83d19b3048.jpg\",\"program\":\"english,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":6,\"instansi\":\"CV. Astar\",\"telpinstansi\":\"81252867991\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"9872148798\",\"fotoKTP\":\"CV. Astar_zega_4M1qTz.jpg\",\"program\":\"CV. Astar\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:32:59\"},{\"id\":7,\"instansi\":\"CV. Astar 2\",\"telpinstansi\":\"1234123412\",\"alamat\":\"jl bengawan solo gg 6 no 20\",\"kepala\":\"zega\",\"telpkepala\":\"12314124124\",\"fotoKTP\":\"CV. Astar 2_zega_R2rzTW.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:36:15\"},{\"id\":8,\"instansi\":\"zega\",\"telpinstansi\":\"12313123\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"124124124\",\"fotoKTP\":\"zega_zega_oxPmRS.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:37:59\"},{\"id\":9,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"097987124\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"087214970\",\"fotoKTP\":\"CV. Curiculum Vitae_zega_534M4O.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:42:21\"},{\"id\":10,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"102920947\",\"alamat\":\"jl bengawan solo gg 6 no 192\",\"kepala\":\"Pak\",\"telpkepala\":\"9812398498124\",\"fotoKTP\":\"CV. Curiculum Vitae_Pak_M029MS.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-05 13:30:20\"}]}}},\"duration\":763,\"memory\":4,\"hostname\":\"zegapc\"}', '2020-10-17 15:29:24'),
(87, '91c90078-e960-4855-ad49-713efea3d7c1', '91c90079-55a1-485d-8376-97d29ac70096', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tblpartnership`\",\"time\":\"6.61\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":18,\"hash\":\"77aa2cbab5f6c73f0b1dfe29763108ce\",\"hostname\":\"zegapc\"}', '2020-10-17 15:53:43'),
(88, '91c90079-2d57-4e3f-a1ac-3c01323f8874', '91c90079-55a1-485d-8376-97d29ac70096', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tbluser`\",\"time\":\"5.09\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":19,\"hash\":\"8bc58e25f7f628eac03bbbfc907e8ee3\",\"hostname\":\"zegapc\"}', '2020-10-17 15:53:43'),
(89, '91c90079-3da5-499d-867d-f7fbc09b6ee5', '91c90079-55a1-485d-8376-97d29ac70096', NULL, 1, 'view', '{\"name\":\"send_email\",\"path\":\"\\\\resources\\\\views\\/send_email.blade.php\",\"data\":[\"all_user\",\"partner\"],\"hostname\":\"zegapc\"}', '2020-10-17 15:53:43'),
(90, '91c90079-52aa-46a5-a484-4898adfc658e', '91c90079-55a1-485d-8376-97d29ac70096', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\EmailController@index\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko\\/20100101 Firefox\\/81.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,*\\/*;q=0.8\",\"accept-language\":\"en-US,en;q=0.5\",\"accept-encoding\":\"gzip, deflate\",\"connection\":\"keep-alive\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6Im00MlNmR3hRZUNUb080TGZnUldvRUE9PSIsInZhbHVlIjoiNG90K256WDRwdjZnTEduQUVQRnA2dWJCTjhtYkVMSTRxSmFMWGM0bzdDbWgxNEIzdW5lWkMzblNLUDJ3Rll5UnF4K3FXMS9QSmdhR01EMDVYS0s0THhFS2U1NGtrL2VwcFZrTTAzajE0VzZiV3dKSnNnaUdzeWdxeUhGY2F2VTkiLCJtYWMiOiJiYzRiZjFmMzBmMTBkNzU2NDhhMTViNmU3Y2U4YzUwYjIyNzI0YjRjN2JkYWYwZjkwY2FhOTgzNDU2MzQwODBjIn0%3D; laravel_session=eyJpdiI6IlhMNEFJVXVQTHFOeE1xMTVvVGxNTEE9PSIsInZhbHVlIjoiL2JJOWxLSXhTbmhyS1lmUzhXc2Q2NFZmYzhFdnMwanZubFh1aUcybmwwMTJ6K2Q2dmVkMitESjBvdVlERHZBS25JN1FnVjA2WHBwWXhHUVhrK0M2Y3RsU2psVEVPK0ZCSlBXN0FaTDEwS3BsekxsRmNmNlNpeHAxRTFvRXQ4WnIiLCJtYWMiOiI1ODg4MTc5NGIyYzJjN2IwZDg4MGY3NTU0ZDU2YTM2YjQyZTZlYWYyYzc5OGVhNmJlZmYyMjEzYTFhOGVlNzBmIn0%3D\",\"upgrade-insecure-requests\":\"1\",\"cache-control\":\"max-age=0\"},\"payload\":[],\"session\":{\"_token\":\"M34xw3tkR3jlMZGvCElZQCTWWyY02uOFPyeUHruZ\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\resources\\\\views\\/send_email.blade.php\",\"data\":{\"all_user\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":38,\"UserName\":\"zega febrianto\",\"UserEmail\":\"randombox38@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-08-31\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$QAiuuj420chlrISOvxmrJe5acaql8fjXjI6YucMWrDoFOFoWWfmLG\",\"UserAvatar\":\"38.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/4.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-08-31 16:33:39\",\"UserXP\":0,\"UserOTP\":\"EIDNRc\",\"UserOTP_b\":null,\"online\":0},{\"id\":42,\"UserName\":\"zega febriantoro\",\"UserEmail\":\"xegalol@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-01\",\"alamat\":\"jalan bengawan solo gg 6 no 19 rt 5 rw 3\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$vZ.Up7wtjVSwM6gfxU1u9.PLwhAHlN.ORNTWeymAzJlGFm4sUtnyq\",\"UserAvatar\":\"42.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/38.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-01 15:01:38\",\"UserXP\":0,\"UserOTP\":\"mK0Igk\",\"UserOTP_b\":\"lsgTuZUr\",\"online\":1},{\"id\":43,\"UserName\":\"zega febrianti\",\"UserEmail\":\"randombox381@gmail.com\",\"tempat_lahir\":\"Malang\",\"tgl_lahir\":\"2020-09-06\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"Pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$jy5C1BXHzcT0GcZpuFsrtuCvFWBpuq88LgTlu.LIv7ucjOPEiXYCG\",\"UserAvatar\":\"43.jpg\",\"fotoKTP\":\"42.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:35:40\",\"UserXP\":0,\"UserOTP\":\"hLryDa\",\"UserOTP_b\":null,\"online\":0},{\"id\":44,\"UserName\":\"Sugeng\",\"UserEmail\":\"randombox382@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-11\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$2V5rEESI9vzUYHKIoTq4xeJL6j4NzpO4YtDOTMGQgrofmdQ1E5JPO\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"43.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:38:03\",\"UserXP\":0,\"UserOTP\":\"pGQkXd\",\"UserOTP_b\":null,\"online\":0},{\"id\":45,\"UserName\":\"Almira\",\"UserEmail\":\"almira@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081098120929\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$.5o2VXmibXwYLf\\/GA3Byru4y\\/shrSTnIMA9pVPWqsmJqUunP0g5eK\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"44.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 14:44:21\",\"UserXP\":0,\"UserOTP\":\"a8FS0Y\",\"UserOTP_b\":null,\"online\":0},{\"id\":46,\"UserName\":\"Zsa zsa\",\"UserEmail\":\"zsa@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"garum\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"bapak zsazsa\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$hNTW2nW12vM6UJL4uFWZMOiNa9hO\\/sISZJqALlP8U3N51lgEw33jm\",\"UserAvatar\":\"46.jpg\",\"fotoKTP\":\"45.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 15:29:17\",\"UserXP\":0,\"UserOTP\":\"VCm7jE\",\"UserOTP_b\":null,\"online\":0},{\"id\":47,\"UserName\":\"Deddy Corbuzier\",\"UserEmail\":\"dedy@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-10-02\",\"alamat\":\"jalan rambutan\",\"telp\":\"081081081081\",\"agama\":null,\"orangtua\":\"bapak dedy\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$KU3ilDF9DkCzzFn3yW4yfOoywoZElfpMuomGab2IQG8YhQFA5ruU6\",\"UserAvatar\":\"47.jpg\",\"fotoKTP\":\"46.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-10-02 13:50:29\",\"UserXP\":0,\"UserOTP\":\"LgwpRK\",\"UserOTP_b\":null,\"online\":0}]},\"partner\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":1,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"9999\",\"alamat\":\"Kediri\",\"kepala\":\"Rohmat\",\"telpkepala\":\"888\",\"fotoKTP\":\"2\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":2,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"io\",\"alamat\":\"jojo\",\"kepala\":\"oojo\",\"telpkepala\":\"ooko\",\"fotoKTP\":\"909356294\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":3,\"instansi\":\"SMP negeri 5 kediri\",\"telpinstansi\":\"1111\",\"alamat\":\"Kediri\",\"kepala\":\"JIto\",\"telpkepala\":\"777\",\"fotoKTP\":\"8103b2331649b0521d687def5ed52fe7.png\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":4,\"instansi\":\"SD\",\"telpinstansi\":\"999\",\"alamat\":\"jkjkjk\",\"kepala\":\"9i9\",\"telpkepala\":\"kkoko\",\"fotoKTP\":\"b8baf9999b5ee6f75fb45e5f1039b409.PNG\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":5,\"instansi\":\"hoho\",\"telpinstansi\":\"88\",\"alamat\":\"ininini\",\"kepala\":\"ninini\",\"telpkepala\":\"55\",\"fotoKTP\":\"157599be8731e313424dff83d19b3048.jpg\",\"program\":\"english,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":6,\"instansi\":\"CV. Astar\",\"telpinstansi\":\"81252867991\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"9872148798\",\"fotoKTP\":\"CV. Astar_zega_4M1qTz.jpg\",\"program\":\"CV. Astar\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:32:59\"},{\"id\":7,\"instansi\":\"CV. Astar 2\",\"telpinstansi\":\"1234123412\",\"alamat\":\"jl bengawan solo gg 6 no 20\",\"kepala\":\"zega\",\"telpkepala\":\"12314124124\",\"fotoKTP\":\"CV. Astar 2_zega_R2rzTW.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:36:15\"},{\"id\":8,\"instansi\":\"zega\",\"telpinstansi\":\"12313123\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"124124124\",\"fotoKTP\":\"zega_zega_oxPmRS.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:37:59\"},{\"id\":9,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"097987124\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"087214970\",\"fotoKTP\":\"CV. Curiculum Vitae_zega_534M4O.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:42:21\"},{\"id\":10,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"102920947\",\"alamat\":\"jl bengawan solo gg 6 no 192\",\"kepala\":\"Pak\",\"telpkepala\":\"9812398498124\",\"fotoKTP\":\"CV. Curiculum Vitae_Pak_M029MS.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-05 13:30:20\"}]}}},\"duration\":956,\"memory\":2,\"hostname\":\"zegapc\"}', '2020-10-17 15:53:44'),
(91, '91c90182-cf83-4c0f-a009-194f1cfacd7e', '91c90182-e566-40ac-8339-0966989d6421', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tblpartnership`\",\"time\":\"14.22\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":18,\"hash\":\"77aa2cbab5f6c73f0b1dfe29763108ce\",\"hostname\":\"zegapc\"}', '2020-10-17 15:56:38'),
(92, '91c90182-d966-49ee-a486-fbf1d8c44a30', '91c90182-e566-40ac-8339-0966989d6421', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tbluser`\",\"time\":\"5.03\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":19,\"hash\":\"8bc58e25f7f628eac03bbbfc907e8ee3\",\"hostname\":\"zegapc\"}', '2020-10-17 15:56:38'),
(93, '91c90182-dd25-4188-b59e-298d21f03d19', '91c90182-e566-40ac-8339-0966989d6421', NULL, 1, 'view', '{\"name\":\"send_email\",\"path\":\"\\\\resources\\\\views\\/send_email.blade.php\",\"data\":[\"all_user\",\"partner\"],\"hostname\":\"zegapc\"}', '2020-10-17 15:56:38'),
(94, '91c90182-e30b-4cf2-bf97-9a9812a8204d', '91c90182-e566-40ac-8339-0966989d6421', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\EmailController@index\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko\\/20100101 Firefox\\/81.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,*\\/*;q=0.8\",\"accept-language\":\"en-US,en;q=0.5\",\"accept-encoding\":\"gzip, deflate\",\"connection\":\"keep-alive\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6InZTNnBqeEtDbHF5YjhCalc3ZStOaXc9PSIsInZhbHVlIjoiR1pRZXc2VGhQaVhuZUpRckFJNVpIb3B5UmJvN2JPaU1mZXUvenZrK3M5d1JwOGFqeGUwd2F3cHBmTG5ZcGZoT0dmWXdreU9peTZQamtOMHhkeVl3YjhFV3lSWW8xODdpdGZuNDkwbDZVbncxb0hLZE1rTE5xbmo3d2FVVytZM3EiLCJtYWMiOiI3ZjczNThjNTYxOTNjMjkwY2Q5ZTdhNjNhZDQzODE0Y2RlZWZjNzE5NDY5ZDBjN2I4NmExNDdhODIwZjk2NzJlIn0%3D; laravel_session=eyJpdiI6Ii8yTU5ycENhNjV4ejZ4dG5INEVIMXc9PSIsInZhbHVlIjoibFBCQVZMczJwWjQ5bWdrWWpIakVPZ1BQYmxCanNsK094UFBCUVpZNWRHZURkQnRMNnZKbkwwYmVXUHlFTXBXVTlFOGsza0FzVlJ4Y1FnQ2FzUHBCQytDWFRtN1V0d001eGlyQ1pHUm9WK29MdjVQM3ludmRwZThtNkpCaDFqN2QiLCJtYWMiOiJlMzViYWFjMTJjMWFhNDYxMTNlNTc0ZWJhYTFjZDE4ZGY5MGZhN2Q4NTVjZWM0NGFiYzMxODM3MWFhM2NlYjUzIn0%3D\",\"upgrade-insecure-requests\":\"1\",\"cache-control\":\"max-age=0\"},\"payload\":[],\"session\":{\"_token\":\"M34xw3tkR3jlMZGvCElZQCTWWyY02uOFPyeUHruZ\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\resources\\\\views\\/send_email.blade.php\",\"data\":{\"all_user\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":38,\"UserName\":\"zega febrianto\",\"UserEmail\":\"randombox38@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-08-31\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$QAiuuj420chlrISOvxmrJe5acaql8fjXjI6YucMWrDoFOFoWWfmLG\",\"UserAvatar\":\"38.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/4.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-08-31 16:33:39\",\"UserXP\":0,\"UserOTP\":\"EIDNRc\",\"UserOTP_b\":null,\"online\":0},{\"id\":42,\"UserName\":\"zega febriantoro\",\"UserEmail\":\"xegalol@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-01\",\"alamat\":\"jalan bengawan solo gg 6 no 19 rt 5 rw 3\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$vZ.Up7wtjVSwM6gfxU1u9.PLwhAHlN.ORNTWeymAzJlGFm4sUtnyq\",\"UserAvatar\":\"42.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/38.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-01 15:01:38\",\"UserXP\":0,\"UserOTP\":\"mK0Igk\",\"UserOTP_b\":\"lsgTuZUr\",\"online\":1},{\"id\":43,\"UserName\":\"zega febrianti\",\"UserEmail\":\"randombox381@gmail.com\",\"tempat_lahir\":\"Malang\",\"tgl_lahir\":\"2020-09-06\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"Pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$jy5C1BXHzcT0GcZpuFsrtuCvFWBpuq88LgTlu.LIv7ucjOPEiXYCG\",\"UserAvatar\":\"43.jpg\",\"fotoKTP\":\"42.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:35:40\",\"UserXP\":0,\"UserOTP\":\"hLryDa\",\"UserOTP_b\":null,\"online\":0},{\"id\":44,\"UserName\":\"Sugeng\",\"UserEmail\":\"randombox382@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-11\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$2V5rEESI9vzUYHKIoTq4xeJL6j4NzpO4YtDOTMGQgrofmdQ1E5JPO\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"43.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:38:03\",\"UserXP\":0,\"UserOTP\":\"pGQkXd\",\"UserOTP_b\":null,\"online\":0},{\"id\":45,\"UserName\":\"Almira\",\"UserEmail\":\"almira@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081098120929\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$.5o2VXmibXwYLf\\/GA3Byru4y\\/shrSTnIMA9pVPWqsmJqUunP0g5eK\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"44.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 14:44:21\",\"UserXP\":0,\"UserOTP\":\"a8FS0Y\",\"UserOTP_b\":null,\"online\":0},{\"id\":46,\"UserName\":\"Zsa zsa\",\"UserEmail\":\"zsa@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"garum\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"bapak zsazsa\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$hNTW2nW12vM6UJL4uFWZMOiNa9hO\\/sISZJqALlP8U3N51lgEw33jm\",\"UserAvatar\":\"46.jpg\",\"fotoKTP\":\"45.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 15:29:17\",\"UserXP\":0,\"UserOTP\":\"VCm7jE\",\"UserOTP_b\":null,\"online\":0},{\"id\":47,\"UserName\":\"Deddy Corbuzier\",\"UserEmail\":\"dedy@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-10-02\",\"alamat\":\"jalan rambutan\",\"telp\":\"081081081081\",\"agama\":null,\"orangtua\":\"bapak dedy\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$KU3ilDF9DkCzzFn3yW4yfOoywoZElfpMuomGab2IQG8YhQFA5ruU6\",\"UserAvatar\":\"47.jpg\",\"fotoKTP\":\"46.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-10-02 13:50:29\",\"UserXP\":0,\"UserOTP\":\"LgwpRK\",\"UserOTP_b\":null,\"online\":0}]},\"partner\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":1,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"9999\",\"alamat\":\"Kediri\",\"kepala\":\"Rohmat\",\"telpkepala\":\"888\",\"fotoKTP\":\"2\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":2,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"io\",\"alamat\":\"jojo\",\"kepala\":\"oojo\",\"telpkepala\":\"ooko\",\"fotoKTP\":\"909356294\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":3,\"instansi\":\"SMP negeri 5 kediri\",\"telpinstansi\":\"1111\",\"alamat\":\"Kediri\",\"kepala\":\"JIto\",\"telpkepala\":\"777\",\"fotoKTP\":\"8103b2331649b0521d687def5ed52fe7.png\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":4,\"instansi\":\"SD\",\"telpinstansi\":\"999\",\"alamat\":\"jkjkjk\",\"kepala\":\"9i9\",\"telpkepala\":\"kkoko\",\"fotoKTP\":\"b8baf9999b5ee6f75fb45e5f1039b409.PNG\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":5,\"instansi\":\"hoho\",\"telpinstansi\":\"88\",\"alamat\":\"ininini\",\"kepala\":\"ninini\",\"telpkepala\":\"55\",\"fotoKTP\":\"157599be8731e313424dff83d19b3048.jpg\",\"program\":\"english,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":6,\"instansi\":\"CV. Astar\",\"telpinstansi\":\"81252867991\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"9872148798\",\"fotoKTP\":\"CV. Astar_zega_4M1qTz.jpg\",\"program\":\"CV. Astar\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:32:59\"},{\"id\":7,\"instansi\":\"CV. Astar 2\",\"telpinstansi\":\"1234123412\",\"alamat\":\"jl bengawan solo gg 6 no 20\",\"kepala\":\"zega\",\"telpkepala\":\"12314124124\",\"fotoKTP\":\"CV. Astar 2_zega_R2rzTW.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:36:15\"},{\"id\":8,\"instansi\":\"zega\",\"telpinstansi\":\"12313123\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"124124124\",\"fotoKTP\":\"zega_zega_oxPmRS.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:37:59\"},{\"id\":9,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"097987124\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"087214970\",\"fotoKTP\":\"CV. Curiculum Vitae_zega_534M4O.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:42:21\"},{\"id\":10,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"102920947\",\"alamat\":\"jl bengawan solo gg 6 no 192\",\"kepala\":\"Pak\",\"telpkepala\":\"9812398498124\",\"fotoKTP\":\"CV. Curiculum Vitae_Pak_M029MS.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-05 13:30:20\"}]}}},\"duration\":615,\"memory\":2,\"hostname\":\"zegapc\"}', '2020-10-17 15:56:38'),
(95, '91c901a9-5e73-4dc1-8127-9d8556cb122b', '91c901a9-7b39-4488-87e4-f096e9093175', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tblpartnership`\",\"time\":\"14.17\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":18,\"hash\":\"77aa2cbab5f6c73f0b1dfe29763108ce\",\"hostname\":\"zegapc\"}', '2020-10-17 15:57:03'),
(96, '91c901a9-6d61-4527-888c-2a2020d4adb4', '91c901a9-7b39-4488-87e4-f096e9093175', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tbluser`\",\"time\":\"3.38\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":19,\"hash\":\"8bc58e25f7f628eac03bbbfc907e8ee3\",\"hostname\":\"zegapc\"}', '2020-10-17 15:57:03'),
(97, '91c901a9-70a3-482a-8111-ad249c2d2c6a', '91c901a9-7b39-4488-87e4-f096e9093175', NULL, 1, 'view', '{\"name\":\"send_email\",\"path\":\"\\\\resources\\\\views\\/send_email.blade.php\",\"data\":[\"all_user\",\"partner\"],\"hostname\":\"zegapc\"}', '2020-10-17 15:57:03');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(98, '91c901a9-77cf-4108-8527-9fa75da550b4', '91c901a9-7b39-4488-87e4-f096e9093175', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\EmailController@index\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko\\/20100101 Firefox\\/81.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,*\\/*;q=0.8\",\"accept-language\":\"en-US,en;q=0.5\",\"accept-encoding\":\"gzip, deflate\",\"connection\":\"keep-alive\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6Ik4zdllBTis4MDdqQWFvNXRHYmpCSXc9PSIsInZhbHVlIjoidmx4bzdlRUtRd3B1K3AvQXRNblh0UFR1bGdVdXhxQ2hXSi9jQWZrdzI4Vk1UWmhQOGFBK1Q5MVNaK0x2c0hQSVZJbWFQcmptZGswajZPSWtPZGgxLzRGZEJuaHpZTmRXUUtPcGIwcEdaemtJaXp6QzBuZm9POTRxdkdiaE83OE4iLCJtYWMiOiJkYTY5OTQyZWEwYjBmNGJkZjZjNTZiMTFkYjA2NzQ1OGI5OTNjY2NjNjJmM2M0ZjQ5OGQ0MWM2N2I5MmM0OTAwIn0%3D; laravel_session=eyJpdiI6ImE5cmtQZ3FmRlE0OUc5a2trYkJsNUE9PSIsInZhbHVlIjoiQ0YrR0djSUc5cDFxR3NmRXRUWVV6b0V6NzhHYWljU2F0dVVGdXUyaDQrLzVIWTA2ZWI1TFdkOTRKZ0pOMnM3dngrU1pVeDVSMmxSaFhNTEYvWHR1WmFjaVhwbTRMdlNRRWVyYlFRQlBGd2U2V1NHbEw0cTA1Nk9PK21RNXErU1kiLCJtYWMiOiIwYWE4MWFlNDU0Njk1YjRiNzUzZWNmYTViOWY0MWRiZTk4ZmI2NzBhYTM0ZjkxZDVjNTc0MDNlM2U5ZGEwOGU0In0%3D\",\"upgrade-insecure-requests\":\"1\",\"cache-control\":\"max-age=0\"},\"payload\":[],\"session\":{\"_token\":\"M34xw3tkR3jlMZGvCElZQCTWWyY02uOFPyeUHruZ\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\resources\\\\views\\/send_email.blade.php\",\"data\":{\"all_user\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":38,\"UserName\":\"zega febrianto\",\"UserEmail\":\"randombox38@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-08-31\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$QAiuuj420chlrISOvxmrJe5acaql8fjXjI6YucMWrDoFOFoWWfmLG\",\"UserAvatar\":\"38.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/4.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-08-31 16:33:39\",\"UserXP\":0,\"UserOTP\":\"EIDNRc\",\"UserOTP_b\":null,\"online\":0},{\"id\":42,\"UserName\":\"zega febriantoro\",\"UserEmail\":\"xegalol@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-01\",\"alamat\":\"jalan bengawan solo gg 6 no 19 rt 5 rw 3\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$vZ.Up7wtjVSwM6gfxU1u9.PLwhAHlN.ORNTWeymAzJlGFm4sUtnyq\",\"UserAvatar\":\"42.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/38.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-01 15:01:38\",\"UserXP\":0,\"UserOTP\":\"mK0Igk\",\"UserOTP_b\":\"lsgTuZUr\",\"online\":1},{\"id\":43,\"UserName\":\"zega febrianti\",\"UserEmail\":\"randombox381@gmail.com\",\"tempat_lahir\":\"Malang\",\"tgl_lahir\":\"2020-09-06\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"Pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$jy5C1BXHzcT0GcZpuFsrtuCvFWBpuq88LgTlu.LIv7ucjOPEiXYCG\",\"UserAvatar\":\"43.jpg\",\"fotoKTP\":\"42.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:35:40\",\"UserXP\":0,\"UserOTP\":\"hLryDa\",\"UserOTP_b\":null,\"online\":0},{\"id\":44,\"UserName\":\"Sugeng\",\"UserEmail\":\"randombox382@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-11\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$2V5rEESI9vzUYHKIoTq4xeJL6j4NzpO4YtDOTMGQgrofmdQ1E5JPO\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"43.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:38:03\",\"UserXP\":0,\"UserOTP\":\"pGQkXd\",\"UserOTP_b\":null,\"online\":0},{\"id\":45,\"UserName\":\"Almira\",\"UserEmail\":\"almira@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081098120929\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$.5o2VXmibXwYLf\\/GA3Byru4y\\/shrSTnIMA9pVPWqsmJqUunP0g5eK\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"44.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 14:44:21\",\"UserXP\":0,\"UserOTP\":\"a8FS0Y\",\"UserOTP_b\":null,\"online\":0},{\"id\":46,\"UserName\":\"Zsa zsa\",\"UserEmail\":\"zsa@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"garum\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"bapak zsazsa\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$hNTW2nW12vM6UJL4uFWZMOiNa9hO\\/sISZJqALlP8U3N51lgEw33jm\",\"UserAvatar\":\"46.jpg\",\"fotoKTP\":\"45.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 15:29:17\",\"UserXP\":0,\"UserOTP\":\"VCm7jE\",\"UserOTP_b\":null,\"online\":0},{\"id\":47,\"UserName\":\"Deddy Corbuzier\",\"UserEmail\":\"dedy@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-10-02\",\"alamat\":\"jalan rambutan\",\"telp\":\"081081081081\",\"agama\":null,\"orangtua\":\"bapak dedy\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$KU3ilDF9DkCzzFn3yW4yfOoywoZElfpMuomGab2IQG8YhQFA5ruU6\",\"UserAvatar\":\"47.jpg\",\"fotoKTP\":\"46.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-10-02 13:50:29\",\"UserXP\":0,\"UserOTP\":\"LgwpRK\",\"UserOTP_b\":null,\"online\":0}]},\"partner\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":1,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"9999\",\"alamat\":\"Kediri\",\"kepala\":\"Rohmat\",\"telpkepala\":\"888\",\"fotoKTP\":\"2\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":2,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"io\",\"alamat\":\"jojo\",\"kepala\":\"oojo\",\"telpkepala\":\"ooko\",\"fotoKTP\":\"909356294\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":3,\"instansi\":\"SMP negeri 5 kediri\",\"telpinstansi\":\"1111\",\"alamat\":\"Kediri\",\"kepala\":\"JIto\",\"telpkepala\":\"777\",\"fotoKTP\":\"8103b2331649b0521d687def5ed52fe7.png\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":4,\"instansi\":\"SD\",\"telpinstansi\":\"999\",\"alamat\":\"jkjkjk\",\"kepala\":\"9i9\",\"telpkepala\":\"kkoko\",\"fotoKTP\":\"b8baf9999b5ee6f75fb45e5f1039b409.PNG\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":5,\"instansi\":\"hoho\",\"telpinstansi\":\"88\",\"alamat\":\"ininini\",\"kepala\":\"ninini\",\"telpkepala\":\"55\",\"fotoKTP\":\"157599be8731e313424dff83d19b3048.jpg\",\"program\":\"english,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":6,\"instansi\":\"CV. Astar\",\"telpinstansi\":\"81252867991\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"9872148798\",\"fotoKTP\":\"CV. Astar_zega_4M1qTz.jpg\",\"program\":\"CV. Astar\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:32:59\"},{\"id\":7,\"instansi\":\"CV. Astar 2\",\"telpinstansi\":\"1234123412\",\"alamat\":\"jl bengawan solo gg 6 no 20\",\"kepala\":\"zega\",\"telpkepala\":\"12314124124\",\"fotoKTP\":\"CV. Astar 2_zega_R2rzTW.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:36:15\"},{\"id\":8,\"instansi\":\"zega\",\"telpinstansi\":\"12313123\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"124124124\",\"fotoKTP\":\"zega_zega_oxPmRS.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:37:59\"},{\"id\":9,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"097987124\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"087214970\",\"fotoKTP\":\"CV. Curiculum Vitae_zega_534M4O.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:42:21\"},{\"id\":10,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"102920947\",\"alamat\":\"jl bengawan solo gg 6 no 192\",\"kepala\":\"Pak\",\"telpkepala\":\"9812398498124\",\"fotoKTP\":\"CV. Curiculum Vitae_Pak_M029MS.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-05 13:30:20\"}]}}},\"duration\":641,\"memory\":2,\"hostname\":\"zegapc\"}', '2020-10-17 15:57:03'),
(99, '91c901f8-5521-42b4-9788-4f99233cf7f9', '91c901f8-7498-4a48-b76d-01a99bd9e47f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tblpartnership`\",\"time\":\"1.44\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":18,\"hash\":\"77aa2cbab5f6c73f0b1dfe29763108ce\",\"hostname\":\"zegapc\"}', '2020-10-17 15:57:55'),
(100, '91c901f8-6376-4407-bd00-caf9248c053f', '91c901f8-7498-4a48-b76d-01a99bd9e47f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tbluser`\",\"time\":\"1.49\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":19,\"hash\":\"8bc58e25f7f628eac03bbbfc907e8ee3\",\"hostname\":\"zegapc\"}', '2020-10-17 15:57:55'),
(101, '91c901f8-6845-4348-ab8b-afa5e2d35c5c', '91c901f8-7498-4a48-b76d-01a99bd9e47f', NULL, 1, 'view', '{\"name\":\"send_email\",\"path\":\"\\\\resources\\\\views\\/send_email.blade.php\",\"data\":[\"all_user\",\"partner\"],\"hostname\":\"zegapc\"}', '2020-10-17 15:57:55'),
(102, '91c901f8-7207-47d8-8a4e-778899e67b93', '91c901f8-7498-4a48-b76d-01a99bd9e47f', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\EmailController@index\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko\\/20100101 Firefox\\/81.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,*\\/*;q=0.8\",\"accept-language\":\"en-US,en;q=0.5\",\"accept-encoding\":\"gzip, deflate\",\"connection\":\"keep-alive\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6ImVkYndHMWNHUUhJR0JBMVRMR21sVGc9PSIsInZhbHVlIjoiSTkvYjlsRE4wendIK3hRcUM3OE9XMHZ1bFlVcHB5RTdBRytKUisvZUFVY0VlOUpsWjd6UHBQQk1NMXZTajYwUUlKYjdUUDRKL2VTTTk3WWNSRWFMaE10blBOZ1FvV2ZRTHhGU3MvZWorMUdjMFU2b09VUGxCa09MdFFWYm91cEIiLCJtYWMiOiI4MjZmNDY2NzI2Y2ViNWExYzQ5Y2IzMDExZDRkMTBhYzZkMTY1NjdhZjQ2ZTk0NmU0MTNjNTk3YzExZmVjYjhmIn0%3D; laravel_session=eyJpdiI6IjNSZTI5N3IveGJsS2Q4T3ZyWUt0dFE9PSIsInZhbHVlIjoiODUvSmFoTHllTWMzSlBHWDRjSm9uYTJlSWtSQzFSM085dzhzNVlpRnZuVnd6RzVjaTV3SjdmVDdoWFBMR3ZHaFNHWnloR3JTVGlpR0ZOaG1tK1V5V0plSkNLWDFSS1o4TmJYYjd4cDh6dkZIZXNGZkxxN09HYmkrd20wRWk4eFoiLCJtYWMiOiI1MjE0ZWUyYzdmNzBiMDAxNGU0NDIzZmY4YjllNzU3NTAzYTc3ZjVlMThmMGJmNGYwYmNkOWIxNDYwMzEzM2Y2In0%3D\",\"upgrade-insecure-requests\":\"1\",\"cache-control\":\"max-age=0\"},\"payload\":[],\"session\":{\"_token\":\"M34xw3tkR3jlMZGvCElZQCTWWyY02uOFPyeUHruZ\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\resources\\\\views\\/send_email.blade.php\",\"data\":{\"all_user\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":38,\"UserName\":\"zega febrianto\",\"UserEmail\":\"randombox38@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-08-31\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$QAiuuj420chlrISOvxmrJe5acaql8fjXjI6YucMWrDoFOFoWWfmLG\",\"UserAvatar\":\"38.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/4.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-08-31 16:33:39\",\"UserXP\":0,\"UserOTP\":\"EIDNRc\",\"UserOTP_b\":null,\"online\":0},{\"id\":42,\"UserName\":\"zega febriantoro\",\"UserEmail\":\"xegalol@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-01\",\"alamat\":\"jalan bengawan solo gg 6 no 19 rt 5 rw 3\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$vZ.Up7wtjVSwM6gfxU1u9.PLwhAHlN.ORNTWeymAzJlGFm4sUtnyq\",\"UserAvatar\":\"42.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/38.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-01 15:01:38\",\"UserXP\":0,\"UserOTP\":\"mK0Igk\",\"UserOTP_b\":\"lsgTuZUr\",\"online\":1},{\"id\":43,\"UserName\":\"zega febrianti\",\"UserEmail\":\"randombox381@gmail.com\",\"tempat_lahir\":\"Malang\",\"tgl_lahir\":\"2020-09-06\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"Pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$jy5C1BXHzcT0GcZpuFsrtuCvFWBpuq88LgTlu.LIv7ucjOPEiXYCG\",\"UserAvatar\":\"43.jpg\",\"fotoKTP\":\"42.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:35:40\",\"UserXP\":0,\"UserOTP\":\"hLryDa\",\"UserOTP_b\":null,\"online\":0},{\"id\":44,\"UserName\":\"Sugeng\",\"UserEmail\":\"randombox382@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-11\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$2V5rEESI9vzUYHKIoTq4xeJL6j4NzpO4YtDOTMGQgrofmdQ1E5JPO\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"43.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:38:03\",\"UserXP\":0,\"UserOTP\":\"pGQkXd\",\"UserOTP_b\":null,\"online\":0},{\"id\":45,\"UserName\":\"Almira\",\"UserEmail\":\"almira@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081098120929\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$.5o2VXmibXwYLf\\/GA3Byru4y\\/shrSTnIMA9pVPWqsmJqUunP0g5eK\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"44.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 14:44:21\",\"UserXP\":0,\"UserOTP\":\"a8FS0Y\",\"UserOTP_b\":null,\"online\":0},{\"id\":46,\"UserName\":\"Zsa zsa\",\"UserEmail\":\"zsa@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"garum\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"bapak zsazsa\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$hNTW2nW12vM6UJL4uFWZMOiNa9hO\\/sISZJqALlP8U3N51lgEw33jm\",\"UserAvatar\":\"46.jpg\",\"fotoKTP\":\"45.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 15:29:17\",\"UserXP\":0,\"UserOTP\":\"VCm7jE\",\"UserOTP_b\":null,\"online\":0},{\"id\":47,\"UserName\":\"Deddy Corbuzier\",\"UserEmail\":\"dedy@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-10-02\",\"alamat\":\"jalan rambutan\",\"telp\":\"081081081081\",\"agama\":null,\"orangtua\":\"bapak dedy\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$KU3ilDF9DkCzzFn3yW4yfOoywoZElfpMuomGab2IQG8YhQFA5ruU6\",\"UserAvatar\":\"47.jpg\",\"fotoKTP\":\"46.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-10-02 13:50:29\",\"UserXP\":0,\"UserOTP\":\"LgwpRK\",\"UserOTP_b\":null,\"online\":0}]},\"partner\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":1,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"9999\",\"alamat\":\"Kediri\",\"kepala\":\"Rohmat\",\"telpkepala\":\"888\",\"fotoKTP\":\"2\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":2,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"io\",\"alamat\":\"jojo\",\"kepala\":\"oojo\",\"telpkepala\":\"ooko\",\"fotoKTP\":\"909356294\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":3,\"instansi\":\"SMP negeri 5 kediri\",\"telpinstansi\":\"1111\",\"alamat\":\"Kediri\",\"kepala\":\"JIto\",\"telpkepala\":\"777\",\"fotoKTP\":\"8103b2331649b0521d687def5ed52fe7.png\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":4,\"instansi\":\"SD\",\"telpinstansi\":\"999\",\"alamat\":\"jkjkjk\",\"kepala\":\"9i9\",\"telpkepala\":\"kkoko\",\"fotoKTP\":\"b8baf9999b5ee6f75fb45e5f1039b409.PNG\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":5,\"instansi\":\"hoho\",\"telpinstansi\":\"88\",\"alamat\":\"ininini\",\"kepala\":\"ninini\",\"telpkepala\":\"55\",\"fotoKTP\":\"157599be8731e313424dff83d19b3048.jpg\",\"program\":\"english,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":6,\"instansi\":\"CV. Astar\",\"telpinstansi\":\"81252867991\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"9872148798\",\"fotoKTP\":\"CV. Astar_zega_4M1qTz.jpg\",\"program\":\"CV. Astar\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:32:59\"},{\"id\":7,\"instansi\":\"CV. Astar 2\",\"telpinstansi\":\"1234123412\",\"alamat\":\"jl bengawan solo gg 6 no 20\",\"kepala\":\"zega\",\"telpkepala\":\"12314124124\",\"fotoKTP\":\"CV. Astar 2_zega_R2rzTW.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:36:15\"},{\"id\":8,\"instansi\":\"zega\",\"telpinstansi\":\"12313123\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"124124124\",\"fotoKTP\":\"zega_zega_oxPmRS.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:37:59\"},{\"id\":9,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"097987124\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"087214970\",\"fotoKTP\":\"CV. Curiculum Vitae_zega_534M4O.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:42:21\"},{\"id\":10,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"102920947\",\"alamat\":\"jl bengawan solo gg 6 no 192\",\"kepala\":\"Pak\",\"telpkepala\":\"9812398498124\",\"fotoKTP\":\"CV. Curiculum Vitae_Pak_M029MS.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-05 13:30:20\"}]}}},\"duration\":453,\"memory\":14,\"hostname\":\"zegapc\"}', '2020-10-17 15:57:55'),
(103, '91c90207-fba3-45d6-8c69-518b9115f9b9', '91c90210-93ee-4d63-aef9-7efc50236d6c', NULL, 1, 'log', '{\"level\":\"info\",\"message\":\"Start\",\"context\":[],\"hostname\":\"zegapc\"}', '2020-10-17 15:58:05'),
(104, '91c90208-b560-4632-aefd-51bff3cc7516', '91c90210-93ee-4d63-aef9-7efc50236d6c', NULL, 1, 'job', '{\"status\":\"pending\",\"connection\":\"sync\",\"queue\":null,\"name\":\"App\\\\Mail\\\\KirimEmail\",\"tries\":null,\"timeout\":null,\"data\":{\"mailable\":{\"class\":\"App\\\\Mail\\\\KirimEmail\",\"properties\":{\"recipient\":{\"email\":\"xegalol@gmail.com\",\"subjek\":\"One-time Password\",\"konten\":\"mK0Igk\"},\"locale\":null,\"from\":[],\"to\":[{\"name\":null,\"address\":\"xegalol@gmail.com\"}],\"cc\":[],\"bcc\":[],\"replyTo\":[],\"subject\":null,\"view\":null,\"textView\":null,\"viewData\":[],\"attachments\":[],\"rawAttachments\":[],\"diskAttachments\":[],\"callbacks\":[],\"theme\":null,\"mailer\":\"smtp\",\"connection\":null,\"queue\":null,\"chainConnection\":null,\"chainQueue\":null,\"chainCatchCallbacks\":null,\"delay\":null,\"middleware\":[],\"chained\":[]}},\"tries\":null,\"timeout\":null},\"hostname\":\"zegapc\"}', '2020-10-17 15:58:05'),
(105, '91c90209-5422-49bc-aeb7-2948494cb8ba', '91c90210-93ee-4d63-aef9-7efc50236d6c', NULL, 1, 'view', '{\"name\":\"email_format\",\"path\":\"\\\\resources\\\\views\\/email_format.blade.php\",\"data\":[\"konten\",\"__telescope\",\"__telescope_mailable\",\"__telescope_queued\",\"recipient\",\"connection\",\"queue\",\"chainConnection\",\"chainQueue\",\"chainCatchCallbacks\",\"delay\",\"middleware\",\"chained\",\"message\"],\"hostname\":\"zegapc\"}', '2020-10-17 15:58:06'),
(106, '91c90210-399a-42fe-911f-e5aa97b4e4bd', '91c90210-93ee-4d63-aef9-7efc50236d6c', NULL, 1, 'mail', '{\"mailable\":\"App\\\\Mail\\\\KirimEmail\",\"queued\":false,\"from\":{\"cobajyby@gmail.com\":\"Jayabaya Bimbel\"},\"replyTo\":null,\"to\":{\"xegalol@gmail.com\":null},\"cc\":null,\"bcc\":[],\"subject\":\"One-time Password\",\"html\":\"<!DOCTYPE html>\\r\\n<html>\\r\\n<head>\\r\\n\\t<title><\\/title>\\r\\n<\\/head>\\r\\n<body>\\r\\n\\t<table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n        <tr>\\r\\n            <td>\\r\\n                <p>Hi <\\/p>\\r\\n                <p>Terimakasih telah mendaftar<\\/p>\\r\\n\\r\\n                <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n                    <tbody>\\r\\n                    <tr>\\r\\n                        <td align=\\\"left\\\">\\r\\n                            <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n                                <tbody>\\r\\n                                <tr>\\r\\n                                    <td> <div class=\\\"container\\\">\\r\\n                                            <center><p>OTP anda :<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            <center><p>mK0Igk<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            <center><p>Masukkan Kode OTP diatas untuk memverifikasi akun Anda<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            Terimakasih telah mendaftar ke Jayabaya Bimbel.<\\/p><\\/center>\\r\\n                                        <\\/div>\\r\\n                                    <\\/td>\\r\\n                                <\\/tr>\\r\\n                                <\\/tbody>\\r\\n                            <\\/table>\\r\\n                        <\\/td>\\r\\n                    <\\/tr>\\r\\n                    <\\/tbody>\\r\\n                <\\/table>\\r\\n                \\r\\n            <\\/td>\\r\\n        <\\/tr>\\r\\n    <\\/table>\\t\\r\\n<\\/body>\\r\\n<\\/html>\",\"raw\":\"Message-ID: <8c1ab0b5a3faf8bc0ad035750402d35c@127.0.0.1>\\r\\nDate: Sat, 17 Oct 2020 15:58:06 +0700\\r\\nSubject: One-time Password\\r\\nFrom: Jayabaya Bimbel <cobajyby@gmail.com>\\r\\nTo: xegalol@gmail.com\\r\\nMIME-Version: 1.0\\r\\nContent-Type: text\\/html; charset=utf-8\\r\\nContent-Transfer-Encoding: quoted-printable\\r\\n\\r\\n<!DOCTYPE html>\\r\\n<html>\\r\\n<head>\\r\\n=09<title><\\/title>\\r\\n<\\/head>\\r\\n<body>\\r\\n=09<table border=3D\\\"0\\\" cellpadding=3D\\\"0\\\" cellspacing=3D\\\"0\\\">\\r\\n        <tr>\\r\\n            <td>\\r\\n                <p>Hi <\\/p>\\r\\n                <p>Terimakasih telah mendaftar<\\/p>\\r\\n\\r\\n                <table border=3D\\\"0\\\" cellpadding=3D\\\"0\\\" cellspacing=3D\\\"0\\\">\\r\\n                    <tbody>\\r\\n                    <tr>\\r\\n                        <td align=3D\\\"left\\\">\\r\\n                            <table border=3D\\\"0\\\" cellpadding=3D\\\"0\\\" cellspaci=\\r\\nng=3D\\\"0\\\">\\r\\n                                <tbody>\\r\\n                                <tr>\\r\\n                                    <td> <div class=3D\\\"container\\\">\\r\\n                                            <center><p>OTP anda :<\\/p><\\/cent=\\r\\ner>\\r\\n                                            <hr>\\r\\n                                            <center><p>mK0Igk<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            <center><p>Masukkan Kode OTP di=\\r\\natas untuk memverifikasi akun Anda<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            Terimakasih telah mendaftar ke =\\r\\nJayabaya Bimbel.<\\/p><\\/center>\\r\\n                                        <\\/div>\\r\\n                                    <\\/td>\\r\\n                                <\\/tr>\\r\\n                                <\\/tbody>\\r\\n                            <\\/table>\\r\\n                        <\\/td>\\r\\n                    <\\/tr>\\r\\n                    <\\/tbody>\\r\\n                <\\/table>\\r\\n               =20\\r\\n            <\\/td>\\r\\n        <\\/tr>\\r\\n    <\\/table>=09\\r\\n<\\/body>\\r\\n<\\/html>\",\"hostname\":\"zegapc\"}', '2020-10-17 15:58:10'),
(107, '91c90210-8ef1-443d-b3aa-18f8f02681b8', '91c90210-93ee-4d63-aef9-7efc50236d6c', NULL, 1, 'log', '{\"level\":\"info\",\"message\":\"End\",\"context\":[],\"hostname\":\"zegapc\"}', '2020-10-17 15:58:10'),
(108, '91c90210-9349-4929-9534-4a7a9e640600', '91c90210-93ee-4d63-aef9-7efc50236d6c', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/send_email\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\EmailController@enqueue\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko\\/20100101 Firefox\\/81.0\",\"accept\":\"*\\/*\",\"accept-language\":\"en-US,en;q=0.5\",\"accept-encoding\":\"gzip, deflate\",\"content-type\":\"application\\/x-www-form-urlencoded; charset=UTF-8\",\"x-csrf-token\":\"M34xw3tkR3jlMZGvCElZQCTWWyY02uOFPyeUHruZ\",\"x-requested-with\":\"XMLHttpRequest\",\"content-length\":\"68\",\"origin\":\"http:\\/\\/127.0.0.1:8000\",\"connection\":\"keep-alive\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6InJmbG9VN3BkWEFQRFVxNkdUQnd3TGc9PSIsInZhbHVlIjoiTHkzTUEraE84enRQRysxU2FnQkErYVllM3J4TUdPaTIvVk9xN0NzdEh0R05KdmtMWkZqN0d0YXJZeXQrdXl6NVlSQityREp2M1hxZmdieDY5Mi8zOEpWVFlvMkFJcjhUNjR5YUxGSC82R3Fzd3ZhQjBUVVVHaGduTlRKSTc5bVUiLCJtYWMiOiI1ZmY5ZGU3NGE0Mzk4YTFiYTEwOGFhMDI1NWEyZmUyZmUyZTc5M2ViNWRiOTZmOTA4YjdiZjUzY2Q4MGJjMGFhIn0%3D; laravel_session=eyJpdiI6IkY2dGZtSmlaUURJWjBnWUZBN1B5MFE9PSIsInZhbHVlIjoiM3dPR1lCWkw1Q3lpMkRkZVpDaXlxZ1NqeDhyTnpXVmVGMnQyNlV3OURVbzFUUTJKcGtCdGFLYkF4YzFNQk5LZHArS05uZmVIMWp4R1BaOVl3bWUwcWgvY2I4c0FZNEpqTVNoNCswY0VySlNIRlpKbU90UkJCL3Mzc2NPdWZodk8iLCJtYWMiOiJlYTQ0YTI0OGIxNWRkNmM3YzY3YzZjNTNmY2JiNmJjYmI4N2U5MWI3NzM5M2U2MmZmYjI2Y2Q2MWI0YjQyMWQ0In0%3D\"},\"payload\":{\"recipient\":\"xegalol@gmail.com\",\"subjek\":\"One-time Password\",\"konten\":\"mK0Igk\"},\"session\":{\"_token\":\"M34xw3tkR3jlMZGvCElZQCTWWyY02uOFPyeUHruZ\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":\"HTML Response\",\"duration\":6572,\"memory\":6,\"hostname\":\"zegapc\"}', '2020-10-17 15:58:10'),
(109, '91c90262-3440-41c2-898c-8f0ccdf451b5', '91c90262-853f-421c-98a1-112801b85f81', NULL, 1, 'log', '{\"level\":\"info\",\"message\":\"Start\",\"context\":[],\"hostname\":\"zegapc\"}', '2020-10-17 15:59:04'),
(110, '91c90262-6416-4ea4-aac1-34f445904260', '91c90262-853f-421c-98a1-112801b85f81', NULL, 1, 'job', '{\"status\":\"pending\",\"connection\":\"database\",\"queue\":\"default\",\"name\":\"App\\\\Mail\\\\KirimEmail\",\"tries\":null,\"timeout\":null,\"data\":{\"mailable\":{\"class\":\"App\\\\Mail\\\\KirimEmail\",\"properties\":{\"recipient\":{\"email\":\"xegalol@gmail.com\",\"subjek\":\"One-time Password\",\"konten\":\"mK0Igk\"},\"locale\":null,\"from\":[],\"to\":[{\"name\":null,\"address\":\"xegalol@gmail.com\"}],\"cc\":[],\"bcc\":[],\"replyTo\":[],\"subject\":null,\"view\":null,\"textView\":null,\"viewData\":[],\"attachments\":[],\"rawAttachments\":[],\"diskAttachments\":[],\"callbacks\":[],\"theme\":null,\"mailer\":\"smtp\",\"connection\":null,\"queue\":null,\"chainConnection\":null,\"chainQueue\":null,\"chainCatchCallbacks\":null,\"delay\":null,\"middleware\":[],\"chained\":[]}},\"tries\":null,\"timeout\":null},\"hostname\":\"zegapc\"}', '2020-10-17 15:59:04'),
(111, '91c90262-7f23-4a9d-bc24-eed007e8f553', '91c90262-853f-421c-98a1-112801b85f81', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `jobs` (`queue`, `attempts`, `reserved_at`, `available_at`, `created_at`, `payload`) values (\'default\', 0, null, 1602925144, 1602925144, \'{\\\\\\\"uuid\\\\\\\":\\\\\\\"d6e2b8c2-dd37-42ff-a430-f4f0f59d082c\\\\\\\",\\\\\\\"displayName\\\\\\\":\\\\\\\"App\\\\\\\\Mail\\\\\\\\KirimEmail\\\\\\\",\\\\\\\"job\\\\\\\":\\\\\\\"Illuminate\\\\\\\\Queue\\\\\\\\CallQueuedHandler@call\\\\\\\",\\\\\\\"maxTries\\\\\\\":null,\\\\\\\"maxExceptions\\\\\\\":null,\\\\\\\"backoff\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"timeout\\\\\\\":null,\\\\\\\"retryUntil\\\\\\\":null,\\\\\\\"data\\\\\\\":{\\\\\\\"commandName\\\\\\\":\\\\\\\"Illuminate\\\\\\\\Mail\\\\\\\\SendQueuedMailable\\\\\\\",\\\\\\\"command\\\\\\\":\\\\\\\"O:34:\\\\\\\\\\\"Illuminate\\\\\\\\Mail\\\\\\\\SendQueuedMailable\\\\\\\\\\\":3:{s:8:\\\\\\\\\\\"mailable\\\\\\\\\\\";O:19:\\\\\\\\\\\"App\\\\\\\\Mail\\\\\\\\KirimEmail\\\\\\\\\\\":27:{s:9:\\\\\\\\\\\"recipient\\\\\\\\\\\";a:3:{s:5:\\\\\\\\\\\"email\\\\\\\\\\\";s:17:\\\\\\\\\\\"xegalol@gmail.com\\\\\\\\\\\";s:6:\\\\\\\\\\\"subjek\\\\\\\\\\\";s:17:\\\\\\\\\\\"One-time Password\\\\\\\\\\\";s:6:\\\\\\\\\\\"konten\\\\\\\\\\\";s:6:\\\\\\\\\\\"mK0Igk\\\\\\\\\\\";}s:6:\\\\\\\\\\\"locale\\\\\\\\\\\";N;s:4:\\\\\\\\\\\"from\\\\\\\\\\\";a:0:{}s:2:\\\\\\\\\\\"to\\\\\\\\\\\";a:1:{i:0;a:2:{s:4:\\\\\\\\\\\"name\\\\\\\\\\\";N;s:7:\\\\\\\\\\\"address\\\\\\\\\\\";s:17:\\\\\\\\\\\"xegalol@gmail.com\\\\\\\\\\\";}}s:2:\\\\\\\\\\\"cc\\\\\\\\\\\";a:0:{}s:3:\\\\\\\\\\\"bcc\\\\\\\\\\\";a:0:{}s:7:\\\\\\\\\\\"replyTo\\\\\\\\\\\";a:0:{}s:7:\\\\\\\\\\\"subject\\\\\\\\\\\";N;s:11:\\\\\\\\\\\"\\\\u0000*\\\\u0000markdown\\\\\\\\\\\";N;s:7:\\\\\\\\\\\"\\\\u0000*\\\\u0000html\\\\\\\\\\\";N;s:4:\\\\\\\\\\\"view\\\\\\\\\\\";N;s:8:\\\\\\\\\\\"textView\\\\\\\\\\\";N;s:8:\\\\\\\\\\\"viewData\\\\\\\\\\\";a:0:{}s:11:\\\\\\\\\\\"attachments\\\\\\\\\\\";a:0:{}s:14:\\\\\\\\\\\"rawAttachments\\\\\\\\\\\";a:0:{}s:15:\\\\\\\\\\\"diskAttachments\\\\\\\\\\\";a:0:{}s:9:\\\\\\\\\\\"callbacks\\\\\\\\\\\";a:0:{}s:5:\\\\\\\\\\\"theme\\\\\\\\\\\";N;s:6:\\\\\\\\\\\"mailer\\\\\\\\\\\";s:4:\\\\\\\\\\\"smtp\\\\\\\\\\\";s:10:\\\\\\\\\\\"connection\\\\\\\\\\\";N;s:5:\\\\\\\\\\\"queue\\\\\\\\\\\";N;s:15:\\\\\\\\\\\"chainConnection\\\\\\\\\\\";N;s:10:\\\\\\\\\\\"chainQueue\\\\\\\\\\\";N;s:19:\\\\\\\\\\\"chainCatchCallbacks\\\\\\\\\\\";N;s:5:\\\\\\\\\\\"delay\\\\\\\\\\\";N;s:10:\\\\\\\\\\\"middleware\\\\\\\\\\\";a:0:{}s:7:\\\\\\\\\\\"chained\\\\\\\\\\\";a:0:{}}s:5:\\\\\\\\\\\"tries\\\\\\\\\\\";N;s:7:\\\\\\\\\\\"timeout\\\\\\\\\\\";N;}\\\\\\\"},\\\\\\\"telescope_uuid\\\\\\\":\\\\\\\"91c90262-6416-4ea4-aac1-34f445904260\\\\\\\"}\')\",\"time\":\"54.34\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":31,\"hash\":\"dcb5bc575158ce02a6c28ed0691de7a9\",\"hostname\":\"zegapc\"}', '2020-10-17 15:59:04'),
(112, '91c90262-7f75-4e85-8e42-49578f1b9801', '91c90262-853f-421c-98a1-112801b85f81', NULL, 1, 'log', '{\"level\":\"info\",\"message\":\"End\",\"context\":[],\"hostname\":\"zegapc\"}', '2020-10-17 15:59:04'),
(113, '91c90262-8451-472e-a609-77452a03e0c3', '91c90262-853f-421c-98a1-112801b85f81', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/send_email\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\EmailController@enqueue\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko\\/20100101 Firefox\\/81.0\",\"accept\":\"*\\/*\",\"accept-language\":\"en-US,en;q=0.5\",\"accept-encoding\":\"gzip, deflate\",\"content-type\":\"application\\/x-www-form-urlencoded; charset=UTF-8\",\"x-csrf-token\":\"M34xw3tkR3jlMZGvCElZQCTWWyY02uOFPyeUHruZ\",\"x-requested-with\":\"XMLHttpRequest\",\"content-length\":\"68\",\"origin\":\"http:\\/\\/127.0.0.1:8000\",\"connection\":\"keep-alive\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6Im9tQU1ZSkJuNVAwVjRoR0ZsdHYrcFE9PSIsInZhbHVlIjoiSGhUQmV6Y2lLQ0xCbTNKTVhTZGQvNmZBRkF4ZUxHVnRuN3pzajFNeDFId3JQczlMQ0xSR0hHOUkxTnVoRGlRdUMveTFJN0pOcGQzWU5uRmQySm5SZ1p3U2xQbCswUG1MLzJaYm0vUTVuWktaZVhJNlcyMjR5T3hFbUhsbzRqUUsiLCJtYWMiOiJhNTg0OGRhNWVhMDM2NGE5ZDIwZmJkZThhMGVjNjY0ZjRjN2JhZDhkZmY2YjUwNDlkNTdiNjM4OWUzMTU1Y2M4In0%3D; laravel_session=eyJpdiI6InVLT3BEdVZLUkc2d1B5czJaYllxdnc9PSIsInZhbHVlIjoiSk9ZdUIvdktWOElmTlhUVnJZbGNueXl3QW9INHlHeG85NlNDdVBwVG1iZXgwdXNmOWl0TkxYdndiWEx5MjV1cGRjOTd5ZnNqK2pGVEZTVjl2OSsrQnpiOVBDMEc0NzcwcDM0K0hjQXZtT2NuelYzaE5VY2RoME5RWVlXZ2dwWm0iLCJtYWMiOiI4Y2E5MzAyMWY0NWFkODljODhkMGFkNjE4YzMwYTYzZjFkMThhZDVmNjJhMWZhYTc4MjdhNTQwYzNmMTZiZDU3In0%3D\"},\"payload\":{\"recipient\":\"xegalol@gmail.com\",\"subjek\":\"One-time Password\",\"konten\":\"mK0Igk\"},\"session\":{\"_token\":\"M34xw3tkR3jlMZGvCElZQCTWWyY02uOFPyeUHruZ\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\\/telescope\\/jobs\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":\"HTML Response\",\"duration\":614,\"memory\":2,\"hostname\":\"zegapc\"}', '2020-10-17 15:59:04'),
(114, '91c90265-4c44-4d2e-8dfc-dc3a1a5178f5', '91c90269-db51-4c53-8d93-44ade2a052a4', NULL, 1, 'view', '{\"name\":\"email_format\",\"path\":\"\\\\resources\\\\views\\/email_format.blade.php\",\"data\":[\"konten\",\"__telescope\",\"__telescope_mailable\",\"__telescope_queued\",\"recipient\",\"connection\",\"queue\",\"chainConnection\",\"chainQueue\",\"chainCatchCallbacks\",\"delay\",\"middleware\",\"chained\",\"message\"],\"hostname\":\"zegapc\"}', '2020-10-17 15:59:06'),
(115, '91c90269-9ea4-4224-92e3-604892f425f7', '91c90269-db51-4c53-8d93-44ade2a052a4', NULL, 1, 'mail', '{\"mailable\":\"App\\\\Mail\\\\KirimEmail\",\"queued\":false,\"from\":{\"cobajyby@gmail.com\":\"Jayabaya Bimbel\"},\"replyTo\":null,\"to\":{\"xegalol@gmail.com\":null},\"cc\":null,\"bcc\":[],\"subject\":\"One-time Password\",\"html\":\"<!DOCTYPE html>\\r\\n<html>\\r\\n<head>\\r\\n\\t<title><\\/title>\\r\\n<\\/head>\\r\\n<body>\\r\\n\\t<table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n        <tr>\\r\\n            <td>\\r\\n                <p>Hi <\\/p>\\r\\n                <p>Terimakasih telah mendaftar<\\/p>\\r\\n\\r\\n                <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n                    <tbody>\\r\\n                    <tr>\\r\\n                        <td align=\\\"left\\\">\\r\\n                            <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n                                <tbody>\\r\\n                                <tr>\\r\\n                                    <td> <div class=\\\"container\\\">\\r\\n                                            <center><p>OTP anda :<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            <center><p>mK0Igk<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            <center><p>Masukkan Kode OTP diatas untuk memverifikasi akun Anda<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            Terimakasih telah mendaftar ke Jayabaya Bimbel.<\\/p><\\/center>\\r\\n                                        <\\/div>\\r\\n                                    <\\/td>\\r\\n                                <\\/tr>\\r\\n                                <\\/tbody>\\r\\n                            <\\/table>\\r\\n                        <\\/td>\\r\\n                    <\\/tr>\\r\\n                    <\\/tbody>\\r\\n                <\\/table>\\r\\n                \\r\\n            <\\/td>\\r\\n        <\\/tr>\\r\\n    <\\/table>\\t\\r\\n<\\/body>\\r\\n<\\/html>\",\"raw\":\"Message-ID: <b1b8e4dc73dfa543b8811ce36f0d47e1@swift.generated>\\r\\nDate: Sat, 17 Oct 2020 15:59:06 +0700\\r\\nSubject: One-time Password\\r\\nFrom: Jayabaya Bimbel <cobajyby@gmail.com>\\r\\nTo: xegalol@gmail.com\\r\\nMIME-Version: 1.0\\r\\nContent-Type: text\\/html; charset=utf-8\\r\\nContent-Transfer-Encoding: quoted-printable\\r\\n\\r\\n<!DOCTYPE html>\\r\\n<html>\\r\\n<head>\\r\\n=09<title><\\/title>\\r\\n<\\/head>\\r\\n<body>\\r\\n=09<table border=3D\\\"0\\\" cellpadding=3D\\\"0\\\" cellspacing=3D\\\"0\\\">\\r\\n        <tr>\\r\\n            <td>\\r\\n                <p>Hi <\\/p>\\r\\n                <p>Terimakasih telah mendaftar<\\/p>\\r\\n\\r\\n                <table border=3D\\\"0\\\" cellpadding=3D\\\"0\\\" cellspacing=3D\\\"0\\\">\\r\\n                    <tbody>\\r\\n                    <tr>\\r\\n                        <td align=3D\\\"left\\\">\\r\\n                            <table border=3D\\\"0\\\" cellpadding=3D\\\"0\\\" cellspaci=\\r\\nng=3D\\\"0\\\">\\r\\n                                <tbody>\\r\\n                                <tr>\\r\\n                                    <td> <div class=3D\\\"container\\\">\\r\\n                                            <center><p>OTP anda :<\\/p><\\/cent=\\r\\ner>\\r\\n                                            <hr>\\r\\n                                            <center><p>mK0Igk<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            <center><p>Masukkan Kode OTP di=\\r\\natas untuk memverifikasi akun Anda<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            Terimakasih telah mendaftar ke =\\r\\nJayabaya Bimbel.<\\/p><\\/center>\\r\\n                                        <\\/div>\\r\\n                                    <\\/td>\\r\\n                                <\\/tr>\\r\\n                                <\\/tbody>\\r\\n                            <\\/table>\\r\\n                        <\\/td>\\r\\n                    <\\/tr>\\r\\n                    <\\/tbody>\\r\\n                <\\/table>\\r\\n               =20\\r\\n            <\\/td>\\r\\n        <\\/tr>\\r\\n    <\\/table>=09\\r\\n<\\/body>\\r\\n<\\/html>\",\"hostname\":\"zegapc\"}', '2020-10-17 15:59:09'),
(116, '91c90269-a141-4b11-a8a3-5f95606d9219', '91c90269-db51-4c53-8d93-44ade2a052a4', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `jobs` where `id` = 4 limit 1 for update\",\"time\":\"4.16\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\artisan\",\"line\":37,\"hash\":\"701e0eff6beceb4d961bc890c63f6ecd\",\"hostname\":\"zegapc\"}', '2020-10-17 15:59:09'),
(117, '91c90269-a36a-479b-afe4-d88a4f56fd3c', '91c90269-db51-4c53-8d93-44ade2a052a4', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `jobs` where `id` = 4\",\"time\":\"4.40\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\artisan\",\"line\":37,\"hash\":\"8d1bddd6e09fe9e9537d55b08cba190b\",\"hostname\":\"zegapc\"}', '2020-10-17 15:59:09'),
(118, '91c90aa8-1415-4c28-8ba6-435d6a8c4045', '91c90aa8-6906-4f41-a937-6f193ab1cb54', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tblpartnership`\",\"time\":\"1.32\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":18,\"hash\":\"77aa2cbab5f6c73f0b1dfe29763108ce\",\"hostname\":\"zegapc\"}', '2020-10-17 16:22:12'),
(119, '91c90aa8-40c5-419b-8e0d-1dfa3afbac23', '91c90aa8-6906-4f41-a937-6f193ab1cb54', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tbluser`\",\"time\":\"1.16\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":19,\"hash\":\"8bc58e25f7f628eac03bbbfc907e8ee3\",\"hostname\":\"zegapc\"}', '2020-10-17 16:22:12'),
(120, '91c90aa8-5342-4c35-9946-111f0c66e9c8', '91c90aa8-6906-4f41-a937-6f193ab1cb54', NULL, 1, 'view', '{\"name\":\"send_email\",\"path\":\"\\\\resources\\\\views\\/send_email.blade.php\",\"data\":[\"all_user\",\"partner\"],\"hostname\":\"zegapc\"}', '2020-10-17 16:22:12'),
(121, '91c90aa8-6789-4f5c-89b5-f4b4576a65a5', '91c90aa8-6906-4f41-a937-6f193ab1cb54', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\EmailController@index\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko\\/20100101 Firefox\\/81.0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,*\\/*;q=0.8\",\"accept-language\":\"en-US,en;q=0.5\",\"accept-encoding\":\"gzip, deflate\",\"connection\":\"keep-alive\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlVSa25tVjBTK2E5U0M5OXRsY1pZNnc9PSIsInZhbHVlIjoic1F0QkRvZ1hIN0t5ZzMzQ2QyWWgrM1FkQnlPQm5TbThhZWY5OE8xZmc3MzZ5Qjh3amhPTWtDVEhybUlXSHhkRDlycFFjbTZWeE9EZ0RvZlNrdC9VWDJ0ZWpidTB4bzlKVHk1dkZUYVZNWlFwNmF2QmpmMi90TDBLTlpJajl3aE4iLCJtYWMiOiJkYTRlOTVkYTM1NTlhZTNkNDk3NzE1MzIzMDNmZDc1NDZhY2QxMWExMDhmMzE1Yzg4ZWY2ZWViZTYyNWVmOGNjIn0%3D; laravel_session=eyJpdiI6IkFFUjE0Wk5seEtlcGxDRzdhdHlvUUE9PSIsInZhbHVlIjoicU1BckNKSzl4Q1IvR1ZmZG9UL3g4SkVjVlJUakFOTFR5T1kveEl1WUU5OUpZdDVyS0RCTHcyRHhOcTJFckNqTjRoaWZDNFo4bXhWV3BTS2FJVzYrNmV3NG5VZUp0RTF2K1dxLzZiTjB6K1IzKytHMXhmeEliN1I3ekZpQU5IZnoiLCJtYWMiOiI0ZTU4NThlNTBhYmE0ZjAwYWExNmM0NzcwZDAyZDZhMjc2Mzc4Y2RhZmFlYzZiNTU1YjdkMTU0Zjg1NjAxMjEzIn0%3D\",\"upgrade-insecure-requests\":\"1\",\"cache-control\":\"max-age=0\"},\"payload\":[],\"session\":{\"_token\":\"M34xw3tkR3jlMZGvCElZQCTWWyY02uOFPyeUHruZ\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\resources\\\\views\\/send_email.blade.php\",\"data\":{\"all_user\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":38,\"UserName\":\"zega febrianto\",\"UserEmail\":\"randombox38@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-08-31\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$QAiuuj420chlrISOvxmrJe5acaql8fjXjI6YucMWrDoFOFoWWfmLG\",\"UserAvatar\":\"38.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/4.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-08-31 16:33:39\",\"UserXP\":0,\"UserOTP\":\"EIDNRc\",\"UserOTP_b\":null,\"online\":0},{\"id\":42,\"UserName\":\"zega febriantoro\",\"UserEmail\":\"xegalol@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-01\",\"alamat\":\"jalan bengawan solo gg 6 no 19 rt 5 rw 3\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$vZ.Up7wtjVSwM6gfxU1u9.PLwhAHlN.ORNTWeymAzJlGFm4sUtnyq\",\"UserAvatar\":\"42.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/38.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-01 15:01:38\",\"UserXP\":0,\"UserOTP\":\"mK0Igk\",\"UserOTP_b\":\"lsgTuZUr\",\"online\":1},{\"id\":43,\"UserName\":\"zega febrianti\",\"UserEmail\":\"randombox381@gmail.com\",\"tempat_lahir\":\"Malang\",\"tgl_lahir\":\"2020-09-06\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"Pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$jy5C1BXHzcT0GcZpuFsrtuCvFWBpuq88LgTlu.LIv7ucjOPEiXYCG\",\"UserAvatar\":\"43.jpg\",\"fotoKTP\":\"42.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:35:40\",\"UserXP\":0,\"UserOTP\":\"hLryDa\",\"UserOTP_b\":null,\"online\":0},{\"id\":44,\"UserName\":\"Sugeng\",\"UserEmail\":\"randombox382@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-11\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$2V5rEESI9vzUYHKIoTq4xeJL6j4NzpO4YtDOTMGQgrofmdQ1E5JPO\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"43.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:38:03\",\"UserXP\":0,\"UserOTP\":\"pGQkXd\",\"UserOTP_b\":null,\"online\":0},{\"id\":45,\"UserName\":\"Almira\",\"UserEmail\":\"almira@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081098120929\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$.5o2VXmibXwYLf\\/GA3Byru4y\\/shrSTnIMA9pVPWqsmJqUunP0g5eK\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"44.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 14:44:21\",\"UserXP\":0,\"UserOTP\":\"a8FS0Y\",\"UserOTP_b\":null,\"online\":0},{\"id\":46,\"UserName\":\"Zsa zsa\",\"UserEmail\":\"zsa@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"garum\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"bapak zsazsa\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$hNTW2nW12vM6UJL4uFWZMOiNa9hO\\/sISZJqALlP8U3N51lgEw33jm\",\"UserAvatar\":\"46.jpg\",\"fotoKTP\":\"45.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 15:29:17\",\"UserXP\":0,\"UserOTP\":\"VCm7jE\",\"UserOTP_b\":null,\"online\":0},{\"id\":47,\"UserName\":\"Deddy Corbuzier\",\"UserEmail\":\"dedy@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-10-02\",\"alamat\":\"jalan rambutan\",\"telp\":\"081081081081\",\"agama\":null,\"orangtua\":\"bapak dedy\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$KU3ilDF9DkCzzFn3yW4yfOoywoZElfpMuomGab2IQG8YhQFA5ruU6\",\"UserAvatar\":\"47.jpg\",\"fotoKTP\":\"46.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-10-02 13:50:29\",\"UserXP\":0,\"UserOTP\":\"LgwpRK\",\"UserOTP_b\":null,\"online\":0}]},\"partner\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":1,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"9999\",\"alamat\":\"Kediri\",\"kepala\":\"Rohmat\",\"telpkepala\":\"888\",\"fotoKTP\":\"2\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":2,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"io\",\"alamat\":\"jojo\",\"kepala\":\"oojo\",\"telpkepala\":\"ooko\",\"fotoKTP\":\"909356294\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":3,\"instansi\":\"SMP negeri 5 kediri\",\"telpinstansi\":\"1111\",\"alamat\":\"Kediri\",\"kepala\":\"JIto\",\"telpkepala\":\"777\",\"fotoKTP\":\"8103b2331649b0521d687def5ed52fe7.png\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":4,\"instansi\":\"SD\",\"telpinstansi\":\"999\",\"alamat\":\"jkjkjk\",\"kepala\":\"9i9\",\"telpkepala\":\"kkoko\",\"fotoKTP\":\"b8baf9999b5ee6f75fb45e5f1039b409.PNG\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":5,\"instansi\":\"hoho\",\"telpinstansi\":\"88\",\"alamat\":\"ininini\",\"kepala\":\"ninini\",\"telpkepala\":\"55\",\"fotoKTP\":\"157599be8731e313424dff83d19b3048.jpg\",\"program\":\"english,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":6,\"instansi\":\"CV. Astar\",\"telpinstansi\":\"81252867991\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"9872148798\",\"fotoKTP\":\"CV. Astar_zega_4M1qTz.jpg\",\"program\":\"CV. Astar\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:32:59\"},{\"id\":7,\"instansi\":\"CV. Astar 2\",\"telpinstansi\":\"1234123412\",\"alamat\":\"jl bengawan solo gg 6 no 20\",\"kepala\":\"zega\",\"telpkepala\":\"12314124124\",\"fotoKTP\":\"CV. Astar 2_zega_R2rzTW.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:36:15\"},{\"id\":8,\"instansi\":\"zega\",\"telpinstansi\":\"12313123\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"124124124\",\"fotoKTP\":\"zega_zega_oxPmRS.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:37:59\"},{\"id\":9,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"097987124\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"087214970\",\"fotoKTP\":\"CV. Curiculum Vitae_zega_534M4O.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:42:21\"},{\"id\":10,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"102920947\",\"alamat\":\"jl bengawan solo gg 6 no 192\",\"kepala\":\"Pak\",\"telpkepala\":\"9812398498124\",\"fotoKTP\":\"CV. Curiculum Vitae_Pak_M029MS.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-05 13:30:20\"}]}}},\"duration\":2062,\"memory\":2,\"hostname\":\"zegapc\"}', '2020-10-17 16:22:12');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(122, '91c91526-766f-436c-8654-51f81cff4fc9', '91c91526-ed11-4d78-a9d3-1124c43f0101', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tblpartnership`\",\"time\":\"12.28\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":18,\"hash\":\"77aa2cbab5f6c73f0b1dfe29763108ce\",\"hostname\":\"zegapc\"}', '2020-10-17 16:51:33'),
(123, '91c91526-b04d-4eb2-b108-71e18d51238c', '91c91526-ed11-4d78-a9d3-1124c43f0101', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tbluser`\",\"time\":\"1.17\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":19,\"hash\":\"8bc58e25f7f628eac03bbbfc907e8ee3\",\"hostname\":\"zegapc\"}', '2020-10-17 16:51:33'),
(124, '91c91526-c301-453c-a141-56b0347376b6', '91c91526-ed11-4d78-a9d3-1124c43f0101', NULL, 1, 'view', '{\"name\":\"send_email\",\"path\":\"\\\\resources\\\\views\\/send_email.blade.php\",\"data\":[\"all_user\",\"partner\"],\"hostname\":\"zegapc\"}', '2020-10-17 16:51:33'),
(125, '91c91526-ec3a-4923-aa41-3663c0fd1a99', '91c91526-ed11-4d78-a9d3-1124c43f0101', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\EmailController@index\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Chromium\\\";v=\\\"86\\\", \\\"\\\\\\\"Not\\\\\\\\A;Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"86\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/86.0.4240.75 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\"},\"payload\":[],\"session\":{\"_token\":\"oKUubBsYBy4hvRejdkFm2su7OvDAwtPunMoZHHx5\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\resources\\\\views\\/send_email.blade.php\",\"data\":{\"all_user\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":38,\"UserName\":\"zega febrianto\",\"UserEmail\":\"randombox38@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-08-31\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$QAiuuj420chlrISOvxmrJe5acaql8fjXjI6YucMWrDoFOFoWWfmLG\",\"UserAvatar\":\"38.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/4.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-08-31 16:33:39\",\"UserXP\":0,\"UserOTP\":\"EIDNRc\",\"UserOTP_b\":null,\"online\":0},{\"id\":42,\"UserName\":\"zega febriantoro\",\"UserEmail\":\"xegalol@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-01\",\"alamat\":\"jalan bengawan solo gg 6 no 19 rt 5 rw 3\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$vZ.Up7wtjVSwM6gfxU1u9.PLwhAHlN.ORNTWeymAzJlGFm4sUtnyq\",\"UserAvatar\":\"42.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/38.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-01 15:01:38\",\"UserXP\":0,\"UserOTP\":\"mK0Igk\",\"UserOTP_b\":\"lsgTuZUr\",\"online\":1},{\"id\":43,\"UserName\":\"zega febrianti\",\"UserEmail\":\"randombox381@gmail.com\",\"tempat_lahir\":\"Malang\",\"tgl_lahir\":\"2020-09-06\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"Pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$jy5C1BXHzcT0GcZpuFsrtuCvFWBpuq88LgTlu.LIv7ucjOPEiXYCG\",\"UserAvatar\":\"43.jpg\",\"fotoKTP\":\"42.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:35:40\",\"UserXP\":0,\"UserOTP\":\"hLryDa\",\"UserOTP_b\":null,\"online\":0},{\"id\":44,\"UserName\":\"Sugeng\",\"UserEmail\":\"randombox382@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-11\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$2V5rEESI9vzUYHKIoTq4xeJL6j4NzpO4YtDOTMGQgrofmdQ1E5JPO\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"43.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:38:03\",\"UserXP\":0,\"UserOTP\":\"pGQkXd\",\"UserOTP_b\":null,\"online\":0},{\"id\":45,\"UserName\":\"Almira\",\"UserEmail\":\"almira@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081098120929\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$.5o2VXmibXwYLf\\/GA3Byru4y\\/shrSTnIMA9pVPWqsmJqUunP0g5eK\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"44.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 14:44:21\",\"UserXP\":0,\"UserOTP\":\"a8FS0Y\",\"UserOTP_b\":null,\"online\":0},{\"id\":46,\"UserName\":\"Zsa zsa\",\"UserEmail\":\"zsa@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"garum\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"bapak zsazsa\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$hNTW2nW12vM6UJL4uFWZMOiNa9hO\\/sISZJqALlP8U3N51lgEw33jm\",\"UserAvatar\":\"46.jpg\",\"fotoKTP\":\"45.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 15:29:17\",\"UserXP\":0,\"UserOTP\":\"VCm7jE\",\"UserOTP_b\":null,\"online\":0},{\"id\":47,\"UserName\":\"Deddy Corbuzier\",\"UserEmail\":\"dedy@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-10-02\",\"alamat\":\"jalan rambutan\",\"telp\":\"081081081081\",\"agama\":null,\"orangtua\":\"bapak dedy\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$KU3ilDF9DkCzzFn3yW4yfOoywoZElfpMuomGab2IQG8YhQFA5ruU6\",\"UserAvatar\":\"47.jpg\",\"fotoKTP\":\"46.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-10-02 13:50:29\",\"UserXP\":0,\"UserOTP\":\"LgwpRK\",\"UserOTP_b\":null,\"online\":0}]},\"partner\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":1,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"9999\",\"alamat\":\"Kediri\",\"kepala\":\"Rohmat\",\"telpkepala\":\"888\",\"fotoKTP\":\"2\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":2,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"io\",\"alamat\":\"jojo\",\"kepala\":\"oojo\",\"telpkepala\":\"ooko\",\"fotoKTP\":\"909356294\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":3,\"instansi\":\"SMP negeri 5 kediri\",\"telpinstansi\":\"1111\",\"alamat\":\"Kediri\",\"kepala\":\"JIto\",\"telpkepala\":\"777\",\"fotoKTP\":\"8103b2331649b0521d687def5ed52fe7.png\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":4,\"instansi\":\"SD\",\"telpinstansi\":\"999\",\"alamat\":\"jkjkjk\",\"kepala\":\"9i9\",\"telpkepala\":\"kkoko\",\"fotoKTP\":\"b8baf9999b5ee6f75fb45e5f1039b409.PNG\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":5,\"instansi\":\"hoho\",\"telpinstansi\":\"88\",\"alamat\":\"ininini\",\"kepala\":\"ninini\",\"telpkepala\":\"55\",\"fotoKTP\":\"157599be8731e313424dff83d19b3048.jpg\",\"program\":\"english,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":6,\"instansi\":\"CV. Astar\",\"telpinstansi\":\"81252867991\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"9872148798\",\"fotoKTP\":\"CV. Astar_zega_4M1qTz.jpg\",\"program\":\"CV. Astar\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:32:59\"},{\"id\":7,\"instansi\":\"CV. Astar 2\",\"telpinstansi\":\"1234123412\",\"alamat\":\"jl bengawan solo gg 6 no 20\",\"kepala\":\"zega\",\"telpkepala\":\"12314124124\",\"fotoKTP\":\"CV. Astar 2_zega_R2rzTW.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:36:15\"},{\"id\":8,\"instansi\":\"zega\",\"telpinstansi\":\"12313123\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"124124124\",\"fotoKTP\":\"zega_zega_oxPmRS.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:37:59\"},{\"id\":9,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"097987124\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"087214970\",\"fotoKTP\":\"CV. Curiculum Vitae_zega_534M4O.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:42:21\"},{\"id\":10,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"102920947\",\"alamat\":\"jl bengawan solo gg 6 no 192\",\"kepala\":\"Pak\",\"telpkepala\":\"9812398498124\",\"fotoKTP\":\"CV. Curiculum Vitae_Pak_M029MS.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-05 13:30:20\"},{\"id\":11,\"instansi\":\"zega\",\"telpinstansi\":\"09124097097\",\"alamat\":\"pakunden\",\"kepala\":\"zega\",\"telpkepala\":\"190209120497\",\"fotoKTP\":\"zega_zega_U1TCmy.jpg\",\"program\":\"english,math,class,\",\"isRead\":\"1\",\"created_at\":\"2020-10-17 16:49:44\"}]}}},\"duration\":1129,\"memory\":18,\"hostname\":\"zegapc\"}', '2020-10-17 16:51:33'),
(126, '91c9155f-a783-4b07-8daa-df831fa38462', '91c9155f-b2ff-49f2-80a7-f48fabb9e057', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tblpartnership`\",\"time\":\"3.06\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":18,\"hash\":\"77aa2cbab5f6c73f0b1dfe29763108ce\",\"hostname\":\"zegapc\"}', '2020-10-17 16:52:10'),
(127, '91c9155f-abbe-45c7-a636-b12a63ac8ff6', '91c9155f-b2ff-49f2-80a7-f48fabb9e057', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tbluser`\",\"time\":\"1.03\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":19,\"hash\":\"8bc58e25f7f628eac03bbbfc907e8ee3\",\"hostname\":\"zegapc\"}', '2020-10-17 16:52:10'),
(128, '91c9155f-ae00-4c30-ae4b-9129bbcc1e0b', '91c9155f-b2ff-49f2-80a7-f48fabb9e057', NULL, 1, 'view', '{\"name\":\"send_email\",\"path\":\"\\\\resources\\\\views\\/send_email.blade.php\",\"data\":[\"all_user\",\"partner\"],\"hostname\":\"zegapc\"}', '2020-10-17 16:52:10'),
(129, '91c9155f-b259-44ad-bcea-8f90d7dd432d', '91c9155f-b2ff-49f2-80a7-f48fabb9e057', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\EmailController@index\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"sec-ch-ua\":\"\\\"Chromium\\\";v=\\\"86\\\", \\\"\\\\\\\"Not\\\\\\\\A;Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"86\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/86.0.4240.75 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6Ii83VER2OVFrNGFpTHNDT01rVll6T0E9PSIsInZhbHVlIjoiZEpUVEJTb2p5dnpXM3ZUUU4vRmp1YnprVld4ME5aZTlRcmFxTlMrRFNrUisrVk9yZm1iU0xPN2J5TjZNTDNRY1J3RG1xTEE5RHJHeC9qUkZvTkJuenVpZy9zNTIrd0NLZ2hwdk1JOFBVQlNjd3lIUCtLRTJxZFJzcE11clFZZmUiLCJtYWMiOiIxMzhhZGJlNjVjMzAyOGQ1ZDkwOTE2NWJkOWM1NjFkNDlhYmRlYTRkZGZiOTY2MTcyZmZiZTBhMzI3ZmRmZTEzIn0%3D; laravel_session=eyJpdiI6InhxUFM3dkZSYnMvQk5aTnB4MWI1bkE9PSIsInZhbHVlIjoiNXV2ZWpMTkRGUXVidXNUblNSUnRCODE2OEJ2bGoxbm9uNHZ6Q2FMQ2JDenJEUytGMk1MeklEeVgrS3ZqdUQwbmkvNXBaUjVWOUxuU0JjMm5yVi9acWFiaXZiWUF2cW5mYW1lcjZvRUJ0eWhya1MrbUpXUDFWYm53RC95MmZYV3oiLCJtYWMiOiI0ZTE0OGUyYzFlYzNlNjM5YTZmZjNkN2EzZWU0NDI5OGJlMDBmOGU0YmJmOGM4MWQ3YTA5NjYxODQ3ZTljNDVlIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"oKUubBsYBy4hvRejdkFm2su7OvDAwtPunMoZHHx5\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\resources\\\\views\\/send_email.blade.php\",\"data\":{\"all_user\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":38,\"UserName\":\"zega febrianto\",\"UserEmail\":\"randombox38@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-08-31\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$QAiuuj420chlrISOvxmrJe5acaql8fjXjI6YucMWrDoFOFoWWfmLG\",\"UserAvatar\":\"38.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/4.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-08-31 16:33:39\",\"UserXP\":0,\"UserOTP\":\"EIDNRc\",\"UserOTP_b\":null,\"online\":0},{\"id\":42,\"UserName\":\"zega febriantoro\",\"UserEmail\":\"xegalol@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-01\",\"alamat\":\"jalan bengawan solo gg 6 no 19 rt 5 rw 3\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$vZ.Up7wtjVSwM6gfxU1u9.PLwhAHlN.ORNTWeymAzJlGFm4sUtnyq\",\"UserAvatar\":\"42.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/38.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-01 15:01:38\",\"UserXP\":0,\"UserOTP\":\"mK0Igk\",\"UserOTP_b\":\"lsgTuZUr\",\"online\":1},{\"id\":43,\"UserName\":\"zega febrianti\",\"UserEmail\":\"randombox381@gmail.com\",\"tempat_lahir\":\"Malang\",\"tgl_lahir\":\"2020-09-06\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"Pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$jy5C1BXHzcT0GcZpuFsrtuCvFWBpuq88LgTlu.LIv7ucjOPEiXYCG\",\"UserAvatar\":\"43.jpg\",\"fotoKTP\":\"42.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:35:40\",\"UserXP\":0,\"UserOTP\":\"hLryDa\",\"UserOTP_b\":null,\"online\":0},{\"id\":44,\"UserName\":\"Sugeng\",\"UserEmail\":\"randombox382@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-11\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$2V5rEESI9vzUYHKIoTq4xeJL6j4NzpO4YtDOTMGQgrofmdQ1E5JPO\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"43.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:38:03\",\"UserXP\":0,\"UserOTP\":\"pGQkXd\",\"UserOTP_b\":null,\"online\":0},{\"id\":45,\"UserName\":\"Almira\",\"UserEmail\":\"almira@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081098120929\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$.5o2VXmibXwYLf\\/GA3Byru4y\\/shrSTnIMA9pVPWqsmJqUunP0g5eK\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"44.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 14:44:21\",\"UserXP\":0,\"UserOTP\":\"a8FS0Y\",\"UserOTP_b\":null,\"online\":0},{\"id\":46,\"UserName\":\"Zsa zsa\",\"UserEmail\":\"zsa@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"garum\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"bapak zsazsa\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$hNTW2nW12vM6UJL4uFWZMOiNa9hO\\/sISZJqALlP8U3N51lgEw33jm\",\"UserAvatar\":\"46.jpg\",\"fotoKTP\":\"45.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 15:29:17\",\"UserXP\":0,\"UserOTP\":\"VCm7jE\",\"UserOTP_b\":null,\"online\":0},{\"id\":47,\"UserName\":\"Deddy Corbuzier\",\"UserEmail\":\"dedy@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-10-02\",\"alamat\":\"jalan rambutan\",\"telp\":\"081081081081\",\"agama\":null,\"orangtua\":\"bapak dedy\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$KU3ilDF9DkCzzFn3yW4yfOoywoZElfpMuomGab2IQG8YhQFA5ruU6\",\"UserAvatar\":\"47.jpg\",\"fotoKTP\":\"46.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-10-02 13:50:29\",\"UserXP\":0,\"UserOTP\":\"LgwpRK\",\"UserOTP_b\":null,\"online\":0}]},\"partner\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":1,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"9999\",\"alamat\":\"Kediri\",\"kepala\":\"Rohmat\",\"telpkepala\":\"888\",\"fotoKTP\":\"2\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":2,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"io\",\"alamat\":\"jojo\",\"kepala\":\"oojo\",\"telpkepala\":\"ooko\",\"fotoKTP\":\"909356294\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":3,\"instansi\":\"SMP negeri 5 kediri\",\"telpinstansi\":\"1111\",\"alamat\":\"Kediri\",\"kepala\":\"JIto\",\"telpkepala\":\"777\",\"fotoKTP\":\"8103b2331649b0521d687def5ed52fe7.png\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":4,\"instansi\":\"SD\",\"telpinstansi\":\"999\",\"alamat\":\"jkjkjk\",\"kepala\":\"9i9\",\"telpkepala\":\"kkoko\",\"fotoKTP\":\"b8baf9999b5ee6f75fb45e5f1039b409.PNG\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":5,\"instansi\":\"hoho\",\"telpinstansi\":\"88\",\"alamat\":\"ininini\",\"kepala\":\"ninini\",\"telpkepala\":\"55\",\"fotoKTP\":\"157599be8731e313424dff83d19b3048.jpg\",\"program\":\"english,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":6,\"instansi\":\"CV. Astar\",\"telpinstansi\":\"81252867991\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"9872148798\",\"fotoKTP\":\"CV. Astar_zega_4M1qTz.jpg\",\"program\":\"CV. Astar\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:32:59\"},{\"id\":7,\"instansi\":\"CV. Astar 2\",\"telpinstansi\":\"1234123412\",\"alamat\":\"jl bengawan solo gg 6 no 20\",\"kepala\":\"zega\",\"telpkepala\":\"12314124124\",\"fotoKTP\":\"CV. Astar 2_zega_R2rzTW.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:36:15\"},{\"id\":8,\"instansi\":\"zega\",\"telpinstansi\":\"12313123\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"124124124\",\"fotoKTP\":\"zega_zega_oxPmRS.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:37:59\"},{\"id\":9,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"097987124\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"087214970\",\"fotoKTP\":\"CV. Curiculum Vitae_zega_534M4O.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:42:21\"},{\"id\":10,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"102920947\",\"alamat\":\"jl bengawan solo gg 6 no 192\",\"kepala\":\"Pak\",\"telpkepala\":\"9812398498124\",\"fotoKTP\":\"CV. Curiculum Vitae_Pak_M029MS.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-05 13:30:20\"},{\"id\":11,\"instansi\":\"zega\",\"telpinstansi\":\"09124097097\",\"alamat\":\"pakunden\",\"kepala\":\"zega\",\"telpkepala\":\"190209120497\",\"fotoKTP\":\"zega_zega_U1TCmy.jpg\",\"program\":\"english,math,class,\",\"isRead\":\"1\",\"created_at\":\"2020-10-17 16:49:44\"}]}}},\"duration\":324,\"memory\":2,\"hostname\":\"zegapc\"}', '2020-10-17 16:52:10'),
(130, '91c918aa-e20a-4755-901b-5534992acf0c', '91c918aa-f37d-4a34-b62e-f8faa7fe7a68', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tblpartnership`\",\"time\":\"1.50\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":18,\"hash\":\"77aa2cbab5f6c73f0b1dfe29763108ce\",\"hostname\":\"zegapc\"}', '2020-10-17 17:01:23'),
(131, '91c918aa-e9a9-4187-a3b3-2322e467f0cb', '91c918aa-f37d-4a34-b62e-f8faa7fe7a68', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tbluser`\",\"time\":\"0.80\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":19,\"hash\":\"8bc58e25f7f628eac03bbbfc907e8ee3\",\"hostname\":\"zegapc\"}', '2020-10-17 17:01:23'),
(132, '91c918aa-ed6d-4a88-a7de-24af98627b19', '91c918aa-f37d-4a34-b62e-f8faa7fe7a68', NULL, 1, 'view', '{\"name\":\"send_email\",\"path\":\"\\\\resources\\\\views\\/send_email.blade.php\",\"data\":[\"all_user\",\"partner\"],\"hostname\":\"zegapc\"}', '2020-10-17 17:01:23'),
(133, '91c918aa-f2b3-4ef1-b22e-62486434b6a0', '91c918aa-f37d-4a34-b62e-f8faa7fe7a68', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\EmailController@index\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"sec-ch-ua\":\"\\\"Chromium\\\";v=\\\"86\\\", \\\"\\\\\\\"Not\\\\\\\\A;Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"86\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/86.0.4240.75 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IjhtUFdtVFREOEI2cEJzbkY3bVV1dXc9PSIsInZhbHVlIjoid0V2WUV4Ry9VeGc3aXJLNEk4aHlpNE1YTXYyVEFrM3NwQ2JSQjdKVmxZdTFWUFNUZHBVMHg0Q2ZrRmtGMG0rcUhkWEkxTUVpT1hhZFhhd2E2RlN6WldlNS9TV1BuNDNXcDk4SFdiTWNQZXZBU2RweE8vbWoyQ0xSR1VlY1NTcmoiLCJtYWMiOiJiMDE0MmNlZjE4ZjU0ZWQzZmVjM2I0MTQ1NTM4MzYwNmM0Y2ZkMmU1MzE3NjFmYTc2MDYzNTFiYWM3NzU5NTViIn0%3D; laravel_session=eyJpdiI6IlQvdG5vNW5zckJ0T1VKeW42WWY5MWc9PSIsInZhbHVlIjoiV2lWUTc1dnhKZjB6bks0bXBETUtWQllsYnFWOHpOeEVnZmJ2N2NVeWdGckZHZGhENWFVRGs1WStsaXo1elVDc1dPNzB6T1A3NDJCdmZNcEtWelNSRGQwVzNUQkhnVTlOMzVOWC9CZG1nVzBPZ0VtL1d0dHVjN053L0EwNXdRTU8iLCJtYWMiOiI2ZmUwNjk5YjJjMmRhN2VjMGEyNWE3NWExNzVkNTIwY2Y4MTE5YzYzYmVmNjRjYTM3ZTQ4ZjhjNjc0NzIzNWVlIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"oKUubBsYBy4hvRejdkFm2su7OvDAwtPunMoZHHx5\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\resources\\\\views\\/send_email.blade.php\",\"data\":{\"all_user\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":38,\"UserName\":\"zega febrianto\",\"UserEmail\":\"randombox38@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-08-31\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$QAiuuj420chlrISOvxmrJe5acaql8fjXjI6YucMWrDoFOFoWWfmLG\",\"UserAvatar\":\"38.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/4.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-08-31 16:33:39\",\"UserXP\":0,\"UserOTP\":\"EIDNRc\",\"UserOTP_b\":null,\"online\":0},{\"id\":42,\"UserName\":\"zega febriantoro\",\"UserEmail\":\"xegalol@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-01\",\"alamat\":\"jalan bengawan solo gg 6 no 19 rt 5 rw 3\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$vZ.Up7wtjVSwM6gfxU1u9.PLwhAHlN.ORNTWeymAzJlGFm4sUtnyq\",\"UserAvatar\":\"42.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/38.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-01 15:01:38\",\"UserXP\":0,\"UserOTP\":\"mK0Igk\",\"UserOTP_b\":\"lsgTuZUr\",\"online\":1},{\"id\":43,\"UserName\":\"zega febrianti\",\"UserEmail\":\"randombox381@gmail.com\",\"tempat_lahir\":\"Malang\",\"tgl_lahir\":\"2020-09-06\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"Pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$jy5C1BXHzcT0GcZpuFsrtuCvFWBpuq88LgTlu.LIv7ucjOPEiXYCG\",\"UserAvatar\":\"43.jpg\",\"fotoKTP\":\"42.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:35:40\",\"UserXP\":0,\"UserOTP\":\"hLryDa\",\"UserOTP_b\":null,\"online\":0},{\"id\":44,\"UserName\":\"Sugeng\",\"UserEmail\":\"randombox382@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-11\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$2V5rEESI9vzUYHKIoTq4xeJL6j4NzpO4YtDOTMGQgrofmdQ1E5JPO\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"43.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:38:03\",\"UserXP\":0,\"UserOTP\":\"pGQkXd\",\"UserOTP_b\":null,\"online\":0},{\"id\":45,\"UserName\":\"Almira\",\"UserEmail\":\"almira@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081098120929\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$.5o2VXmibXwYLf\\/GA3Byru4y\\/shrSTnIMA9pVPWqsmJqUunP0g5eK\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"44.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 14:44:21\",\"UserXP\":0,\"UserOTP\":\"a8FS0Y\",\"UserOTP_b\":null,\"online\":0},{\"id\":46,\"UserName\":\"Zsa zsa\",\"UserEmail\":\"zsa@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"garum\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"bapak zsazsa\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$hNTW2nW12vM6UJL4uFWZMOiNa9hO\\/sISZJqALlP8U3N51lgEw33jm\",\"UserAvatar\":\"46.jpg\",\"fotoKTP\":\"45.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 15:29:17\",\"UserXP\":0,\"UserOTP\":\"VCm7jE\",\"UserOTP_b\":null,\"online\":0},{\"id\":47,\"UserName\":\"Deddy Corbuzier\",\"UserEmail\":\"dedy@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-10-02\",\"alamat\":\"jalan rambutan\",\"telp\":\"081081081081\",\"agama\":null,\"orangtua\":\"bapak dedy\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$KU3ilDF9DkCzzFn3yW4yfOoywoZElfpMuomGab2IQG8YhQFA5ruU6\",\"UserAvatar\":\"47.jpg\",\"fotoKTP\":\"46.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-10-02 13:50:29\",\"UserXP\":0,\"UserOTP\":\"LgwpRK\",\"UserOTP_b\":null,\"online\":0}]},\"partner\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":1,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"9999\",\"alamat\":\"Kediri\",\"kepala\":\"Rohmat\",\"telpkepala\":\"888\",\"fotoKTP\":\"2\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":2,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"io\",\"alamat\":\"jojo\",\"kepala\":\"oojo\",\"telpkepala\":\"ooko\",\"fotoKTP\":\"909356294\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":3,\"instansi\":\"SMP negeri 5 kediri\",\"telpinstansi\":\"1111\",\"alamat\":\"Kediri\",\"kepala\":\"JIto\",\"telpkepala\":\"777\",\"fotoKTP\":\"8103b2331649b0521d687def5ed52fe7.png\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":4,\"instansi\":\"SD\",\"telpinstansi\":\"999\",\"alamat\":\"jkjkjk\",\"kepala\":\"9i9\",\"telpkepala\":\"kkoko\",\"fotoKTP\":\"b8baf9999b5ee6f75fb45e5f1039b409.PNG\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":5,\"instansi\":\"hoho\",\"telpinstansi\":\"88\",\"alamat\":\"ininini\",\"kepala\":\"ninini\",\"telpkepala\":\"55\",\"fotoKTP\":\"157599be8731e313424dff83d19b3048.jpg\",\"program\":\"english,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":6,\"instansi\":\"CV. Astar\",\"telpinstansi\":\"81252867991\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"9872148798\",\"fotoKTP\":\"CV. Astar_zega_4M1qTz.jpg\",\"program\":\"CV. Astar\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:32:59\"},{\"id\":7,\"instansi\":\"CV. Astar 2\",\"telpinstansi\":\"1234123412\",\"alamat\":\"jl bengawan solo gg 6 no 20\",\"kepala\":\"zega\",\"telpkepala\":\"12314124124\",\"fotoKTP\":\"CV. Astar 2_zega_R2rzTW.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:36:15\"},{\"id\":8,\"instansi\":\"zega\",\"telpinstansi\":\"12313123\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"124124124\",\"fotoKTP\":\"zega_zega_oxPmRS.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:37:59\"},{\"id\":9,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"097987124\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"087214970\",\"fotoKTP\":\"CV. Curiculum Vitae_zega_534M4O.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:42:21\"},{\"id\":10,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"102920947\",\"alamat\":\"jl bengawan solo gg 6 no 192\",\"kepala\":\"Pak\",\"telpkepala\":\"9812398498124\",\"fotoKTP\":\"CV. Curiculum Vitae_Pak_M029MS.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-05 13:30:20\"},{\"id\":11,\"instansi\":\"zega\",\"telpinstansi\":\"09124097097\",\"alamat\":\"pakunden\",\"kepala\":\"zega\",\"telpkepala\":\"190209120497\",\"fotoKTP\":\"zega_zega_U1TCmy.jpg\",\"program\":\"english,math,class,\",\"isRead\":\"1\",\"created_at\":\"2020-10-17 16:49:44\"}]}}},\"duration\":474,\"memory\":2,\"hostname\":\"zegapc\"}', '2020-10-17 17:01:23'),
(134, '91c918b2-e95d-4c12-bc71-993a92e98014', '91c918b9-b881-4386-bc49-b716b8e98aa9', NULL, 1, 'log', '{\"level\":\"info\",\"message\":\"Start\",\"context\":[],\"hostname\":\"zegapc\"}', '2020-10-17 17:01:28'),
(135, '91c918b4-812f-4f9d-8ef5-2befaf4e27ad', '91c918b9-b881-4386-bc49-b716b8e98aa9', NULL, 1, 'view', '{\"name\":\"email_format\",\"path\":\"\\\\resources\\\\views\\/email_format.blade.php\",\"data\":[\"konten\",\"__telescope\",\"__telescope_mailable\",\"__telescope_queued\",\"recipient\",\"connection\",\"queue\",\"chainConnection\",\"chainQueue\",\"chainCatchCallbacks\",\"delay\",\"middleware\",\"chained\",\"message\"],\"hostname\":\"zegapc\"}', '2020-10-17 17:01:29'),
(136, '91c918b9-adef-4e6e-bbc9-2585f146453b', '91c918b9-b881-4386-bc49-b716b8e98aa9', NULL, 1, 'mail', '{\"mailable\":\"App\\\\Mail\\\\KirimEmail\",\"queued\":false,\"from\":{\"cobajyby@gmail.com\":\"Jayabaya Bimbel\"},\"replyTo\":null,\"to\":{\"xegalol@gmail.com\":null},\"cc\":null,\"bcc\":[],\"subject\":\"One-time Password\",\"html\":\"<!DOCTYPE html>\\r\\n<html>\\r\\n<head>\\r\\n\\t<title><\\/title>\\r\\n<\\/head>\\r\\n<body>\\r\\n\\t<table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n        <tr>\\r\\n            <td>\\r\\n                <p>Hi <\\/p>\\r\\n                <p>Terimakasih telah mendaftar<\\/p>\\r\\n\\r\\n                <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n                    <tbody>\\r\\n                    <tr>\\r\\n                        <td align=\\\"left\\\">\\r\\n                            <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n                                <tbody>\\r\\n                                <tr>\\r\\n                                    <td> <div class=\\\"container\\\">\\r\\n                                            <center><p>OTP anda :<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            <center><p>mK0Igk<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            <center><p>Masukkan Kode OTP diatas untuk memverifikasi akun Anda<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            Terimakasih telah mendaftar ke Jayabaya Bimbel.<\\/p><\\/center>\\r\\n                                        <\\/div>\\r\\n                                    <\\/td>\\r\\n                                <\\/tr>\\r\\n                                <\\/tbody>\\r\\n                            <\\/table>\\r\\n                        <\\/td>\\r\\n                    <\\/tr>\\r\\n                    <\\/tbody>\\r\\n                <\\/table>\\r\\n                \\r\\n            <\\/td>\\r\\n        <\\/tr>\\r\\n    <\\/table>\\t\\r\\n<\\/body>\\r\\n<\\/html>\",\"raw\":\"Message-ID: <cad8aafc35072198be88f10035581e49@127.0.0.1>\\r\\nDate: Sat, 17 Oct 2020 17:01:29 +0700\\r\\nSubject: One-time Password\\r\\nFrom: Jayabaya Bimbel <cobajyby@gmail.com>\\r\\nTo: xegalol@gmail.com\\r\\nMIME-Version: 1.0\\r\\nContent-Type: text\\/html; charset=utf-8\\r\\nContent-Transfer-Encoding: quoted-printable\\r\\n\\r\\n<!DOCTYPE html>\\r\\n<html>\\r\\n<head>\\r\\n=09<title><\\/title>\\r\\n<\\/head>\\r\\n<body>\\r\\n=09<table border=3D\\\"0\\\" cellpadding=3D\\\"0\\\" cellspacing=3D\\\"0\\\">\\r\\n        <tr>\\r\\n            <td>\\r\\n                <p>Hi <\\/p>\\r\\n                <p>Terimakasih telah mendaftar<\\/p>\\r\\n\\r\\n                <table border=3D\\\"0\\\" cellpadding=3D\\\"0\\\" cellspacing=3D\\\"0\\\">\\r\\n                    <tbody>\\r\\n                    <tr>\\r\\n                        <td align=3D\\\"left\\\">\\r\\n                            <table border=3D\\\"0\\\" cellpadding=3D\\\"0\\\" cellspaci=\\r\\nng=3D\\\"0\\\">\\r\\n                                <tbody>\\r\\n                                <tr>\\r\\n                                    <td> <div class=3D\\\"container\\\">\\r\\n                                            <center><p>OTP anda :<\\/p><\\/cent=\\r\\ner>\\r\\n                                            <hr>\\r\\n                                            <center><p>mK0Igk<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            <center><p>Masukkan Kode OTP di=\\r\\natas untuk memverifikasi akun Anda<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            Terimakasih telah mendaftar ke =\\r\\nJayabaya Bimbel.<\\/p><\\/center>\\r\\n                                        <\\/div>\\r\\n                                    <\\/td>\\r\\n                                <\\/tr>\\r\\n                                <\\/tbody>\\r\\n                            <\\/table>\\r\\n                        <\\/td>\\r\\n                    <\\/tr>\\r\\n                    <\\/tbody>\\r\\n                <\\/table>\\r\\n               =20\\r\\n            <\\/td>\\r\\n        <\\/tr>\\r\\n    <\\/table>=09\\r\\n<\\/body>\\r\\n<\\/html>\",\"hostname\":\"zegapc\"}', '2020-10-17 17:01:32'),
(137, '91c918b9-ae45-453c-83c2-54012c39f177', '91c918b9-b881-4386-bc49-b716b8e98aa9', NULL, 1, 'log', '{\"level\":\"info\",\"message\":\"End\",\"context\":[],\"hostname\":\"zegapc\"}', '2020-10-17 17:01:32'),
(138, '91c918b9-b7d2-4f61-a718-a1b4a0b5f4f7', '91c918b9-b881-4386-bc49-b716b8e98aa9', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/send_email\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\EmailController@enqueue\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"content-length\":\"68\",\"sec-ch-ua\":\"\\\"Chromium\\\";v=\\\"86\\\", \\\"\\\\\\\"Not\\\\\\\\A;Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"86\\\"\",\"accept\":\"*\\/*\",\"x-csrf-token\":\"oKUubBsYBy4hvRejdkFm2su7OvDAwtPunMoZHHx5\",\"x-requested-with\":\"XMLHttpRequest\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/86.0.4240.75 Safari\\/537.36\",\"content-type\":\"application\\/x-www-form-urlencoded; charset=UTF-8\",\"origin\":\"http:\\/\\/127.0.0.1:8000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6InFuWStURUlmaUZpWHBjbGxKSnR5YkE9PSIsInZhbHVlIjoiazBVWDNldmpmSC95SldBTHhmQmtpOGgyS1hWeVRMZXBMcEt2clhpb21BWi92ZEZkUGY4SGRzY1ZFelM4UVZzM3VrZGNIalNBaHF4aHJIMUVCQS9iSlBpbEEvKzUycFYrUE1ObTZmZ3paZ2tOcDFoNzBrby9lSmJXNCs0bnU5Q0QiLCJtYWMiOiI0NGRmMzE5ZWNjYzRlZTVkYTYwNmQ3Y2ViNzFlZjIyOWEyYmQxNjgxZTg2ZGU1YTYxZTUzNzVkOTMxY2NhMjZhIn0%3D; laravel_session=eyJpdiI6IjJ3RkFUV0laYmVLV0s0Z0tWRkY4cHc9PSIsInZhbHVlIjoiWExiRDBqblIyOGEyRWw3Q0ZrYmp4ZWUyMXVvYlFqMU15TVo1bnZ0d04wTyt0SzR0UlJ1TkZiUFQvMThFUUdGU1BqeGJGc0xqUGVYMHl0cGxHYWQ5TEZWWTI5aXpkQThqdGFqSmh6S0xyTm1aTVJJRkl1Z2tnd3VXQXBob1g2NDQiLCJtYWMiOiIyYjIyNDM4YTQzYTQxYTc3MWIyMGQ3NWFlYzlkZGQyZGViZDI5ZGUzNDFjMTE1MmQ2YTA5M2VmYzYxM2U5Njg2In0%3D\"},\"payload\":{\"recipient\":\"xegalol@gmail.com\",\"subjek\":\"One-time Password\",\"konten\":\"mK0Igk\"},\"session\":{\"_token\":\"oKUubBsYBy4hvRejdkFm2su7OvDAwtPunMoZHHx5\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":\"HTML Response\",\"duration\":4879,\"memory\":12,\"hostname\":\"zegapc\"}', '2020-10-17 17:01:32'),
(139, '91c918c1-5c78-41d7-8fb7-38b454236538', '91c918c6-3cb1-4ed9-ae80-052d193b1c34', NULL, 1, 'log', '{\"level\":\"info\",\"message\":\"Start\",\"context\":[],\"hostname\":\"zegapc\"}', '2020-10-17 17:01:37'),
(140, '91c918c1-78ca-40c6-8b05-73332d5ab4ed', '91c918c6-3cb1-4ed9-ae80-052d193b1c34', NULL, 1, 'view', '{\"name\":\"email_format\",\"path\":\"\\\\resources\\\\views\\/email_format.blade.php\",\"data\":[\"konten\",\"__telescope\",\"__telescope_mailable\",\"__telescope_queued\",\"recipient\",\"connection\",\"queue\",\"chainConnection\",\"chainQueue\",\"chainCatchCallbacks\",\"delay\",\"middleware\",\"chained\",\"message\"],\"hostname\":\"zegapc\"}', '2020-10-17 17:01:37'),
(141, '91c918c6-3607-4efb-800c-d29e8dd28628', '91c918c6-3cb1-4ed9-ae80-052d193b1c34', NULL, 1, 'mail', '{\"mailable\":\"App\\\\Mail\\\\KirimEmail\",\"queued\":false,\"from\":{\"cobajyby@gmail.com\":\"Jayabaya Bimbel\"},\"replyTo\":null,\"to\":{\"xegalol@gmail.com\":null},\"cc\":null,\"bcc\":[],\"subject\":\"One-time Password\",\"html\":\"<!DOCTYPE html>\\r\\n<html>\\r\\n<head>\\r\\n\\t<title><\\/title>\\r\\n<\\/head>\\r\\n<body>\\r\\n\\t<table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n        <tr>\\r\\n            <td>\\r\\n                <p>Hi <\\/p>\\r\\n                <p>Terimakasih telah mendaftar<\\/p>\\r\\n\\r\\n                <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n                    <tbody>\\r\\n                    <tr>\\r\\n                        <td align=\\\"left\\\">\\r\\n                            <table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\\r\\n                                <tbody>\\r\\n                                <tr>\\r\\n                                    <td> <div class=\\\"container\\\">\\r\\n                                            <center><p>OTP anda :<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            <center><p>mK0Igk<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            <center><p>Masukkan Kode OTP diatas untuk memverifikasi akun Anda<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            Terimakasih telah mendaftar ke Jayabaya Bimbel.<\\/p><\\/center>\\r\\n                                        <\\/div>\\r\\n                                    <\\/td>\\r\\n                                <\\/tr>\\r\\n                                <\\/tbody>\\r\\n                            <\\/table>\\r\\n                        <\\/td>\\r\\n                    <\\/tr>\\r\\n                    <\\/tbody>\\r\\n                <\\/table>\\r\\n                \\r\\n            <\\/td>\\r\\n        <\\/tr>\\r\\n    <\\/table>\\t\\r\\n<\\/body>\\r\\n<\\/html>\",\"raw\":\"Message-ID: <aa4f4e2f8f44be596b3ca936a2999fc6@127.0.0.1>\\r\\nDate: Sat, 17 Oct 2020 17:01:37 +0700\\r\\nSubject: One-time Password\\r\\nFrom: Jayabaya Bimbel <cobajyby@gmail.com>\\r\\nTo: xegalol@gmail.com\\r\\nMIME-Version: 1.0\\r\\nContent-Type: text\\/html; charset=utf-8\\r\\nContent-Transfer-Encoding: quoted-printable\\r\\n\\r\\n<!DOCTYPE html>\\r\\n<html>\\r\\n<head>\\r\\n=09<title><\\/title>\\r\\n<\\/head>\\r\\n<body>\\r\\n=09<table border=3D\\\"0\\\" cellpadding=3D\\\"0\\\" cellspacing=3D\\\"0\\\">\\r\\n        <tr>\\r\\n            <td>\\r\\n                <p>Hi <\\/p>\\r\\n                <p>Terimakasih telah mendaftar<\\/p>\\r\\n\\r\\n                <table border=3D\\\"0\\\" cellpadding=3D\\\"0\\\" cellspacing=3D\\\"0\\\">\\r\\n                    <tbody>\\r\\n                    <tr>\\r\\n                        <td align=3D\\\"left\\\">\\r\\n                            <table border=3D\\\"0\\\" cellpadding=3D\\\"0\\\" cellspaci=\\r\\nng=3D\\\"0\\\">\\r\\n                                <tbody>\\r\\n                                <tr>\\r\\n                                    <td> <div class=3D\\\"container\\\">\\r\\n                                            <center><p>OTP anda :<\\/p><\\/cent=\\r\\ner>\\r\\n                                            <hr>\\r\\n                                            <center><p>mK0Igk<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            <center><p>Masukkan Kode OTP di=\\r\\natas untuk memverifikasi akun Anda<\\/p><\\/center>\\r\\n                                            <hr>\\r\\n                                            Terimakasih telah mendaftar ke =\\r\\nJayabaya Bimbel.<\\/p><\\/center>\\r\\n                                        <\\/div>\\r\\n                                    <\\/td>\\r\\n                                <\\/tr>\\r\\n                                <\\/tbody>\\r\\n                            <\\/table>\\r\\n                        <\\/td>\\r\\n                    <\\/tr>\\r\\n                    <\\/tbody>\\r\\n                <\\/table>\\r\\n               =20\\r\\n            <\\/td>\\r\\n        <\\/tr>\\r\\n    <\\/table>=09\\r\\n<\\/body>\\r\\n<\\/html>\",\"hostname\":\"zegapc\"}', '2020-10-17 17:01:40'),
(142, '91c918c6-36c1-4a04-ad43-b97ac86f1302', '91c918c6-3cb1-4ed9-ae80-052d193b1c34', NULL, 1, 'log', '{\"level\":\"info\",\"message\":\"End\",\"context\":[],\"hostname\":\"zegapc\"}', '2020-10-17 17:01:40'),
(143, '91c918c6-3c14-4269-9c76-9f7b79c869a0', '91c918c6-3cb1-4ed9-ae80-052d193b1c34', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/send_email\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\EmailController@enqueue\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"content-length\":\"68\",\"sec-ch-ua\":\"\\\"Chromium\\\";v=\\\"86\\\", \\\"\\\\\\\"Not\\\\\\\\A;Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"86\\\"\",\"accept\":\"*\\/*\",\"x-csrf-token\":\"oKUubBsYBy4hvRejdkFm2su7OvDAwtPunMoZHHx5\",\"x-requested-with\":\"XMLHttpRequest\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/86.0.4240.75 Safari\\/537.36\",\"content-type\":\"application\\/x-www-form-urlencoded; charset=UTF-8\",\"origin\":\"http:\\/\\/127.0.0.1:8000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IkhYZHRQdTg1VjdMQTl6THN4dGk5dGc9PSIsInZhbHVlIjoiOW9oemJXZjlDODk4clMzaGtvRm82ajNFL2FQSzdvVUtXcFNjSXEwa2x4cTZFcWt2MythMytpQ2NQOE4wRUNOOEZ4NkdNNmNCeGlFRHhLTkVQNmxOVWx6cHJhMGJZQ2ZQMDZOaTlBcDJqOEJROUhoMnBzWEtsMzIwQ1BjcWZVTUYiLCJtYWMiOiJkZWExN2FkMDFjMGU3ZTBlOThkMDkxYzI4MmEwM2RmYzZkNzM4OThjYTM0MzIxZmI0NWE3MjM4ZGI0NzQ1NWQzIn0%3D; laravel_session=eyJpdiI6InczTUk1bFFqblBtZ2NCSUJLdVB2TVE9PSIsInZhbHVlIjoic1V6d0x0b0EwcExsWWl0c1VMTnNWSnNRdGNBa2ZaeDcrNnZxb1JoODJ1OUtOM3lySUpMbG0vZ3RkdnBRKzBpS1BzL1VnazluUzg3N1Rra21CamV6Rmd1UTNtS3ZZdWJzMWpzd3RqUmF1RFBqelNLNFNzZmhROWxYNDZUNzFIc20iLCJtYWMiOiJiYmJkMDVhZWRmZmFkNGRhZTdhMTJjOTMzZTBiZWE1NTFkMWRhNzFiZWJiZTQ1YmY0Y2E2YjYxZjhkMmNlMjRkIn0%3D\"},\"payload\":{\"recipient\":\"xegalol@gmail.com\",\"subjek\":\"One-time Password\",\"konten\":\"mK0Igk\"},\"session\":{\"_token\":\"oKUubBsYBy4hvRejdkFm2su7OvDAwtPunMoZHHx5\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":\"HTML Response\",\"duration\":3590,\"memory\":8,\"hostname\":\"zegapc\"}', '2020-10-17 17:01:40'),
(144, '91c91b35-5923-4ece-bcd4-bed424c58937', '91c91b35-89b6-43ed-a31e-c2379829bfa3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tblpartnership`\",\"time\":\"3.60\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":18,\"hash\":\"77aa2cbab5f6c73f0b1dfe29763108ce\",\"hostname\":\"zegapc\"}', '2020-10-17 17:08:29'),
(145, '91c91b35-7e7a-443e-abd1-83409567daf7', '91c91b35-89b6-43ed-a31e-c2379829bfa3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `tbluser`\",\"time\":\"70.53\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\EmailController.php\",\"line\":19,\"hash\":\"8bc58e25f7f628eac03bbbfc907e8ee3\",\"hostname\":\"zegapc\"}', '2020-10-17 17:08:29'),
(146, '91c91b35-8290-4df2-aefa-93de9a1044d3', '91c91b35-89b6-43ed-a31e-c2379829bfa3', NULL, 1, 'view', '{\"name\":\"send_email\",\"path\":\"\\\\resources\\\\views\\/send_email.blade.php\",\"data\":[\"all_user\",\"partner\"],\"hostname\":\"zegapc\"}', '2020-10-17 17:08:29');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(147, '91c91b35-88d6-4b6c-8a31-1392382bc716', '91c91b35-89b6-43ed-a31e-c2379829bfa3', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\EmailController@index\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"sec-ch-ua\":\"\\\"Chromium\\\";v=\\\"86\\\", \\\"\\\\\\\"Not\\\\\\\\A;Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"86\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/86.0.4240.75 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IjFDWHB5S2wxU1NBNHVHSDFmUzJEWWc9PSIsInZhbHVlIjoiTWsyYWZUVDlRL2Nkb010OW1NQ21TWTYwanBJNEwwR0hNcnRQNWRWZGFzdVdrRGM3SzFCYkZCS0VYcHVWais0Yi9QRmtTVlc4N0FFVUdWakZmc2Njd1V5RGJYVjRqamtDVDRQMVM0MmxuV1VQUTJFSEtYaitrRk40cXEyTHNQZFMiLCJtYWMiOiI0NzgwN2IyZGVkMTlmYWZkMGRkZGIxNmEwM2IwNGJmYzI5OTI4M2ExZjgyODdmNDU3YmQxM2MwYTg1OWNjOWUwIn0%3D; laravel_session=eyJpdiI6ImNrcW0wZnB3elUrRDMyaWFuUVAwS0E9PSIsInZhbHVlIjoiNjU5Y1F6WVF6VTdHZW1IdDhzOUg5ODk3eWMydDJEdGtpMnR6RjBTSGRLeTREeGNYZncwT2N2cHAxUjBPbUpod2VhY2hxc3pjTm9WeHpmdVJPWm5MdTFvR0ZTazE2TXN3K3YvNW12TmNZUjFaNU9tMndlN1IvVFZHV1A2cExsejQiLCJtYWMiOiJjMzkyNjFkNDhlMTdiMWU2OTIxOTI1NjIyMTBjNzUyOTlhZTJlYjkyY2UwNDJhOGFhOGU1MDEzZjRhOWI0ZTU3In0%3D\"},\"payload\":[],\"session\":{\"_token\":\"oKUubBsYBy4hvRejdkFm2su7OvDAwtPunMoZHHx5\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\resources\\\\views\\/send_email.blade.php\",\"data\":{\"all_user\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":38,\"UserName\":\"zega febrianto\",\"UserEmail\":\"randombox38@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-08-31\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$QAiuuj420chlrISOvxmrJe5acaql8fjXjI6YucMWrDoFOFoWWfmLG\",\"UserAvatar\":\"38.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/4.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-08-31 16:33:39\",\"UserXP\":0,\"UserOTP\":\"EIDNRc\",\"UserOTP_b\":null,\"online\":0},{\"id\":42,\"UserName\":\"zega febriantoro\",\"UserEmail\":\"xegalol@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-01\",\"alamat\":\"jalan bengawan solo gg 6 no 19 rt 5 rw 3\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$vZ.Up7wtjVSwM6gfxU1u9.PLwhAHlN.ORNTWeymAzJlGFm4sUtnyq\",\"UserAvatar\":\"42.jpg\",\"fotoKTP\":\"img\\/user_ktp\\/38.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-01 15:01:38\",\"UserXP\":0,\"UserOTP\":\"mK0Igk\",\"UserOTP_b\":\"lsgTuZUr\",\"online\":1},{\"id\":43,\"UserName\":\"zega febrianti\",\"UserEmail\":\"randombox381@gmail.com\",\"tempat_lahir\":\"Malang\",\"tgl_lahir\":\"2020-09-06\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"Pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$jy5C1BXHzcT0GcZpuFsrtuCvFWBpuq88LgTlu.LIv7ucjOPEiXYCG\",\"UserAvatar\":\"43.jpg\",\"fotoKTP\":\"42.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:35:40\",\"UserXP\":0,\"UserOTP\":\"hLryDa\",\"UserOTP_b\":null,\"online\":0},{\"id\":44,\"UserName\":\"Sugeng\",\"UserEmail\":\"randombox382@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-11\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$2V5rEESI9vzUYHKIoTq4xeJL6j4NzpO4YtDOTMGQgrofmdQ1E5JPO\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"43.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-11 14:38:03\",\"UserXP\":0,\"UserOTP\":\"pGQkXd\",\"UserOTP_b\":null,\"online\":0},{\"id\":45,\"UserName\":\"Almira\",\"UserEmail\":\"almira@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"jalan bengawan solo gg 6 no 19\",\"telp\":\"081098120929\",\"agama\":null,\"orangtua\":\"pujianto\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$.5o2VXmibXwYLf\\/GA3Byru4y\\/shrSTnIMA9pVPWqsmJqUunP0g5eK\",\"UserAvatar\":\"default.jpg\",\"fotoKTP\":\"44.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 14:44:21\",\"UserXP\":0,\"UserOTP\":\"a8FS0Y\",\"UserOTP_b\":null,\"online\":0},{\"id\":46,\"UserName\":\"Zsa zsa\",\"UserEmail\":\"zsa@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-09-29\",\"alamat\":\"garum\",\"telp\":\"081252867991\",\"agama\":null,\"orangtua\":\"bapak zsazsa\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$hNTW2nW12vM6UJL4uFWZMOiNa9hO\\/sISZJqALlP8U3N51lgEw33jm\",\"UserAvatar\":\"46.jpg\",\"fotoKTP\":\"45.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-09-29 15:29:17\",\"UserXP\":0,\"UserOTP\":\"VCm7jE\",\"UserOTP_b\":null,\"online\":0},{\"id\":47,\"UserName\":\"Deddy Corbuzier\",\"UserEmail\":\"dedy@gmail.com\",\"tempat_lahir\":\"blitar\",\"tgl_lahir\":\"2020-10-02\",\"alamat\":\"jalan rambutan\",\"telp\":\"081081081081\",\"agama\":null,\"orangtua\":\"bapak dedy\",\"pekerjaan\":\"wiraswasta\",\"jenis_kelamin\":\"1\",\"UserPassword\":\"$2y$10$KU3ilDF9DkCzzFn3yW4yfOoywoZElfpMuomGab2IQG8YhQFA5ruU6\",\"UserAvatar\":\"47.jpg\",\"fotoKTP\":\"46.jpg\",\"UserType\":\"1\",\"IsEmailVerified\":1,\"UserStatus\":1,\"created_at\":\"2020-10-02 13:50:29\",\"UserXP\":0,\"UserOTP\":\"LgwpRK\",\"UserOTP_b\":null,\"online\":0}]},\"partner\":{\"class\":\"Illuminate\\\\Support\\\\Collection\",\"properties\":[{\"id\":1,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"9999\",\"alamat\":\"Kediri\",\"kepala\":\"Rohmat\",\"telpkepala\":\"888\",\"fotoKTP\":\"2\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":2,\"instansi\":\"SMP Negeri 1\",\"telpinstansi\":\"io\",\"alamat\":\"jojo\",\"kepala\":\"oojo\",\"telpkepala\":\"ooko\",\"fotoKTP\":\"909356294\",\"program\":\"english,class\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":3,\"instansi\":\"SMP negeri 5 kediri\",\"telpinstansi\":\"1111\",\"alamat\":\"Kediri\",\"kepala\":\"JIto\",\"telpkepala\":\"777\",\"fotoKTP\":\"8103b2331649b0521d687def5ed52fe7.png\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":4,\"instansi\":\"SD\",\"telpinstansi\":\"999\",\"alamat\":\"jkjkjk\",\"kepala\":\"9i9\",\"telpkepala\":\"kkoko\",\"fotoKTP\":\"b8baf9999b5ee6f75fb45e5f1039b409.PNG\",\"program\":\"english,class,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":5,\"instansi\":\"hoho\",\"telpinstansi\":\"88\",\"alamat\":\"ininini\",\"kepala\":\"ninini\",\"telpkepala\":\"55\",\"fotoKTP\":\"157599be8731e313424dff83d19b3048.jpg\",\"program\":\"english,lain\",\"isRead\":\"0\",\"created_at\":\"2020-10-03 14:14:29\"},{\"id\":6,\"instansi\":\"CV. Astar\",\"telpinstansi\":\"81252867991\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"9872148798\",\"fotoKTP\":\"CV. Astar_zega_4M1qTz.jpg\",\"program\":\"CV. Astar\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:32:59\"},{\"id\":7,\"instansi\":\"CV. Astar 2\",\"telpinstansi\":\"1234123412\",\"alamat\":\"jl bengawan solo gg 6 no 20\",\"kepala\":\"zega\",\"telpkepala\":\"12314124124\",\"fotoKTP\":\"CV. Astar 2_zega_R2rzTW.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:36:15\"},{\"id\":8,\"instansi\":\"zega\",\"telpinstansi\":\"12313123\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"124124124\",\"fotoKTP\":\"zega_zega_oxPmRS.jpg\",\"program\":\"english\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:37:59\"},{\"id\":9,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"097987124\",\"alamat\":\"jl bengawan solo gg 6 no 19\",\"kepala\":\"zega\",\"telpkepala\":\"087214970\",\"fotoKTP\":\"CV. Curiculum Vitae_zega_534M4O.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-03 14:42:21\"},{\"id\":10,\"instansi\":\"CV. Curiculum Vitae\",\"telpinstansi\":\"102920947\",\"alamat\":\"jl bengawan solo gg 6 no 192\",\"kepala\":\"Pak\",\"telpkepala\":\"9812398498124\",\"fotoKTP\":\"CV. Curiculum Vitae_Pak_M029MS.jpg\",\"program\":\"english,math,class,lain\",\"isRead\":\"1\",\"created_at\":\"2020-10-05 13:30:20\"},{\"id\":11,\"instansi\":\"zega\",\"telpinstansi\":\"09124097097\",\"alamat\":\"pakunden\",\"kepala\":\"zega\",\"telpkepala\":\"190209120497\",\"fotoKTP\":\"zega_zega_U1TCmy.jpg\",\"program\":\"english,math,class,\",\"isRead\":\"1\",\"created_at\":\"2020-10-17 16:49:44\"}]}}},\"duration\":804,\"memory\":2,\"hostname\":\"zegapc\"}', '2020-10-17 17:08:29'),
(148, '91ccf348-cf79-4a60-904e-5a0695891aa0', '91ccf34a-870d-4c7d-830d-2cbcf31609bd', NULL, 1, 'command', '{\"command\":\"make:controller\",\"exit_code\":0,\"arguments\":{\"command\":\"make:controller\",\"name\":\"MenuController\"},\"options\":{\"api\":false,\"force\":false,\"invokable\":false,\"model\":null,\"parent\":null,\"resource\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":false,\"no-ansi\":false,\"no-interaction\":false,\"env\":null},\"hostname\":\"zegapc\"}', '2020-10-19 15:00:10'),
(149, '91ccf7ea-909e-4170-b631-075e6dee0994', '91ccf7ea-e4f1-4baf-8ada-87830ed20181', '30e170c5ba9f54d116ac468622fc4b44', 1, 'exception', '{\"class\":\"Illuminate\\\\Database\\\\QueryException\",\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\",\"line\":671,\"message\":\"SQLSTATE[42S02]: Base table or view not found: 1146 Table \'ci_jayabaya.menu\' doesn\'t exist (SQL: select * from `menu`)\",\"context\":null,\"trace\":[{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\",\"line\":631},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\",\"line\":339},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Query\\\\Builder.php\",\"line\":2302},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Query\\\\Builder.php\",\"line\":2290},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Query\\\\Builder.php\",\"line\":2785},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Query\\\\Builder.php\",\"line\":2291},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\app\\\\Http\\\\Controllers\\\\MenuController.php\",\"line\":11},[],{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Controller.php\",\"line\":54},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\ControllerDispatcher.php\",\"line\":45},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Route.php\",\"line\":255},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Route.php\",\"line\":197},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Router.php\",\"line\":691},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":128},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings.php\",\"line\":41},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\VerifyCsrfToken.php\",\"line\":77},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession.php\",\"line\":49},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Session\\\\Middleware\\\\StartSession.php\",\"line\":121},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Session\\\\Middleware\\\\StartSession.php\",\"line\":63},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Cookie\\\\Middleware\\\\AddQueuedCookiesToResponse.php\",\"line\":37},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Cookie\\\\Middleware\\\\EncryptCookies.php\",\"line\":67},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":103},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Router.php\",\"line\":693},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Router.php\",\"line\":668},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Router.php\",\"line\":634},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\Router.php\",\"line\":623},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Kernel.php\",\"line\":166},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":128},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest.php\",\"line\":21},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest.php\",\"line\":21},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\ValidatePostSize.php\",\"line\":27},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\PreventRequestsDuringMaintenance.php\",\"line\":87},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\fruitcake\\\\laravel-cors\\\\src\\\\HandleCors.php\",\"line\":37},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\fideloper\\\\proxy\\\\src\\\\TrustProxies.php\",\"line\":57},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":167},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Pipeline\\\\Pipeline.php\",\"line\":103},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Kernel.php\",\"line\":141},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Http\\\\Kernel.php\",\"line\":110},{\"file\":\"C:\\\\xampp\\\\htdocs\\\\Email\\\\index.php\",\"line\":52}],\"line_preview\":{\"662\":\"        \\/\\/ took to execute and log the query SQL, bindings and time in our memory.\",\"663\":\"        try {\",\"664\":\"            $result = $callback($query, $bindings);\",\"665\":\"        }\",\"666\":\"\",\"667\":\"        \\/\\/ If an exception occurs when attempting to run a query, we\'ll format the error\",\"668\":\"        \\/\\/ message to include the bindings with SQL, which will make this exception a\",\"669\":\"        \\/\\/ lot more helpful to the developer instead of just the database\'s errors.\",\"670\":\"        catch (Exception $e) {\",\"671\":\"            throw new QueryException(\",\"672\":\"                $query, $this->prepareBindings($bindings), $e\",\"673\":\"            );\",\"674\":\"        }\",\"675\":\"\",\"676\":\"        return $result;\",\"677\":\"    }\",\"678\":\"\",\"679\":\"    \\/**\",\"680\":\"     * Log a query in the connection\'s query log.\",\"681\":\"     *\"},\"hostname\":\"zegapc\",\"occurrences\":2}', '2020-10-19 15:13:07'),
(150, '91ccf7ea-dda5-4a65-9775-da65b0ca2d52', '91ccf7ea-e4f1-4baf-8ada-87830ed20181', NULL, 1, 'request', '{\"ip_address\":\"::1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\MenuController@menu_index\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"sec-ch-ua\":\"\\\"Chromium\\\";v=\\\"86\\\", \\\"\\\\\\\"Not\\\\\\\\A;Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"86\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/86.0.4240.75 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"optimizelyEndUserId=oeu1601532496690r0.4701471904239105; _gcl_au=1.1.1017870917.1601532499; _hjid=a64faf2f-3aca-4a96-8899-930245e4dbee; ajs_anonymous_id=%22ed3ddc95-ba5b-4959-bdee-eb2fd1155837%22; _ga=GA1.1.804027020.1601532501; intercom-id-qq7v0gqb=1733598e-67e9-456a-b168-9718a362ff1f; XSRF-TOKEN=eyJpdiI6IlBBNStSNzhlTTdTZzlXM2N0VVQ3V3c9PSIsInZhbHVlIjoicG5EMDVKRmJBYWVQSm1JMHBtYVYwQzB5a2NLWWwyYmJEeXZ0eCsvQXh1K2FVUVFqbTQySDV4N2lRT1BIdlprVFdJeXpSWFp3dTV1czYyU3NNa0dWRTB4WXJScmdGaEloZ2lFMVZ6RGFoOExQSjAzYzZrdHdQQlBiTmxTenU0Z3MiLCJtYWMiOiI5OWJhNDU5NGQzZTc5ODJkYTgyZjliMTY5NzlhOWJjOTU1ZDAyN2IzM2ZiODY4ZjA5NzdmNTk3OWQ3MzQ0YmIzIn0%3D; laravel_session=eyJpdiI6ImZ3RU9mdXlrT1lhNEUyMVFLV2NSMkE9PSIsInZhbHVlIjoid1Z0eDhMU2kyam5rYlZUbnhNVWFjTFFZa1VDT2o2TDNxN0hzNnhoODA3eFZDcmQwQk5oY05LVFBkQVVZWXJucmFrQXcyYzFTcmFLbmx5dXVCUmJ5aFQrWm50UGx6SjRlay81eER5YmdpK1FFTFVhTkkzbEhmcGJPK29CVTdBUVoiLCJtYWMiOiJlMjUxNzg2YjgxYjRhYjMyMTVkZGJkYzFhNDE0ZWQ4NjIwNTZkNDg3ZmVmY2Y1YWQwZmVlMjE5OWYxOTdhNDdjIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"m96cck1GTN4W0zIDDz2RRHMG2O0BJKMb82AxpGQF\",\"_previous\":{\"url\":\"https:\\/\\/localhost\\/email\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":500,\"response\":\"HTML Response\",\"duration\":1271,\"memory\":14,\"hostname\":\"zegapc\"}', '2020-10-19 15:13:07');

-- --------------------------------------------------------

--
-- Table structure for table `test_register`
--

CREATE TABLE `test_register` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `verification_hash` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verification_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `name`, `address`, `sex`, `type`, `email`, `email_verified_at`, `password`, `verification_token`, `verify`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '1kJWyrcsLucWv6ZU', 'zega', 'blitar', 1, 1, 'randombox38@gmail.com', NULL, '$2y$10$mvrP8Pr9Zdwfx8YFULZciuKT8Ke2kmcwxEHQ.lEACrKjjQFXWGVHy', '$2y$10$nHNFpvXA0aRduAaKOqPOCeOYmcG8Ae.Yqr1O4V6lEbDyXRDwtFzpe', 1, NULL, '2021-07-19 00:17:15', '2021-07-19 00:17:15'),
(2, 'pv2uu9B7vjCbVcgc', 'Doni', 'blitar', 1, 1, 'xegalol@gmail.com', NULL, '$2y$10$AC7wc1H1zKPGZ28gJJVo3O2GXZbopfWfCDvOi6.85oWofBNtXR.ky', '$2y$10$vuZ7eXxp9M85.hTdUxmVNup89d4q05isJklHSPHAITSaLmk0JElVG', 1, NULL, '2021-07-21 23:07:01', '2021-07-21 23:07:01');

-- --------------------------------------------------------

--
-- Table structure for table `users_detail`
--

CREATE TABLE `users_detail` (
  `id` int(11) NOT NULL,
  `user_id` varchar(55) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `full_address` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `parent_name` varchar(255) NOT NULL,
  `profile_picture` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_detail`
--

INSERT INTO `users_detail` (`id`, `user_id`, `full_name`, `full_address`, `phone`, `parent_name`, `profile_picture`, `created_at`) VALUES
(1, '1kJWyrcsLucWv6ZU', 'Zega Febrianto', 'Pakunden Blitar', '081111222333', 'Pujianto', NULL, '2021-07-23 07:33:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`chat_message_id`);

--
-- Indexes for table `class_stream`
--
ALTER TABLE `class_stream`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing_page`
--
ALTER TABLE `landing_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tblabsen`
--
ALTER TABLE `tblabsen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblactivitytype`
--
ALTER TABLE `tblactivitytype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Email` (`AdminEmail`);

--
-- Indexes for table `tbladminnotification`
--
ALTER TABLE `tbladminnotification`
  ADD PRIMARY KEY (`AdminNotificationID`);

--
-- Indexes for table `tblarticle`
--
ALTER TABLE `tblarticle`
  ADD PRIMARY KEY (`ArticleID`);

--
-- Indexes for table `tblarticlexcomment`
--
ALTER TABLE `tblarticlexcomment`
  ADD PRIMARY KEY (`ArticleXCommentID`);

--
-- Indexes for table `tblarticlexlike`
--
ALTER TABLE `tblarticlexlike`
  ADD PRIMARY KEY (`ArticleXLikeID`);

--
-- Indexes for table `tblarticlextag`
--
ALTER TABLE `tblarticlextag`
  ADD PRIMARY KEY (`ArticleXTagID`);

--
-- Indexes for table `tblattch`
--
ALTER TABLE `tblattch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbab`
--
ALTER TABLE `tblbab`
  ADD PRIMARY KEY (`BabID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `tblchallenge`
--
ALTER TABLE `tblchallenge`
  ADD PRIMARY KEY (`ChallengeID`);

--
-- Indexes for table `tblchapter`
--
ALTER TABLE `tblchapter`
  ADD PRIMARY KEY (`ChapterID`);

--
-- Indexes for table `tblclstream`
--
ALTER TABLE `tblclstream`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcobaquiz`
--
ALTER TABLE `tblcobaquiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcobaquizanswer`
--
ALTER TABLE `tblcobaquizanswer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcobaquizanswfinal`
--
ALTER TABLE `tblcobaquizanswfinal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcobaquizopt`
--
ALTER TABLE `tblcobaquizopt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcobaquizsiswa`
--
ALTER TABLE `tblcobaquizsiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomment`
--
ALTER TABLE `tblcomment`
  ADD PRIMARY KEY (`commentID`);

--
-- Indexes for table `tblcompletedsection`
--
ALTER TABLE `tblcompletedsection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcourse`
--
ALTER TABLE `tblcourse`
  ADD PRIMARY KEY (`CourseID`);

--
-- Indexes for table `tblcourseuser`
--
ALTER TABLE `tblcourseuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblday`
--
ALTER TABLE `tblday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblfollow`
--
ALTER TABLE `tblfollow`
  ADD PRIMARY KEY (`FollowID`);

--
-- Indexes for table `tblforuma`
--
ALTER TABLE `tblforuma`
  ADD PRIMARY KEY (`ForumAID`);

--
-- Indexes for table `tblforumaxvote`
--
ALTER TABLE `tblforumaxvote`
  ADD PRIMARY KEY (`ForumAXVoteID`);

--
-- Indexes for table `tblforumq`
--
ALTER TABLE `tblforumq`
  ADD PRIMARY KEY (`ForumQID`);

--
-- Indexes for table `tblforumqxtag`
--
ALTER TABLE `tblforumqxtag`
  ADD PRIMARY KEY (`ForumQXTagID`);

--
-- Indexes for table `tblforumqxvote`
--
ALTER TABLE `tblforumqxvote`
  ADD PRIMARY KEY (`ForumQXVoteID`);

--
-- Indexes for table `tblhari`
--
ALTER TABLE `tblhari`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbljenjang`
--
ALTER TABLE `tbljenjang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblkelas`
--
ALTER TABLE `tblkelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblkomentar`
--
ALTER TABLE `tblkomentar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmapel`
--
ALTER TABLE `tblmapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmapel_kelas`
--
ALTER TABLE `tblmapel_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmateri`
--
ALTER TABLE `tblmateri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpartnership`
--
ALTER TABLE `tblpartnership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpoll`
--
ALTER TABLE `tblpoll`
  ADD PRIMARY KEY (`PollID`);

--
-- Indexes for table `tblpollxanswer`
--
ALTER TABLE `tblpollxanswer`
  ADD PRIMARY KEY (`PollXAnswerID`);

--
-- Indexes for table `tblpollxoption`
--
ALTER TABLE `tblpollxoption`
  ADD PRIMARY KEY (`PollXOptionID`);

--
-- Indexes for table `tblpretestanswer`
--
ALTER TABLE `tblpretestanswer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpretestquestion`
--
ALTER TABLE `tblpretestquestion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tblquestion`
--
ALTER TABLE `tblquestion`
  ADD PRIMARY KEY (`QuestionID`);

--
-- Indexes for table `tblquestionxanswer`
--
ALTER TABLE `tblquestionxanswer`
  ADD PRIMARY KEY (`QuestionXAnswerID`);

--
-- Indexes for table `tblquestionxoption`
--
ALTER TABLE `tblquestionxoption`
  ADD PRIMARY KEY (`QuestionXOptionID`);

--
-- Indexes for table `tblquizanswer`
--
ALTER TABLE `tblquizanswer`
  ADD PRIMARY KEY (`ansid`);

--
-- Indexes for table `tblquizhistori`
--
ALTER TABLE `tblquizhistori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblquizoption`
--
ALTER TABLE `tblquizoption`
  ADD PRIMARY KEY (`optid`);

--
-- Indexes for table `tblquizquestion`
--
ALTER TABLE `tblquizquestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsbmtugas`
--
ALTER TABLE `tblsbmtugas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblschedule`
--
ALTER TABLE `tblschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsection`
--
ALTER TABLE `tblsection`
  ADD PRIMARY KEY (`SectionID`);

--
-- Indexes for table `tblsitereport`
--
ALTER TABLE `tblsitereport`
  ADD PRIMARY KEY (`SiteReportID`);

--
-- Indexes for table `tblsystemlog`
--
ALTER TABLE `tblsystemlog`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `tbltag`
--
ALTER TABLE `tbltag`
  ADD PRIMARY KEY (`TagID`);

--
-- Indexes for table `tbltahun`
--
ALTER TABLE `tbltahun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblteacher`
--
ALTER TABLE `tblteacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltingkatkelas`
--
ALTER TABLE `tbltingkatkelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltugas`
--
ALTER TABLE `tbltugas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluseractivity`
--
ALTER TABLE `tbluseractivity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluserclass`
--
ALTER TABLE `tbluserclass`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_id` (`kelas_id`,`siswa_id`),
  ADD KEY `kelas_id_2` (`kelas_id`,`siswa_id`);

--
-- Indexes for table `tblusernotification`
--
ALTER TABLE `tblusernotification`
  ADD PRIMARY KEY (`NotificationID`);

--
-- Indexes for table `tblvideochatroom`
--
ALTER TABLE `tblvideochatroom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_classteacher`
--
ALTER TABLE `tbl_classteacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `parent_id_2` (`parent_id`);

--
-- Indexes for table `tbl_komen`
--
ALTER TABLE `tbl_komen`
  ADD PRIMARY KEY (`komen_id`);

--
-- Indexes for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  ADD PRIMARY KEY (`sequence`),
  ADD UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  ADD KEY `telescope_entries_batch_id_index` (`batch_id`);

--
-- Indexes for table `test_register`
--
ALTER TABLE `test_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_detail`
--
ALTER TABLE `users_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_stream`
--
ALTER TABLE `class_stream`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `landing_page`
--
ALTER TABLE `landing_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblabsen`
--
ALTER TABLE `tblabsen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblactivitytype`
--
ALTER TABLE `tblactivitytype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbladminnotification`
--
ALTER TABLE `tbladminnotification`
  MODIFY `AdminNotificationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblarticle`
--
ALTER TABLE `tblarticle`
  MODIFY `ArticleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblarticlexcomment`
--
ALTER TABLE `tblarticlexcomment`
  MODIFY `ArticleXCommentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblarticlexlike`
--
ALTER TABLE `tblarticlexlike`
  MODIFY `ArticleXLikeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tblarticlextag`
--
ALTER TABLE `tblarticlextag`
  MODIFY `ArticleXTagID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblattch`
--
ALTER TABLE `tblattch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblbab`
--
ALTER TABLE `tblbab`
  MODIFY `BabID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblchallenge`
--
ALTER TABLE `tblchallenge`
  MODIFY `ChallengeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblchapter`
--
ALTER TABLE `tblchapter`
  MODIFY `ChapterID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblclstream`
--
ALTER TABLE `tblclstream`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcobaquiz`
--
ALTER TABLE `tblcobaquiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tblcobaquizanswer`
--
ALTER TABLE `tblcobaquizanswer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcobaquizanswfinal`
--
ALTER TABLE `tblcobaquizanswfinal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcobaquizopt`
--
ALTER TABLE `tblcobaquizopt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblcobaquizsiswa`
--
ALTER TABLE `tblcobaquizsiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblcomment`
--
ALTER TABLE `tblcomment`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tblcompletedsection`
--
ALTER TABLE `tblcompletedsection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcourse`
--
ALTER TABLE `tblcourse`
  MODIFY `CourseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblcourseuser`
--
ALTER TABLE `tblcourseuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tblfollow`
--
ALTER TABLE `tblfollow`
  MODIFY `FollowID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tblforuma`
--
ALTER TABLE `tblforuma`
  MODIFY `ForumAID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tblhari`
--
ALTER TABLE `tblhari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbljenjang`
--
ALTER TABLE `tbljenjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblkelas`
--
ALTER TABLE `tblkelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblkomentar`
--
ALTER TABLE `tblkomentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `tblmapel`
--
ALTER TABLE `tblmapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblmapel_kelas`
--
ALTER TABLE `tblmapel_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblmateri`
--
ALTER TABLE `tblmateri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tblpretestanswer`
--
ALTER TABLE `tblpretestanswer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- AUTO_INCREMENT for table `tblsbmtugas`
--
ALTER TABLE `tblsbmtugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbltugas`
--
ALTER TABLE `tbltugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbluseractivity`
--
ALTER TABLE `tbluseractivity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_classteacher`
--
ALTER TABLE `tbl_classteacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `test_register`
--
ALTER TABLE `test_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_detail`
--
ALTER TABLE `users_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
