package crc64f98ae9be26790314;


public abstract class RewardedInterstitialAd
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Android.Gms.Ads.Hack.RewardedInterstitialAd, Plugin.MauiMtAdmob", RewardedInterstitialAd.class, __md_methods);
	}

	public RewardedInterstitialAd ()
	{
		super ();
		if (getClass () == RewardedInterstitialAd.class) {
			mono.android.TypeManager.Activate ("Android.Gms.Ads.Hack.RewardedInterstitialAd, Plugin.MauiMtAdmob", "", this, new java.lang.Object[] {  });
		}
	}

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
