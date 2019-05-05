using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Net;
using System.IO;
using System.Web.UI.WebControls;
using Bazam.Twitter;
using Newtonsoft.Json.Linq;

namespace SearchMyTweet
{
   public partial class _Default : Page
   {
      protected void Page_Load(object sender, EventArgs e)
      {
         
      }

      protected async void btnsearch_Click(object sender, EventArgs e)
      {
         TwitterGitter tweet = new TwitterGitter("j9feE1p0u6MtDzwjVBYwKbLop", "Q6cbX88jaWSxJgahEOYg42IVIrFFYXbEtVdFOsFo1Txg7dYMfU");

         string x = await tweet.Search(txtSearch.Text);
         JToken parsedJson = JToken.Parse(x);         
         txtResult.InnerHtml = "<pre>" + parsedJson.ToString(Newtonsoft.Json.Formatting.Indented) + "</pre>";

      }
   }
}