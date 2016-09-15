---
title:  Fetching entries from Google Scholar
helpCategories: ["Fetching entries from the web", "... using online bibliographic database"]
---

#  Fetching entries from Google Scholar

## Description of  Google Scholar
[Google Scholar](https://scholar.google.com/) is a freely accessible database that indexes the full text or metadata of scholarly literature across an array of publishing formats and disciplines. Google Scholar index includes most peer-reviewed online academic journals and books, conference papers, theses and dissertations, preprints, abstracts, technical reports, and other scholarly literature, including court opinions and patents ([Wikipedia](https://en.wikipedia.org/wiki/Google_Scholar)).

## Usage

To fetch entries from Google Scholar, choose **Search -&gt; Web search**, and the search interface will appear in the side pane. Select **Google Scholar** in the dropdown menu. To start a search, enter the words of your query, and press **Enter** or the **Fetch** button.

## Traffic limitations

Google scholar can block "automated" crawls which generate too much traffic in a short time. JabRef uses a two-step approach to avoid this: JabRef displays at first a preview of the first page of entries returned by the server for each search. You can then choose which entries to fetch. The results are then displayed in the [import inspection window](ImportInspectionDialog).
In case an error occurs, it is shown in a popup.

However, after too much crawls JabRef --- or more correct: your IP address --- could be blocked. 
To unblock your IP, do a Google scholar search in your browser. You will be asked to show that you are not a robot (a CAPTCHA challenge).

Thus, the Google Scholar fetcher is not the best way to obtain lots of entries at the same time. If you are using Mozilla Firefox, the JabRef Plugin "JabFox" might be an alternative to download the BibTeX data directly from the browser. You can find the PlugIn here: https://addons.mozilla.org/en-US/firefox/addon/jabfox/?src=external-jabrefSite
