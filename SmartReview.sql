-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Gegenereerd op: 08 jun 2018 om 11:47
-- Serverversie: 5.6.38
-- PHP-versie: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SmartReview`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Smartphones', '2018-04-16 12:58:41'),
(2, 'Tablets', '2018-04-16 12:58:41'),
(3, 'Others', '2018-04-16 20:35:07'),
(4, 'Wearables', '2018-04-19 09:36:10'),
(5, 'Smart TVs', '2018-05-29 13:10:15');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(1, 15, 'John Doe', 'jDoe@gmail.com', 'Great review!', '2018-04-17 12:33:49'),
(2, 15, 'Sander Pietercil', 'sander.pietercil@gmail.com', 'It\'s working!', '2018-04-17 12:54:18'),
(3, 14, 'John Doe', 'johnd@gmail.com', 'This is John Doe on moblile!\r\nLove the review! :-)', '2018-04-19 07:35:44'),
(4, 15, 'Jordi', 'blablamail@gmail.com', 'Hallo daar!', '2018-04-19 09:24:21'),
(6, 28, 'John Doe', 'jDoe@gmail.com', 'What is the meaning of live? It\'s reading the latest tech reviews on SmartReview offcourse! :D Great review guys! Keep it up.', '2018-06-07 19:45:03');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `post_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `post_created_at`) VALUES
(13, 3, 1, 'No image review', 'No-image-review', '<p>This is a post with no image.</p>\r\n', 'noimage.png', '2018-04-16 19:11:54'),
(14, 1, 1, 'iPhone X Review', 'iPhone-X-Review', '<h1>Finally, the rebooted iPhone we&#39;ve been waiting for</h1>\r\n\r\n<p>The iPhone X is the huge leap forward that Apple&#39;s handsets needed. Aside from the original iPhone in 2007, this new iPhone is set to have the biggest impact on Apple&rsquo;s smartphone direction ever.</p>\r\n\r\n<p>Apple itself is calling it the future of the smartphone, the embodiment of what it&rsquo;s been trying to achieve for a decade. But while the iPhone X is all about premium parts and an all-new experience, it&rsquo;s a huge gamble for the Cupertino brand too as it tries to reclaim some leadership in smartphone innovation.</p>\r\n\r\n<p>Losing known, reliable elements like the Touch ID fingerprint scanner, the home button; introducing new methods of navigating and unlocking the phone &ndash; and charging a lot more for the privilege &ndash; seems risky for a company that was already treading new ground by doing away with the traditional headphone jack last year.</p>\r\n\r\n<p>But the iPhone X is the handset we&rsquo;ve been demanding from Apple for years &ndash; a world away from the increasingly-tired designs that those who just want a new iPhone have had to make do with.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Verdict</h2>\r\n\r\n<p>The iPhone X was a huge gamble from Apple, but one that really paid off. Losing the home button and altering the design was a dangerous move, but one that was sorely needed after years of similarity and the premium design, extra power, all-screen front mix together to create - by far - the best iPhone Apple&#39;s ever made. It&#39;s impossible to give a perfect score to something that costs this much - but this is the closest to smartphone perfection Apple has ever got.</p>\r\n\r\n<h3>Pros</h3>\r\n\r\n<ul>\r\n	<li>Great screen</li>\r\n	<li>Premium strong design</li>\r\n	<li>TrueDepth camera is powerful</li>\r\n</ul>\r\n\r\n<h3>Cons</h3>\r\n\r\n<ul>\r\n	<li>The most expensive flagship phone around</li>\r\n	<li>Metal rim can scuff without case</li>\r\n</ul>\r\n\r\n<blockquote>\r\n<p>Review from Techradar.com</p>\r\n</blockquote>\r\n', 'iphone-x.png', '2018-04-16 19:47:28'),
(15, 1, 1, 'Huawei P20 Review', 'Huawei-P20-Review', '<h1>A solid smartphone, but its big brother is better</h1>\r\n\r\n<p>When we first heard that the follow-up to the well-received Huawei P10 would be called the P20, we were excited. Surely skipping numbers P11 through P19 meant the new phone would be a huge jump forward - perhaps even twice as good - as its predecessor?</p>\r\n\r\n<p>Well, despite a stunning new design and a snazzy AI-enhanced camera, our hands on with the new P20 left us cold. Now that we&rsquo;ve had more time with it, and its bigger and pricier sibling the Huawei P20 Pro, our initial assessment has proved mostly correct.</p>\r\n\r\n<p>Don&rsquo;t get us wrong, the Huawei P20 is a great phone in its own right, but it hasn&rsquo;t moved far enough from the P10 to be a properly enticing buy for 2018 - especially when all the features we wanted have been implemented on the Pro and left off the spec sheet for the smaller phone.</p>\r\n\r\n<h2>Huawei P20 price and availability</h2>\r\n\r\n<ul>\r\n	<li><strong>Out now in the UK for &pound;599</strong></li>\r\n	<li><strong>Not coming to the US</strong></li>\r\n	<li><strong>Australian availability is to be confirmed</strong></li>\r\n</ul>\r\n\r\n<p>All of this is moot for people in the US, where Huawei phones seem to be rapidly disappearing as a result of losing key vendor deals and potentially being shut out of government contracts. Somewhat unsurprisingly in that climate, Huawei has confirmed the P20 won&rsquo;t be making an appearance in the Land of the Free.</p>\r\n\r\n<p>It is, however, available in the UK at &pound;599 SIM-free, and we&rsquo;d anticipate an Australian launch too, probably at around AU$1,000.</p>\r\n\r\n<p>That puts it on par with the LG V30, and makes it cheaper than the Sony Xperia XZ2, Samsung Galaxy S9 and Google Pixel 2 XL. However, the slightly larger, more powerful Mate 10 Pro is now cheaper since its launch - food for thought right there.</p>\r\n\r\n<h2>50 shades of gradient</h2>\r\n\r\n<ul>\r\n	<li><strong>149.1 x 70.8 x 7.7 mm, 165g</strong></li>\r\n	<li><strong>Notched screen</strong></li>\r\n	<li><strong>No headphone jack</strong></li>\r\n</ul>\r\n\r\n<p>There&rsquo;s no denying the P20 is an eye-catching phone. The very first time we took it out on the London Underground, a group of teenagers asked us what it was, and declared it a &#39;serious phone&#39; (this is, we presume, a good thing).</p>\r\n\r\n<p>We usually only get comments from strangers when we&rsquo;re carrying a OnePlus (which is treated a bit like a Nerd Club Membership Card), so clearly Huawei has done a good job on the design. Our review unit has the Pink Gold design, although realistically the gradient on that colourway is pretty subtle.</p>\r\n\r\n<p>The hardened glass back of the handset has an opalescent pink finish that gives it a gorgeous mother-of-pearl look, and while not everyone will appreciate either the pink or the (slight) gradient, a lot of people would love a phone that looks like they found it on the beach.</p>\r\n\r\n<p>That said, since it&rsquo;s so smooth, the back does make this phone a slippery fish. You might want to put it in a grippy case if you don&rsquo;t want it sliding off tables.</p>\r\n\r\n<p>The back panel is also unusual in that the Huawei logo and various bits of bumf that manufacturers have to include (logos, model numbers, that kind of thing) is written in landscape orientation, as is the Leica logo and camera info.</p>\r\n\r\n<p>This has the effect of making the back look like a traditional landscape-oriented camera, with the lenses on the right replacing the viewfinder. The only thing missing is a Sony-style hardware shutter button, which would have ideally been included on the left. You can use the volume keys as shutter buttons, though.</p>\r\n\r\n<p>The dual camera lenses (no third camera on this one - that&rsquo;s sadly reserved for the P20 Pro) are combined in a single oval enclosure which protrudes a millimetre or so. Flipping over to the front, you&rsquo;ll find the selfie camera at top centre, as per the &lsquo;notch&rsquo; trend of this year (more on that below).</p>\r\n\r\n<p>The black bezels around the screen are decently slim, though the bottom strip is still fairly sizeable due to housing the fingerprint pad (it&rsquo;s not pressable, sadly).</p>\r\n\r\n<p>The phone comes with a screen protector pre-applied, which is a little annoying as you can clearly see its edges around the fingerprint pad and feel them when you swipe down from the top, but if you were going to put a protector on anyway, it&rsquo;s probably better than having a self-applied one full of bubbles and dust.</p>\r\n\r\n<p>The rounded metal edges of the P20 have a light pink finish to them on our unit, with the SIM tray on the top left, volume rocker and power key on the right, and two sets of drilled holes (only one is a speaker) plus the centred USB-C port on the bottom edge. That&rsquo;s right, no headphone jack. Sorry.</p>\r\n\r\n<h2>Camera</h2>\r\n\r\n<ul>\r\n	<li><strong>Dual Leica cameras, 12MP RGB (f/1.8) and 20MP B&amp;W (f/1.6)</strong></li>\r\n	<li><strong>24MP f/2.0 selfie camera</strong></li>\r\n	<li><strong>Useful AI image stabilisation</strong></li>\r\n</ul>\r\n\r\n<p>The latest product of Huawei&rsquo;s partnership with camera legends Leica, the P20 is unsurprisingly a camera-led handset. However, while the Huawei P20 Pro includes a triple rear camera, the P20 has to make do with &lsquo;just&rsquo; two on the back and one on the front.</p>\r\n\r\n<p>What sets the P20 camera apart from the not-too-dissimilar Huawei P10 Pro is the addition of AI, which interprets what you&rsquo;re doing and tries to assist. It&rsquo;s sort of like the Microsoft Word paperclip for photography - except less annoying. Well, mostly.</p>\r\n\r\n<p>The camera app has the typical Huawei raft of modes, but what&rsquo;s different here is that the phone will switch between them based on what it thinks you&rsquo;re trying to accomplish.</p>\r\n\r\n<p>For instance, if you aim the camera at a cat, it&rsquo;ll switch on Cat Mode (we&rsquo;re not making this up) and automatically apply settings that should get a better shot of a fast-moving fluffy thing.</p>\r\n\r\n<p>In our tests, the phone correctly identified cats and dogs every time - even a black cat hiding under a bed! - but it perhaps needs a bird mode, as our parakeet was labelled a cat, and if she could read she&rsquo;d be very offended.</p>\r\n\r\n<p>The design of the camera app could be better - the horrible fake leather texture behind the shutter button is unnecessary and reminds us of TouchWiz circa 2013.</p>\r\n\r\n<p>Scrolling left and right to see other modes seems a bit inefficient too, although you can scroll to the end and tap &lsquo;More&rsquo; to see them all on a panel.</p>\r\n\r\n<p>Aperture, Night Mode, Portrait Mode, Photo, Video and Pro mode are all on the scroll bar, and then there&rsquo;s a whole load more including Slow-Mo, HDR, Panorama and Light Painting on the More menu.</p>\r\n\r\n<p>Not all of the available modes can be manually enabled - Cat and Dog mode, Greenery (for plants), Flowers (yep, separate to Greenery&hellip;), Close-Up and other similar AI-enhanced settings can only be switched on automatically.</p>\r\n\r\n<p>That&rsquo;s probably a good thing, as we found they never failed to activate when required (although Close-Up likes to jump in and SUPERZOOM things too much at times), and it&rsquo;s not necessary to clutter up the menu with them all.</p>\r\n\r\n<p>The P20 camera launches quickly, and twinned with the double-tap volume key shortcut, it&rsquo;s hard to miss a shot.</p>\r\n\r\n<p>It also snaps instantly - we didn&rsquo;t experience any shutter lag on this handset, although lower light photos did bring up the familiar old Huawei &#39;sharpening the photo, please steady your device&#39; box.</p>\r\n\r\n<p>That said, one of the big improvements to the Huawei camera app is the addition of AI to Super Night Mode, which takes spectacular pictures of night-time skylines and other dark scenes.</p>\r\n\r\n<p>This has long been a favourite mode on Huawei phones, and the new version means you no longer need a tripod to get the shot. Because it&rsquo;s a longer exposure mode and holding a phone dead still for 30 seconds to a minute is impossible, previously handheld Super Night Mode photos would come out blurry.</p>\r\n\r\n<p>It&rsquo;s not perfect, but the AI-assisted new Super Night Mode has significantly increased the chances that you&rsquo;ll get a great result with just your hands.</p>\r\n\r\n<p>If the phone detects that you&rsquo;re holding it, it only counts 4 seconds of exposure before finalising the photo. If the phone is in a more stable position, like sitting on a ledge, it counts 18 seconds. The results are a little surreal, but undoubtedly beautiful.</p>\r\n\r\n<p>On Auto mode, pictures taken with the main P20 camera come out beautifully. Indoors, outdoors, at night - even without the third camera of the Huawei P20 Pro, this is a very impressive shooter that rivals the top camera phones on the market. Night-time and low light photos are particularly good, and consistently came out sharper and less grainy in our tests than on the Pixel 2 XL</p>\r\n\r\n<p>The 2x hybrid zoom often self-activates when taking a close-up of something, and true to the marketing, it does offer a zoomed shot without losing quality. It can be a bit jarring to be trying to line up a shot and have it suddenly zoom itself in, though.</p>\r\n\r\n<p>That said, the AI enhancements generally do make for a better photo. When we aimed the camera at people, it switched into Portrait mode, and the shots came out really well. The bokeh effect is noticeable and adds a professional vibe, even to a silly snap we took of our friends in a harshly-lit ice cream parlour at midnight.</p>\r\n\r\n<p>The pet modes didn&rsquo;t seem to make much difference either way, but food and plants genuinely did look better with their respective modes turned on.</p>\r\n\r\n<p>On the selfie side, we were similarly impressed. The front-facing camera offers a very generous 24MP at f/2.0, and while there are lots of modes again, none of them feel like awkwardly shoehorned in Snapchat clones (looking at you, Samsung).</p>\r\n\r\n<p>For selfies, you&rsquo;ll want Portrait mode, which is where you&rsquo;ll find the option to turn bokeh on and off, as well as a Beauty mode slider ranging from &lsquo;first thing in the morning&rsquo; to &lsquo;if I had a professional makeup artist&rsquo;.</p>\r\n\r\n<p>Beauty level 3 and bokeh on results in a flattering but realistic photo that looks like it was shot on an SLR. However, you can&rsquo;t tap to focus - the camera focuses on the face whether you like it or not.</p>\r\n\r\n<p>This can be annoying when you&rsquo;re trying to take a photo of something else using the front-facing camera - a baby bird on our shoulder in our case - and it insists on focusing on a face even if it&rsquo;s someone in the background.</p>\r\n\r\n<p>There&rsquo;s plenty to play with on the video side, too. Rather than OIS or EIS, the P20 calls its image stabilisation AIS - which gives us Artificial Intelligence/Image Stabilisation, but we&rsquo;ll forgive that.</p>\r\n\r\n<p>In other words, the included AI smarts cut down the hand shake in your videos, and in our tests it worked well.</p>\r\n\r\n<p>You can shoot in 4K at 30fps on the main camera, and there&rsquo;s also 720p super-slow-mo at 960fps for those artistic endeavours. The front-facing camera can shoot up to 1080p.</p>\r\n\r\n<h2>Our Verdict</h2>\r\n\r\n<h3>Pros</h3>\r\n\r\n<ul>\r\n	<li>Great camera</li>\r\n	<li>Big battery with lots of stamina</li>\r\n	<li>Optional (ish) notch</li>\r\n</ul>\r\n\r\n<p>Cons</p>\r\n\r\n<ul>\r\n	<li>No headphone jack</li>\r\n	<li>No wireless charging or water resistance</li>\r\n	<li>Pales next to the P20 Pro</li>\r\n</ul>\r\n\r\n<blockquote>\r\n<p>Review by TechRadar</p>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n', 'huaweip20.png', '2018-04-17 09:30:10'),
(26, 1, 1, 'iPhone 8 Plus Review', 'iPhone-8-Plus-Review', '<h2><strong>It&#39;s no iPhone X, but the 8 Plus is a safe - if pricey - bet</strong></h2>\r\n\r\n<p>The iPhone 8 Plus looks like the iPhone 7 Plus, which looks like the 6S Plus, which looks like the 6 Plus. The only thing that marks out the newer model visually is the addition of the glass back and the two-tone effect it creates&hellip; if it wasn&#39;t for that, it would be impossible to tell this and the 7 Plus apart.</p>\r\n\r\n<p>That said, maybe this is more of a statement about the state of the industry. Apple has never changed things for the sake of it, and with &nbsp;the 8 Plus it feels like Apple saying there&#39;s nothing truly fundamental out there to move to.</p>\r\n\r\n<p>Except&hellip; we also have the iPhone X, which does move the dial dramatically, plug in reams of new technology and alter the way we think about the iPhone.&nbsp;</p>\r\n\r\n<p>So one can only surmise that this is the &#39;default&#39; iPhone, the one that the people not willing to spend exorbitant sums of money on a handset will look to.&nbsp;</p>\r\n\r\n<p>Despite not being in the X&#39;s price bracket, however, the iPhone 8 Plus is still one of the most expensive flagship phones on the market &ndash; so it needs to have something a little different to command interest over the previous models.</p>\r\n\r\n<p>There are some strong upgrades: the camera has been enhanced, the internal workings are now among the most powerful in the industry, and little tweaks throughout smooth off rough edges in a way that makes us feel Sir Jony Ive climbed inside his computer and lathed them off himself.</p>\r\n\r\n<p>Add to that a better battery and screen, and the iPhone 8 Plus is the better iPhone compared to the smaller 8.</p>\r\n\r\n<p>But today&#39;s smartphone user is getting more discerning, and holding onto their handsets for longer than ever before&hellip; so the new phablet from Apple needs to deliver.</p>\r\n\r\n<h3><strong>iPhone 8 Plus vs iPhone X</strong></h3>\r\n\r\n<p>The first difference here is cost - although not to the same level as vs the iPhone 8. &nbsp;The iPhone X starts at<strong> $999 / &pound;999 / AU$1,579</strong> if you want the 64GB model, where the iPhone 8 Plus begins at <strong>$799 / &pound;799 / AU$1,229</strong> for the same capacity.&nbsp;</p>\r\n\r\n<p><img alt=\"buh\" src=\"https://cdn.mos.cms.futurecdn.net/uBhFTArHdNVBvxEmZ2k8FL-650-80.jpg\" style=\"border-style:solid; border-width:0px; height:365px; width:650px\" /></p>\r\n\r\n<p>So what are you getting for that (slightly) higher cost? Primarily, the screen - you&#39;ve got a bezel-less 5.8-inch display with a 1,125 x 2,436 resolution, and it&#39;s OLED display technology too - that&#39;s superior to the 5.2-inch &nbsp;1,080 x 1,920 &nbsp;screen on the iPhone 8.&nbsp;</p>\r\n\r\n<p>That&#39;s a larger phone with a smaller screen - that&#39;s what losing the bezel brings.</p>\r\n\r\n<p>The other big difference to consider is how you unlock this phone - with the iPhone 8 Plus, it&#39;s Touch ID fingerprint scanning, as it has been for years. With the iPhone X, you&#39;re unlocking with your face, using the nattily-named Face ID.&nbsp;</p>\r\n\r\n<p>We are worried about whether Face ID will be swift and recognise faces fast enough - this will be one of the key things we look at in our review of the iPhone X when it lands.</p>\r\n\r\n<p>The notch at the top of the iPhone X contains a camera that allows for Animoji, where emoji can be animated by mapping your face - this feature is locked to the iPhone X, and isn&#39;t a feature that appears on the iPhone 8 Plus or iPhone 8.</p>\r\n\r\n<p>Both the iPhone X and iPhone 8 Plus have dual cameras , which allows for background de-focus and a more comprehensive photographic experience - however, due to the way the phones are packaged (to accommodate for the iPhone X notch) the camera array is horizontal on the X, but vertical on the 8 Plus.</p>\r\n\r\n<p>Basically, the iPhone 8 Plus is the larger-screened version of the 8, with better battery and more heft.</p>\r\n\r\n<p>The iPhone X is the next generation of Apple&#39;s phone. It&#39;s chock-full of new technology, it&#39;s exciting for Apple fans, but it&#39;s untested and expensive.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Our Verdict</strong></h3>\r\n\r\n<p><strong>Pros</strong></p>\r\n\r\n<ul>\r\n	<li>Wireless charging is useful</li>\r\n	<li>Glass back feels premium</li>\r\n	<li>Dual camera is powerful</li>\r\n</ul>\r\n\r\n<p><strong>Cons</strong></p>\r\n\r\n<ul>\r\n	<li>Dated design</li>\r\n	<li>No mobile HDR</li>\r\n	<li>Battery life average</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'iPhone8plus.png', '2018-04-19 09:51:05'),
(27, 1, 1, 'Samsung Galaxy S9 Review', 'Samsung-Galaxy-S9-Review', '<p>The Samsung Galaxy S9 is the phone that&#39;s supposed to lead the charge where the Galaxy S9 , one of the best phones we&#39;ve ever tested, left off - but it&#39;s not as much of an upgrade.</p>\r\n\r\n<p>Well, that&#39;s at first glance, because there is a raft of updates that some would find appealing. Yes, the design is identical to the Galaxy S8, and in reality this really should have been the &#39;S&#39; variant of that model if Samsung ever wanted to ape Apple&#39;s naming strategy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>But there&#39;s also a new, high-power camera on the back that brings genuine innovation in the dual-aperture shutter, as well as a more robust frame and so, so much more power under the hood.</p>\r\n\r\n<p>The screen is brighter and the dual speakers make this more of a media marvel - and the Galaxy S9 fixes one major flaw with the S8 by making it easy to unlock the phone with your face or finger, which 2017&#39;s model failed at - and that&#39;s why we&#39;ve named it as one of our best smartphones around at the moment.</p>\r\n\r\n<p>If this sounds like we&#39;re talking up an uninspiring phone, that&#39;s partly true - but we wanted to make sure you knew the big changes on the S9 if you were confused on why it looks so similar to last year&#39;s model.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.mos.cms.futurecdn.net/dcezPLiHGvcT5xHhcrdzX6-650-80.jpg\" style=\"height:365px; width:650px\" /></p>\r\n\r\n<p>These plus points are also set against a backdrop of a high price; we&rsquo;re not talking iPhone X levels here, but it&rsquo;s still one of the more expensive options you can buy.&nbsp;The larger Samsung Galaxy S9 Plus with a 6.2-inch screen is even pricier.</p>\r\n\r\n<p>So if you&rsquo;re looking to replace a 2016 phone do all the new features really offer enough to make the Galaxy S9 a worthwhile upgrade, or is the cheaper Galaxy S8 still the best phone in the world?</p>\r\n\r\n<h2>Price and release date</h2>\r\n\r\n<p>The Samsung Galaxy S9 release date was March 16, with pre-orders being delivered slightly ahead of this around the world - so you&#39;re able to buy it now.</p>\r\n\r\n<p>The Galaxy S9 is on sale for &pound;739, $719.99, or AU$1,199 SIM-free directly from Samsung, but exact pricing for other markets is currently unclear.&nbsp;</p>\r\n\r\n<p>In the UK, that&#39;s a huge price jump over last year&#39;s handset, which cost &pound;689 at launch, and it&#39;s the same price our sources reported before it was made official.</p>\r\n\r\n<p>In terms of a UK cost on contract you can expect to pay between &pound;35 and &pound;50 per month for a decent slug of data, although with many contracts you&rsquo;ll need to pay a little upfront too.</p>\r\n\r\n<p>In the US, we&#39;re seeing around $30 a month for the contract, and between $720-$800 for the phone itself. It&#39;s actually a little cheaper in the US compared to the Galaxy S8, bucking the trend we&#39;re seeing in other regions worldwide.</p>\r\n\r\n<p>There aren&rsquo;t any storage variants of this phone though in the UK or US, with only the 64GB option on sale.</p>\r\n\r\n<h2>Bixby is back... and better</h2>\r\n\r\n<ul>\r\n	<li><strong>Bixby Voice is still behind</strong></li>\r\n	<li><strong>Bixby Vision is far more useful</strong></li>\r\n</ul>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn.mos.cms.futurecdn.net/8APPPGncWZCwEymkddn64H-650-80.jpg\" style=\"height:365px; width:650px\" /></strong></p>\r\n\r\n<p>We were thoroughly disappointed by Bixby on the Galaxy S8 last year, as it promised to be the ultimate digital assistant and, well, it wasn&#39;t.</p>\r\n\r\n<p>It simply couldn&#39;t do enough &ndash; it wasn&rsquo;t able to work out what you wanted contextually, and it wasn&rsquo;t able to start or control enough apps. We could forgive the gestation period for this feature if it wasn&#39;t for the fact that Google Assistant is already on the phone, and incredibly capable.</p>\r\n\r\n<p>However, Samsung has upgraded Bixby on the Galaxy S9, and kept the Bixby button on the side of the device to allow you to interact with your assistant. You use the button as on a walkie-talkie, pressing to talk to Bixby and releasing when you&rsquo;ve delivered your command&hellip; but it&#39;s a bit slow to catch up.</p>\r\n\r\n<p>Bixby can be too literal &ndash; wanting to set a timer preset rather than just starting a countdown for example &ndash; and while you can ask it to take a picture and send it to a friend the whole process takes around 30 seconds &ndash; and that&#39;s assuming Bixby can find the friend to start with &ndash; in which time you&rsquo;d rather just do it manually.</p>\r\n\r\n<p>The Galaxy S9 also keeps telling us that we can dictate using Bixby, but this was never 100% accurate &ndash; it was pretty darn good, considering that you&#39;re essentially talking to a baby robot, but we needed to edit our words before sending.</p>\r\n\r\n<p>Bixby Vision has come a long way though &ndash; and the fact that it&#39;s turned off by default is just beautiful. No longer do the little green fireflies automatically dance across your viewfinder when you&#39;re trying to take a picture of your car, dog, mother or laundry basket (to show her you&#39;ve done it all) as the phone tries to work out what&#39;s being looked at.</p>\r\n\r\n<p>However, when you do turn on Vision the features are pretty useful. Bixby is much, much better at being able to work out what it&#39;s seeing than what it&rsquo;s hearing, and can give accurate results on the web for things like comics, lamps and nature scenes.&nbsp;</p>\r\n\r\n<p>The translation tool is also very strong &ndash; it comes up with some weird answers here and there, but on the whole it&#39;s very easy to work out what you&#39;re looking at. Samsung is making a big deal about this feature, although in reality it&#39;s a bit niche... you&#39;ll need to be in a foreign country, with data, and completely unable to work out what you&#39;re looking at.</p>\r\n\r\n<p>So while it&#39;s good that Bixby has been upgraded, to at least bring some sense to having that button on the side of the phone, it&#39;s still a novelty rather than a must-have feature.&nbsp;</p>\r\n\r\n<p>Mapping the button to Google Assistant is still a far better way to get the most from your phone with your voice (although you&rsquo;ll need to download a third party app to do it), despite it being more limited in scope... at least it manages the things it can do very well.</p>\r\n\r\n<h2>Improved biometrics</h2>\r\n\r\n<ul>\r\n	<li><strong>Intelligent scan is accurate, but not as secure</strong></li>\r\n	<li><strong>Far easier to unlock your phone</strong></li>\r\n</ul>\r\n\r\n<p>Anyone who read our Galaxy S8 review last year would have realised quite quickly that the biometric unlocking features of that phone almost made it unusable. The fingerprint scanner was too hard to reach, the iris scanner too unreliable and the facial recognition just too poor.</p>\r\n\r\n<p>Samsung needed to do something, and it has, with all three features now working seamlessly and interchangeably.&nbsp;</p>\r\n\r\n<p>Intelligent Scan marries the iris scanner and facial recognition to make unlocking your phone with your face a far, far simpler task, and as mentioned the fingerprint scanner is much easier to hit.</p>\r\n\r\n<p>The speed of the Intelligent Snan feature is so much better than last year... where the iris scanner and facial recognition on the S8 were between 30% and 50% accurate, the two together on the Galaxy S9 yield success almost every time.</p>\r\n\r\n<p>In low light the iris scanner is still a bit slow to react, and not always pleased to let you in (in this case, Apple&#39;s Face ID absolutely destroys it for accuracy and ease of use), but it&#39;s so simple to just flick your finger to the scanner on the back that we never had an issue.</p>\r\n\r\n<p>That&#39;s a real benefit over the iPhone X, keeping the fingerprint scanner.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>There are a couple of flaws with the biometric system. First, the 2D scan of the face the S9 makes to recognize you isn&#39;t as secure as other methods, like the fingerprint scanner or Apple&#39;s Face ID.</p>\r\n\r\n<p>That&#39;s not a huge problem for us &ndash; the fingerprint scanner is a better way of paying for things anyway, and really biometric unlocking is more about convenience than it is security.&nbsp;</p>\r\n\r\n<p>We weren&#39;t able to dupe the Samsung Galaxy S9 with a picture of our face, so if you lose your phone you can feel secure in the knowledge that the thief isn&#39;t getting in, which is what most of us really want.</p>\r\n\r\n<p>Second, and more frustratingly, you can&rsquo;t really unlock the phone when it&rsquo;s placed on a table &ndash; the field of vision for the scanner is limited, so unless you weirdly shove your head over it you won&rsquo;t get in, whereas Apple&rsquo;s Face ID offers a much wider viewing angle.</p>\r\n\r\n<h2>New speakers</h2>\r\n\r\n<ul>\r\n	<li><strong>AKG tuned sound is loud</strong></li>\r\n	<li><strong>A tiny bit lacking in punch, but a big upgrade on the S8</strong></li>\r\n</ul>\r\n\r\n<p>The other key feature that Samsung is talking up on the Galaxy S9 is the improved speaker setup. If you&#39;re tired of hearing sound shoot out the bottom of your phone, you&#39;ll appreciate that the top earpiece is now able to fire out sound towards your face.&nbsp;</p>\r\n\r\n<p>These speakers have also been tuned to support Dolby Atmos sound, giving you a sense of space from the audio coming out from your phone.</p>\r\n\r\n<p>Given how thin this phone is, the overall volume and quality of sound coming out of it is impressive. If anything the volume can go a little too high, and we found ourselves turning it down on occasion, despite only watching videos on social media.</p>\r\n\r\n<p>The quality isn&#39;t the <em>best</em> on the market &ndash; there&#39;s definitely a little more punch and clarity from the iPhone X, where the Galaxy S9 is a little bit muddier &ndash; but the idea here isn&#39;t to replace a Bluetooth speaker, but rather provide a decent experience when listening to music or podcasts without earphones.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Our Verdict</h2>\r\n\r\n<p>The Samsung Galaxy S9 is a great phone, but one that hasn&#39;t really kicked on from the Galaxy S8, bringing a very similar design and screen to 2017&#39;s version. The improved biometrics were sorely needed, and the camera is a leap forward, but the amazing low light capabilities have resulted in sacrifices elsewhere. A top, top phone, but the S9 Plus outshines it.</p>\r\n\r\n<h2>For</h2>\r\n\r\n<ul>\r\n	<li>Swift biometric security</li>\r\n	<li>Awesome low-light performance</li>\r\n	<li>The most powerful Android phone out there</li>\r\n</ul>\r\n\r\n<h2>Against</h2>\r\n\r\n<ul>\r\n	<li>Design is identical to S8</li>\r\n	<li>Some camera snaps lack vibrancy</li>\r\n	<li>Expensive</li>\r\n</ul>\r\n\r\n<blockquote>\r\n<p>Review from techradar</p>\r\n</blockquote>\r\n', 'Samsung-Galaxy-S9-Plus1.png', '2018-05-11 14:56:55'),
(28, 5, 1, 'The best Smart TVs in the world 2018', 'The-best-Smart-TVs-in-the-world-2018', '<p>&quot;What&rsquo;s the the best Smart TV I can buy?&quot; It&rsquo;s a familiar question, especially if you&rsquo;re looking to replace your TV. A new flatscreen isn&rsquo;t exclusively about sharper pictures or better sound. The user experience is important too. &nbsp;</p>\r\n\r\n<p>These days, connected sets have become ubiquitous. An internet-connected smart platform is the norm, not a luxury; indeed it&rsquo;s central to how the set works.&nbsp;</p>\r\n\r\n<p>The good news here is that TV platforms on offer have matured dramatically over the past few years. &nbsp;TV makers no longer try and emulate the tablet experience on a bigger screen, although you will still see holdovers from that early smart phase on cheaper models - no, you really don&rsquo;t need Facebook and Twitter on your TV.</p>\r\n\r\n<p>Today, the best smart TV platforms actually&nbsp;<em>enhance</em>&nbsp;the viewing experience. They help you access streaming content services and curate your viewing. If you want viewing recommendations, your smart TV should provide them.&nbsp;</p>\r\n\r\n<p>Similarly, if you need to simplify streaming from your mobile device, or want to share images quickly and conveniently, your connected set should facilitate that too. And when so many of us have content elsewhere on our home network, be it video files, music or JPEGs, offering seamless access to that through DLNA should be a given.</p>\r\n\r\n<p>Most smart TVs give access to leading streaming services like Netflix, BBC iPlayer and YouTube (although some are inexplicably absent on some sets - we&rsquo;re looking at you Amazon Video). Beyond that, there can be a bewildering array of second (or third) tier streaming apps available to download from the resident portal. These might serve particular interests, such as the subscription-based UFC Fight Pass app, or offer VoD pay movies, such as Wuaki.tv.</p>\r\n\r\n<p>Today&rsquo;s Smart TV ecosystem is split between proprietary platforms tied to a specific manufacturer, like LG&rsquo;s webOS and Samsung&rsquo;s Smart Hub, or a generic alternative such as Android TV, as found on Sony and European Philips TVs.</p>\r\n\r\n<p>All are usable, functional and most of the time downright enjoyable to use. But while they may look similar on the surface, under the hood there are a plethora of differences between them.</p>\r\n\r\n<p>So, what&#39;s the best smart TV platform you can buy? We&#39;ve ranked the the world&#39;s major connected TV platforms, putting equal emphasis on ease of use, functionality, stability and content support.&nbsp;</p>\r\n\r\n<p>Plus, once you&#39;ve decided on a smart TV platform, we&#39;ve included our favorite TVs that use it &ndash; that way you&#39;ll have a good starting point when it comes time to finding the perfect TV for you.</p>\r\n\r\n<p>Just want to know to know the Best Smart TV on every platform? Here you go!</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.mos.cms.futurecdn.net/m5PnHgyTy2RxGUu2doZoYF-650-80.jpg\" style=\"height:315px; width:650px\" /></p>\r\n\r\n<p><strong>Best Smart TV with Samsung Smart Hub</strong></p>\r\n\r\n<p>The Samsung Q9FN is the best Smart Hub/SmartThings TV on the planet</p>\r\n\r\n<p><strong>Pros</strong></p>\r\n\r\n<ul>\r\n	<li>Spectacular HDR picture quality</li>\r\n	<li>Good smart system</li>\r\n	<li>Cutting-edge gaming features</li>\r\n</ul>\r\n\r\n<p><strong>Cons</strong></p>\r\n\r\n<ul>\r\n	<li>Limited viewing angles</li>\r\n</ul>\r\n\r\n<p>While the 65Q9FN&rsquo;s Smart TV system is &nbsp;based closely around the Eden platform Samsung has been busy refining for the past couple of years, expect a few tasty new morsels that add to the experience without taking anything away.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For starters there&rsquo;s now compatibility with Samsung&#39;s SmartThings&nbsp;platform, which provides an onscreen hub for monitoring and even controlling other smart devices (fridges, washing machines, lights etc) on your network.&nbsp;</p>\r\n\r\n<p>There&rsquo;s also much better integration of the TV listings and live broadcasting into the TV&rsquo;s content searching features: There are now hour-by-hour show recommendations, for instance, as well as TV shows getting much more prominence in the content browsing menus.</p>\r\n\r\n<p>Samsung has delivered enhanced interactivity with your smartphones and tablets too, as well as some seriously cool new gaming related features.&nbsp;</p>\r\n\r\n<p>Overall, a slick, easy to use and helpfully customizable interface belies the impressive sophistication and comprehensiveness of Samsung&rsquo;s latest smart TV engine. &nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>\r\n<p>Review By TechRadar</p>\r\n</blockquote>\r\n', 'smartTV.png', '2018-05-29 13:14:22');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `register_date`) VALUES
(1, 'Sander Pietercil', '3990', 'sander.pietercil@gmail.com', 'SanderP', '21232f297a57a5a743894a0e4a801fc3', '2018-04-17 14:17:01');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;