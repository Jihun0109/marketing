-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2020 at 01:48 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marketing_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '7 reasons why use email marketing', '7  reasons why use email marketing', 'This is the excerpt for the Lorem Ipsum Post', '<p>The present advertisers need to accomplish more with less. They needs to associate with their crowd in a profoundly customized manner, while remaining on financial plan. Advertisers that can do this&mdash;interface with their possibilities and clients in a profoundly focused on way&mdash;will be effective in conveying ROI and income back to the business.&nbsp;</p>\r\n<p>As the VentureBeat report represents, no advertising class has the life span of email promoting. While some advertising patterns go back and forth, email remains the most remarkable channel accessible to the cutting edge advertiser.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2><span style=\"color: #0099a8;\"><strong>1. Email has bigger reach.&nbsp;</strong></span></h2>\r\n<p>With Facebook gloating more than 1 billion dynamic clients and Twitter flaunting 255 million, it\'s enticing to accept that web based life is the best method to arrive at the majority. These are noteworthy numbers, however what isn\'t so as often as possible shared are the measurements on email use.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>The all out number of overall email accounts was 3.9 billion out of 2013, and anticipated to arrive at 4.9 billion by 2017, as indicated by Radicati.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>While this may appear to be astounding from the outset, consider your own online conduct: When you pursue a site (like an online store), you need to enter your email address to make the record. You even need an email address to make a Facebook or Twitter account. Furthermore, Facebook and Twitter email to inform clients of action, similar to when somebody is labeled in a photograph.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Email is the cash of the web, and anyone who\'s online has a functioning email address. And keeping in mind that Facebook and Twitter may appear to be entirely pervasive, the progressing battle over information penetrates and protection implies a lot of individuals are leaving some online networking channels.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>So with regards to interfacing with your possibilities and clients, there\'s no channel with a more extensive reach than email.</p>\r\n<p>&nbsp;</p>\r\n<h2><span style=\"color: #0099a8;\"><strong>2. Email conveys your message.</strong></span></h2>\r\n<p>On the off chance that advertisers need to pick between adding a supporter of their email list, or increasing another Facebook fan, they ought to go for the email endorser inevitably.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>There are two key reasons why:&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>To start with, 90% of email gets conveyed to the proposed beneficiary\'s inbox, though just 2% of your Facebook fans see your posts in their News Feed. This is on the grounds that Facebook limits the occasions your posts show up in the News Feed trying to drive brands towards their paid publicizing choices.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>This is a serious deal with regards to getting your messages before your ideal crowd.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>On Facebook, in the event that you present a report on your 10,000 fans just around 200 of them will even get an opportunity of seeing it in their News Feed. On the other hand, on the off chance that you send an email crusade to 10,000 endorsers at any rate 9,000 of them will get it in their inbox.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>This implies your message is multiple times bound to be seen utilizing email than Facebook.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Besides, your email supporters have expressly revealed to you they need to get notification from you when they pursued your email list.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>There are exacting laws and guidelines around SPAM laws, so in case you\'re messaging a possibility or client, this is on the grounds that they gave you their consent. Presently consider the promotions in your Facebook News Feed &ndash; did you request that those organizations market to you?&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Likely not. More than likely, you played out a Google search or visited their site. That is determinedly not the same as proactively joining from an email pamphlet.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Email is demonstrated to guarantee your crowd gets your message.</p>\r\n<p>&nbsp;</p>\r\n<h2><span style=\"color: #0099a8;\"><strong>3. Email drives changes.&nbsp;</strong></span></h2>\r\n<p>Most advertisers are laser centered around driving changes. Whether or not they do as such as leads, deals, participations, or a metric interesting to your business procedure, a definitive objective for advertisers is to transform potential clients into paying clients.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Also, with regards to changes, there is certainly not a more impressive channel than email.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Actually, the normal active visitor clicking percentage of an email battle is around 3% (of complete beneficiaries), though the normal active visitor clicking percentage from a tweet is around 0.5%.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>This implies you are 6x bound to get somebody to navigate to your site by means of email than you are from Twitter. As talked about before, your email endorsers have disclosed to you they need to get notification from you and this isn\'t regularly the situation with social.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>4.24% of guests from email advertising purchase something when contrasted with 2.49% of guests from web crawlers and 0.59% from web-based social networking, as indicated by a study led by Monetate.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>In addition, email is profoundly quantifiable. Crusade Monitor clients have constant access to measurements like opens, clicks, skips, advances, social offers, and that\'s just the beginning.</p>\r\n<p><img title=\"Campaign Monitor - Email Marketing Metrics\" src=\"http://marketing.com//storage/posts/May2020/222.png\" alt=\"Campaign Monitor - Email Marketing Metrics\" width=\"680\" height=\"479\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Moreover, the individuals who coordinate their email advertising into a CRM like Salesforce can see firsthand how their email promoting impacts business openings and arrangements.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>As an advertiser concentrated on supporting leads and driving changes&mdash;as most advertisers seem to be&mdash;email promoting bests all other correspondence channels for business.</p>\r\n<p>&nbsp;</p>\r\n<h2><span style=\"color: #0099a8;\"><strong>4. Email has a higher ROI.&nbsp;</strong></span></h2>\r\n<p>Given email\'s unrivaled capacity to drive changes, it bodes well that email is additionally the best marketing channel to drive ROI for your organization. Actually, email promoting yields a normal 3,800% rate of profitability for organizations and for each $1 spent on email advertising, the normal degree of profitability is $38.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>It\'s obvious from these measurements that email is a financially savvy channel for advertisers, yet for what reason does it beat different channels so remarkably with regards to ROI?&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>It comes down to conveying profoundly customized and significant messages. Dissimilar to informal organizations where you send announcements to each adherent paying little heed to their area, interests and buy history, email permits you to be hyper-focused with your interchanges.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>The more information you have about your clients in an email marketing apparatus like Campaign Monitor&mdash;incorporating bits of knowledge pulled in from coordinated frameworks like your CRM, client assistance arrangement, and so on&mdash;the more focused on you can be.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Battle Monitor client Rip Curl used division and dynamic substance to convey the correct message to the ideal individual. For instance, they know the sexual orientation of their supporters and where they are found geologically, so they can guarantee that females in the United States get an advancement about swimming outfits throughout the mid year months and guys in Australia get an email about wetsuits throughout the winter months.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>This utilization of division and dynamic substance assists with guaranteeing the substance they send is applicable to each individual beneficiary and that importance drives individuals to navigate, make buys &ndash; and increment the ROI of their email advertising efforts.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2><span style=\"color: #0099a8;\"><strong>5. Email is the favored correspondence channel.&nbsp;</strong></span></h2>\r\n<p>For some, interpersonal organizations are an individual type of correspondence used to stay up with the latest with companions and family. At the point when individuals sign in to their online life accounts, they\'re there to see photographs and updates from individuals they know and care about.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Email, unexpectedly, is a considerably more expert medium and individuals hope to get data about items and administrations through that channel.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Truth be told, examines show 72% individuals want to get limited time content through email, contrasted with 17% who favor online networking.</p>\r\n<p><img title=\"MarketingSherpa - Email - Preferred Communication Channel\" src=\"http://marketing.com//storage/posts/May2020/Untitled-1.png\" alt=\"MarketingSherpa - Email - Preferred Communication Channel\" width=\"680\" height=\"534\" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2><span style=\"color: #0099a8;\"><strong>6. Email is an open stage.</strong></span>&nbsp;</h2>\r\n<p>In the course of recent years, numerous brands have put a huge number of dollars into purchasing huge social followings so as to have the option to impart and connect with a crowd of people.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Yet, while organizations are putting resources into different web based life stages, Facebook has habitually refreshed its calculation to diminish the measure of supporters who will see a brand\'s post, except if those posts are paid promotions.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>This training has become so pervasive that 98% of brand devotees will never observe the posts in their News Feeds. Twitter is by all accounts moving a comparative way with the declaration it will present a calculation controlled channel too.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>The issue with channels like Facebook and Twitter is they\'re possessed and constrained by outsiders which implies advertisers are helpless before changes the stages make to their foundation.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>In the mean time, email isn\'t claimed or constrained by any one specific substance. It\'s an open correspondence stage and there are a huge number of administrations that give access to send and get email.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>The assorted cluster of organizations associated with email advertising guarantees that nobody gathering can make changes that would have an across the board impact, and not at all like Facebook or Twitter, in the event that you put the time and cash into building and developing an extraordinary email list, your endorser rundown will be a benefit you own. Hence you\'ll have the option to use your rundown without the danger of somebody constraining its viability.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2><span style=\"color: #0099a8;\"><strong>7. Email will be around for eternity.&nbsp;</strong></span></h2>\r\n<p>Recall MySpace? What?&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>The once-hot webpage was the biggest long range interpersonal communication website on the planet somewhere in the range of 2005 and 2008, and in June 2006 outperformed Google as the most visited site in the United States. However where is MySpace now? Every one of those clients in the long run proceeded onward to other informal communities, and the webpage is currently the 1,500th most famous site in the United States.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Envision contributing critical measures of time and cash to fabricate a group of people on a stage just to think that its an apparition town only a year or two later. The effect on your capacity to reach and connect with potential clients would be disastrous.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Then again, email has a long history of security. The primary limited time email crusade was sent in 1978 to a sum of 400 individuals and email has been developing reliably since.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Strangely, the email space itself has advanced from a period where you required an engineer to assemble an email to today, where instruments like Campaign Monitor engage the cutting edge advertiser to make and send lovely marked messages easily. This move has put the intensity of business email under the control of more individuals.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Building your email list, not at all like structure an internet based life following, is a stable long haul venture that will pay off for a long time to come.</p>', 'posts\\May2020\\V6KgHFfga5HKt0kiQlp5.png', '7-reasons-why-use-email-marketing', '7 reasons why use email marketing', 'email marketing, marketing resource, service', 'PUBLISHED', 0, '2020-02-25 06:17:06', '2020-05-13 09:36:56'),
(2, 1, 1, 'The Importance of Email Marketing  2020', 'The Importance of Email Marketing by 2020', 'Talking about importance of email marketing in 2020', '<p>Email marketing is one of the most effective ways to reach and engage your audience. We &rsquo;ll talk about the top reasons why your business needs to develop an email marketing strategy and start implementing campaigns in the near future.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2><strong>The&nbsp;<span class=\"highlight highlightrequired\" style=\"box-sizing: border-box;\">Importance of Email Marketing</span> for Your Business</strong></h2>\r\n<p>Email is a big section of our lives as professionals, individuals, and, yes, even consumers. With emails you can connect any kind of people at once.</p>\r\n<p>&nbsp;</p>\r\n<p>According to Radicati Group, more than half of the world&rsquo;s population uses email and this number is expected to grow up to more than 4.3 billion by 2023. Data from Pew Research also shows that 92% of adults in the United States use email, and 61% of these email users are checking and sending emails on an average day.</p>\r\n<p>&nbsp;</p>\r\n<p>This presents a great opportunity for businesses of all sizes to reach their target market, no matter what their audience looks like. By adding email marketing to their list of digital marketing tactics, businesses can improve their reach and visibility, allowing them to engage and convert more leads on a consistent basis.</p>\r\n<p>&nbsp;</p>\r\n<p>Not only does email marketing allow you to take advantage of the prospect of reaching a large group of people, but this medium can also offer benefits that other digital marketing tactics can&rsquo;t provide. Email marketing allows you to personalize your messaging and tailor messages based on customer actions. You can also segment your audiences to ensure that the right leads are getting the most impactful information at the most effective times. (But more about that later.)</p>\r\n<p>&nbsp;</p>\r\n<p>Perhaps one of the greatest reasons why email marketing is so important is that your competitors are using it. In fact, Marketing Land reports that of the 1.45 million emails sent per month, 1.38 million of these emails are sent by U.S. companies. And here&rsquo;s another interesting figure, 85% of Gen Z say that they prefer to use email over other modes of communication. And this percentage will definitely grow once they start having jobs. This means that if you want to remain competitive in the digital marketplace, your company will need to start using email marketing to reach out to your audience.</p>\r\n<p>&nbsp;</p>\r\n<h2><strong>1. Email marketing is cost-effective.</strong></h2>\r\n<h2><strong>2. With email marketing you can reach more customers.</strong></h2>\r\n<h2><strong>3. You can automate the email marketing process.</strong></h2>\r\n<h2><strong>4. Email marketing makes it easy to personalize content for better response rates.</strong></h2>\r\n<h2><strong>5. You can make your email marketing interactive.</strong></h2>\r\n<p style=\"box-sizing: border-box; line-height: 1.8; margin-bottom: 20px; color: #222222; font-family: \'Open Sans\', sans-serif; font-size: 15px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\">As the importance of email marketing continues to rise, so will email interactiveness. Marketing Land predicts that by 2020, digital marketing that&rsquo;s more interactive will have a higher appeal and response rate among various target market groups.&nbsp;<a style=\"box-sizing: border-box; background: transparent; text-decoration-line: none; color: #1f9cd9; transition: all 0.3s ease 0s;\" href=\"https://www.lyfemarketing.com/blog/small-business-email-marketing/\">Email marketing</a>&nbsp;offers businesses the opportunity to provide interactive content straight to consumer inboxes, for a much lower cost than some other marketing tactics.</span></p>\r\n<p style=\"box-sizing: border-box; line-height: 1.8; margin-bottom: 20px; color: #222222; font-family: \'Open Sans\', sans-serif; font-size: 15px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\">Rather than sending the subscriber to a landing page right away, you can provide different types of interactive content within the body of the email. From embedded video content to email carousels, interactive content keeps consumers interested and engaged before they head back to your site to take action.</span></p>\r\n<p style=\"box-sizing: border-box; line-height: 1.8; margin-bottom: 20px; color: #222222; font-family: \'Open Sans\', sans-serif; font-size: 15px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\">By creating more interactive email content, your business will not only be able to better capture the attention of your audience, but you&rsquo;ll also be able to integrate other channels into your digital marketing. For instance, if you share a video in an email, you might use social media share buttons to encourage others to share the video content on their own social media pages. The more integrated you can make your marketing campaigns, the more touchpoints you&rsquo;ll create within your target market.</span></p>\r\n<h2><strong>6. You can quickly and easily measure your email marketing efforts.</strong></h2>\r\n<p><span style=\"font-size: 14pt; color: #222222; font-family: \'Open Sans\', sans-serif;\">The only way to know if a digital marketing tactic is working for your business is to measure the results. Yet another reason why your business needs email marketing by 2020 is because email marketing metrics are easy to track and measure over time. That way, there is no guesswork or question about whether the tactics you are using are working or not.</span></p>\r\n<p style=\"box-sizing: border-box; line-height: 1.8; margin-bottom: 20px; color: #222222; font-family: \'Open Sans\', sans-serif; font-size: 15px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\">With email marketing analytics, your business can see which users opened your emails, if they clicked any links, or if they took the desired action (or converted). You can also see how many people unsubscribed from your list after opening the email. This information becomes valuable as you work to analyze your digital marketing strategy and make adjustments for improvement.</span></p>\r\n<p style=\"box-sizing: border-box; line-height: 1.8; margin-bottom: 20px; color: #222222; font-family: \'Open Sans\', sans-serif; font-size: 15px;\"><span style=\"box-sizing: border-box; font-size: 14pt;\">With the right email software, you can even perform A/B tests, which allows you to see which specific elements of your email messages provide the best results. For instance, you might test different subject lines to see which leads to higher open rates or test different offers to see which offer influences the most conversions.</span></p>', 'posts\\May2020\\n0aeopWS6lBl8tQR9zQ4.png', 'the-importance-of-email-marketing-2020', 'The Importance of Email Marketing by 2020', 'The Importance of Email Marketing by 2020', 'PUBLISHED', 0, '2020-02-25 06:17:06', '2020-05-13 10:17:15'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-02-25 06:17:06', '2020-02-25 06:17:06'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-02-25 06:17:06', '2020-02-25 06:17:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;