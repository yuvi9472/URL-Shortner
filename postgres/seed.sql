INSERT INTO urls (shortcode, original_url, created_at, click_count)
VALUES
    -- Search & General
    ('google', 'https://www.google.com', NOW(), 0),
    ('bing', 'https://www.bing.com', NOW(), 0),
    ('duckduckgo', 'https://duckduckgo.com', NOW(), 0),
    ('yahoo', 'https://www.yahoo.com', NOW(), 0),
    ('wikipedia', 'https://www.wikipedia.org', NOW(), 0),

    -- Video & Streaming
    ('youtube', 'https://www.youtube.com', NOW(), 0),
    ('netflix', 'https://www.netflix.com', NOW(), 0),
    ('twitch', 'https://www.twitch.tv', NOW(), 0),
    ('primevideo', 'https://www.primevideo.com', NOW(), 0),
    ('spotify', 'https://open.spotify.com', NOW(), 0),
    ('soundcloud', 'https://soundcloud.com', NOW(), 0),
    ('crunchyroll', 'https://www.crunchyroll.com', NOW(), 0),

    -- Social Media
    ('reddit', 'https://www.reddit.com', NOW(), 0),
    ('instagram', 'https://www.instagram.com', NOW(), 0),
    ('facebook', 'https://www.facebook.com', NOW(), 0),
    ('x', 'https://x.com', NOW(), 0),
    ('threads', 'https://www.threads.net', NOW(), 0),
    ('tiktok', 'https://www.tiktok.com', NOW(), 0),
    ('linkedin', 'https://www.linkedin.com', NOW(), 0),
    ('discord', 'https://discord.com', NOW(), 0),
    ('telegram', 'https://telegram.org', NOW(), 0),

    -- Development
    ('github', 'https://github.com', NOW(), 0),
    ('gitlab', 'https://gitlab.com', NOW(), 0),
    ('stackoverflow', 'https://stackoverflow.com', NOW(), 0),
    ('npm', 'https://www.npmjs.com', NOW(), 0),
    ('pypi', 'https://pypi.org', NOW(), 0),
    ('maven', 'https://maven.apache.org', NOW(), 0),
    ('docker', 'https://www.docker.com', NOW(), 0),
    ('kubernetes', 'https://kubernetes.io', NOW(), 0),
    ('spring', 'https://spring.io', NOW(), 0),
    ('mdn', 'https://developer.mozilla.org', NOW(), 0),
    ('w3schools', 'https://www.w3schools.com', NOW(), 0),
    ('leetcode', 'https://leetcode.com', NOW(), 0),
    ('hackerrank', 'https://www.hackerrank.com', NOW(), 0),

    -- AI
    ('openai', 'https://openai.com', NOW(), 0),
    ('chatgpt', 'https://chatgpt.com', NOW(), 0),
    ('claude', 'https://claude.ai', NOW(), 0),
    ('gemini', 'https://gemini.google.com', NOW(), 0),
    ('huggingface', 'https://huggingface.co', NOW(), 0),
    ('ollama', 'https://ollama.com', NOW(), 0),
    ('perplexity', 'https://www.perplexity.ai', NOW(), 0),

    -- Microsoft / Google / Productivity
    ('gmail', 'https://mail.google.com', NOW(), 0),
    ('drive', 'https://drive.google.com', NOW(), 0),
    ('docs', 'https://docs.google.com', NOW(), 0),
    ('sheets', 'https://sheets.google.com', NOW(), 0),
    ('maps', 'https://maps.google.com', NOW(), 0),
    ('translate', 'https://translate.google.com', NOW(), 0),
    ('calendar', 'https://calendar.google.com', NOW(), 0),
    ('meet', 'https://meet.google.com', NOW(), 0),
    ('outlook', 'https://outlook.live.com', NOW(), 0),
    ('onedrive', 'https://onedrive.live.com', NOW(), 0),

    -- Shopping
    ('amazon', 'https://www.amazon.com', NOW(), 0),
    ('ebay', 'https://www.ebay.com', NOW(), 0),
    ('etsy', 'https://www.etsy.com', NOW(), 0),
    ('walmart', 'https://www.walmart.com', NOW(), 0),
    ('aliexpress', 'https://www.aliexpress.com', NOW(), 0),

    -- India
    ('amazonin', 'https://www.amazon.in', NOW(), 0),
    ('flipkart', 'https://www.flipkart.com', NOW(), 0),
    ('myntra', 'https://www.myntra.com', NOW(), 0),
    ('meesho', 'https://www.meesho.com', NOW(), 0),
    ('swiggy', 'https://www.swiggy.com', NOW(), 0),
    ('zomato', 'https://www.zomato.com', NOW(), 0),
    ('irctc', 'https://www.irctc.co.in', NOW(), 0),
    ('udemy', 'https://www.udemy.com', NOW(), 0),

    -- Education & Research
    ('coursera', 'https://www.coursera.org', NOW(), 0),
    ('edx', 'https://www.edx.org', NOW(), 0),
    ('khanacademy', 'https://www.khanacademy.org', NOW(), 0),
    ('arxiv', 'https://arxiv.org', NOW(), 0),
    ('scholar', 'https://scholar.google.com', NOW(), 0),
    ('researchgate', 'https://www.researchgate.net', NOW(), 0),
    ('mit', 'https://www.mit.edu', NOW(), 0),
    ('stanford', 'https://www.stanford.edu', NOW(), 0),

    -- News
    ('bbc', 'https://www.bbc.com', NOW(), 0),
    ('cnn', 'https://www.cnn.com', NOW(), 0),
    ('reuters', 'https://www.reuters.com', NOW(), 0),
    ('nytimes', 'https://www.nytimes.com', NOW(), 0),
    ('guardian', 'https://www.theguardian.com', NOW(), 0),
    ('techcrunch', 'https://techcrunch.com', NOW(), 0),

    -- Finance
    ('paypal', 'https://www.paypal.com', NOW(), 0),
    ('stripe', 'https://stripe.com', NOW(), 0),
    ('wise', 'https://wise.com', NOW(), 0),
    ('yahoo-finance', 'https://finance.yahoo.com', NOW(), 0),
    ('coinbase', 'https://www.coinbase.com', NOW(), 0),

    -- Travel
    ('booking', 'https://www.booking.com', NOW(), 0),
    ('airbnb', 'https://www.airbnb.com', NOW(), 0),
    ('tripadvisor', 'https://www.tripadvisor.com', NOW(), 0),
    ('makemytrip', 'https://www.makemytrip.com', NOW(), 0),

    -- Gaming
    ('steam', 'https://store.steampowered.com', NOW(), 0),
    ('epicgames', 'https://store.epicgames.com', NOW(), 0),
    ('gog', 'https://www.gog.com', NOW(), 0),
    ('playstation', 'https://www.playstation.com', NOW(), 0),
    ('xbox', 'https://www.xbox.com', NOW(), 0),
    ('nexusmods', 'https://www.nexusmods.com', NOW(), 0),

    -- Entertainment
    ('imdb', 'https://www.imdb.com', NOW(), 0),
    ('rottentomatoes', 'https://www.rottentomatoes.com', NOW(), 0),
    ('letterboxd', 'https://letterboxd.com', NOW(), 0),
    ('goodreads', 'https://www.goodreads.com', NOW(), 0),

    -- Useful Services
    ('canva', 'https://www.canva.com', NOW(), 0),
    ('notion', 'https://www.notion.so', NOW(), 0),
    ('figma', 'https://www.figma.com', NOW(), 0),
    ('dropbox', 'https://www.dropbox.com', NOW(), 0),
    ('mega', 'https://mega.io', NOW(), 0),
    ('archive', 'https://archive.org', NOW(), 0),

    -- Communication
    ('zoom', 'https://zoom.us', NOW(), 0),
    ('skype', 'https://www.skype.com', NOW(), 0),
    ('signal', 'https://signal.org', NOW(), 0),

    -- Music
    ('applemusic', 'https://music.apple.com', NOW(), 0),
    ('bandcamp', 'https://bandcamp.com', NOW(), 0),
    ('lastfm', 'https://www.last.fm', NOW(), 0),

    -- Miscellaneous
    ('patreon', 'https://www.patreon.com', NOW(), 0),
    ('producthunt', 'https://www.producthunt.com', NOW(), 0),
    ('ycombinator', 'https://www.ycombinator.com', NOW(), 0),
    ('weather', 'https://weather.com', NOW(), 0),
    ('speedtest', 'https://www.speedtest.net', NOW(), 0)

ON CONFLICT (shortcode) DO NOTHING;