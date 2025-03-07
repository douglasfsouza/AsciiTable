using Android.App;
using Android.Content.PM;
using Android.Gms.Ads;
using Android.OS;
using Plugin.MauiMTAdmob;

namespace AsciiTable
{
    [Activity(Theme = "@style/Maui.SplashTheme", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize | ConfigChanges.Density)]
    public class MainActivity : MauiAppCompatActivity
    {
        override protected void OnCreate(Bundle bundle)
        {
            base.OnCreate(bundle);
            MobileAds.Initialize(this);
            string appId = "ca-app-pub-8236433593467251~5915286636";
            CrossMauiMTAdmob.Current.Init(this, appId);
        }
    }
}
