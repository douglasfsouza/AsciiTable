package mono.com.google.android.gms.ads.formats;


public class OnAdManagerAdViewLoadedListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onAdManagerAdViewLoaded:(Lcom/google/android/gms/ads/admanager/AdManagerAdView;)V:GetOnAdManagerAdViewLoaded_Lcom_google_android_gms_ads_admanager_AdManagerAdView_Handler:Android.Gms.Ads.Formats.IOnAdManagerAdViewLoadedListenerInvoker, Xamarin.GooglePlayServices.Ads.Lite\n" +
			"";
		mono.android.Runtime.register ("Android.Gms.Ads.Formats.IOnAdManagerAdViewLoadedListenerImplementor, Xamarin.GooglePlayServices.Ads.Lite", OnAdManagerAdViewLoadedListenerImplementor.class, __md_methods);
	}

	public OnAdManagerAdViewLoadedListenerImplementor ()
	{
		super ();
		if (getClass () == OnAdManagerAdViewLoadedListenerImplementor.class) {
			mono.android.TypeManager.Activate ("Android.Gms.Ads.Formats.IOnAdManagerAdViewLoadedListenerImplementor, Xamarin.GooglePlayServices.Ads.Lite", "", this, new java.lang.Object[] {  });
		}
	}

	public void onAdManagerAdViewLoaded (com.google.android.gms.ads.admanager.AdManagerAdView p0)
	{
		n_onAdManagerAdViewLoaded (p0);
	}

	private native void n_onAdManagerAdViewLoaded (com.google.android.gms.ads.admanager.AdManagerAdView p0);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
