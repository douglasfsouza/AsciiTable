package mono.com.google.android.gms.ads.admanager;


public class AppEventListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.google.android.gms.ads.admanager.AppEventListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onAppEvent:(Ljava/lang/String;Ljava/lang/String;)V:GetOnAppEvent_Ljava_lang_String_Ljava_lang_String_Handler:Android.Gms.Ads.AdManager.IAppEventListenerInvoker, Xamarin.GooglePlayServices.Ads.Lite\n" +
			"";
		mono.android.Runtime.register ("Android.Gms.Ads.AdManager.IAppEventListenerImplementor, Xamarin.GooglePlayServices.Ads.Lite", AppEventListenerImplementor.class, __md_methods);
	}

	public AppEventListenerImplementor ()
	{
		super ();
		if (getClass () == AppEventListenerImplementor.class) {
			mono.android.TypeManager.Activate ("Android.Gms.Ads.AdManager.IAppEventListenerImplementor, Xamarin.GooglePlayServices.Ads.Lite", "", this, new java.lang.Object[] {  });
		}
	}

	public void onAppEvent (java.lang.String p0, java.lang.String p1)
	{
		n_onAppEvent (p0, p1);
	}

	private native void n_onAppEvent (java.lang.String p0, java.lang.String p1);

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
