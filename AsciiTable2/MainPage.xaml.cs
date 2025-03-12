using Android.Content;
using Android.Gms.Ads;
using Android.Service.Controls;
using Bumptech.Glide.Load.Model;
using CommunityToolkit.Maui.Alerts;
using CommunityToolkit.Maui.Core;
using Microsoft.Maui.Controls.Compatibility.Platform.Android;
using Plugin.MauiMTAdmob;
using Plugin.MauiMTAdmob.Controls;
using Plugin.MauiMTAdmob.Extra;
using static AndroidX.Room.FtsOptions;
using static Java.Util.Jar.Attributes;
using static System.Net.Mime.MediaTypeNames;
using Image = Microsoft.Maui.Controls.Image;

namespace AsciiTable
{
    public partial class MainPage : ContentPage
    {
        Entry txtCharEntry = CreateTxtCharEntry();        

        Entry txtAscEntry = CreateTxtAscEntry();

        
        public MainPage()
        {
            InitializeComponent();
            SizeChanged += OnSizeChanged;
            ToolbarItems.Clear();
            ToolbarItems.Add(new ToolbarItem()
            {
                Text = "Privacy Policy",
                Order = ToolbarItemOrder.Secondary,
                Command = new Command(() => OpenPrivacy("privacy").Wait())
            });
            ToolbarItems.Add(new ToolbarItem()
            {
                Text = "Terms of Use",
                Order = ToolbarItemOrder.Secondary,
                Command = new Command(() => OpenPrivacy("terms").Wait())
            });
            ToolbarItems.Add(new ToolbarItem()
            {
                Text = "Exit",
                Order = ToolbarItemOrder.Secondary,
                Command = new Command(() => App.Current.Quit())
            });
        }

        private void OnSizeChanged(object? sender, EventArgs e)
        {
            txtCharEntry = CreateTxtCharEntry();
            txtAscEntry = CreateTxtAscEntry();
            
            bool landscape = Width > Height;
            if (landscape)
            {
                Content = new Grid()
                {
                    Padding = 10,
                    RowSpacing = 10,
                    ColumnSpacing = 10,
                    RowDefinitions = new RowDefinitionCollection
                                    {
                                        new RowDefinition { Height = GridLength.Auto },
                                        new RowDefinition { Height = GridLength.Auto },
                                        new RowDefinition { Height = GridLength.Auto },
                                        new RowDefinition { Height = GridLength.Auto },
                                        new RowDefinition { Height = GridLength.Auto },
                                        new RowDefinition { Height = GridLength.Auto },
                                        new RowDefinition { Height = GridLength.Auto }
                                    },

                    ColumnDefinitions = new ColumnDefinitionCollection
                                    {
                                        new ColumnDefinition { Width = new GridLength(0.45, GridUnitType.Star) },
                                        new ColumnDefinition { Width = new GridLength(0.45, GridUnitType.Star) }
                                    },
                    MaximumWidthRequest = 650
                };

                var lblChar = new Label
                {
                    Text = "Character",
                    FontSize = 20,
                    FontAttributes = FontAttributes.Bold,
                    HorizontalOptions = LayoutOptions.Center,
                    VerticalOptions = LayoutOptions.Center
                };
                ((Grid)Content).Children.Add(lblChar);

                var lblDec = new Label
                {
                    Text = "Decimal",
                    FontSize = 20,
                    FontAttributes = FontAttributes.Bold,
                    HorizontalOptions = LayoutOptions.Center,
                    VerticalOptions = LayoutOptions.Center
                };
                ((Grid)Content).Children.Add(lblDec);
                Grid.SetColumn(lblDec, 2);

                ((Grid)Content).Children.Add(txtCharEntry);
                Grid.SetRow(txtCharEntry, 1);

                ((Grid)Content).Children.Add(txtAscEntry);
                Grid.SetRow(txtAscEntry, 1);
                Grid.SetColumn(txtAscEntry, 2);

                var btnConvertToAsc = new Button
                {
                    Text = "Convert to Decimal",
                    FontSize = 13,
                    HeightRequest = 50
                };
                btnConvertToAsc.Clicked += btnConvertToAsc_Clicked;

                ((Grid)Content).Children.Add(btnConvertToAsc);
                Grid.SetRow(btnConvertToAsc, 2);

                var btnConvertToChar = new Button
                {
                    Text = "Convert to Character",
                    FontSize = 13,
                    HeightRequest = 50
                };

                btnConvertToChar.Clicked += btnConvertToChar_Clicked;                
                Grid.SetRow(btnConvertToChar, 2);
                Grid.SetColumn(btnConvertToChar, 2);
                ((Grid)Content).Children.Add(btnConvertToChar);

                var adView = new MTAdView()
                {
                    AdsId = "ca-app-pub-8236433593467251/9930623074",
                    AdSize =BannerSize.FullBanner,
                    HorizontalOptions = LayoutOptions.FillAndExpand,
                    VerticalOptions = LayoutOptions.FillAndExpand,
                    HeightRequest = 50,
                    IsVisible = true,
                    IsEnabled = true,
                    Margin = 5
                };
                ((Grid)Content).Children.Add(adView);
                Grid.SetRow(adView, 3);
                Grid.SetColumnSpan(adView, 2);

            }
            else
            {
                Content = new Grid()
                {
                    Padding = 10,
                    RowSpacing = 10,
                    ColumnSpacing = 10,
                    RowDefinitions = new RowDefinitionCollection
                                    {
                                        new RowDefinition { Height = GridLength.Auto },
                                        new RowDefinition { Height = GridLength.Auto },
                                        new RowDefinition { Height = GridLength.Auto },
                                        new RowDefinition { Height = GridLength.Auto },
                                        new RowDefinition { Height = GridLength.Auto },
                                        new RowDefinition { Height = GridLength.Auto },
                                        new RowDefinition { Height = GridLength.Auto }
                                    },

                    ColumnDefinitions = new ColumnDefinitionCollection
                                    {
                                        new ColumnDefinition { Width = new GridLength(0.45, GridUnitType.Star) },
                                        new ColumnDefinition { Width = new GridLength(0.45, GridUnitType.Star) }
                                    },
                    MaximumWidthRequest = 750
                };

                var lblChar = new Label
                {
                    Text = "Character",
                    FontSize = 20,
                    FontAttributes = FontAttributes.Bold,
                    HorizontalOptions = LayoutOptions.Center,
                    VerticalOptions = LayoutOptions.Center
                };
                ((Grid)Content).Children.Add(lblChar);

                var lblDec = new Label
                {
                    Text = "Decimal",
                    FontSize = 20,
                    FontAttributes = FontAttributes.Bold,
                    HorizontalOptions = LayoutOptions.Center,
                    VerticalOptions = LayoutOptions.Center
                };
                ((Grid)Content).Children.Add(lblDec);
                Grid.SetColumn(lblDec, 2);

                ((Grid)Content).Children.Add(txtCharEntry);
                Grid.SetRow(txtCharEntry, 1);

                ((Grid)Content).Children.Add(txtAscEntry);
                Grid.SetRow(txtAscEntry, 1);
                Grid.SetColumn(txtAscEntry, 2);

                var btnConvertToAsc = new Button
                {
                    Text = "Convert to Decimal",
                    FontSize = 13,
                    HeightRequest = 50
                };
                btnConvertToAsc.Clicked += btnConvertToAsc_Clicked;

                ((Grid)Content).Children.Add(btnConvertToAsc);
                Grid.SetRow(btnConvertToAsc, 2);

                var btnConvertToChar = new Button
                {
                    Text = "Convert to Character",
                    FontSize = 13,
                    HeightRequest = 50
                };

                btnConvertToChar.Clicked += btnConvertToChar_Clicked;
                Grid.SetRow(btnConvertToChar, 2);
                Grid.SetColumn(btnConvertToChar, 2);
                ((Grid)Content).Children.Add(btnConvertToChar);
                
                var img = new Image
                {
                    Source = "ascii_table.png"                    
                };
                ((Grid)Content).Children.Add(img);
                Grid.SetRow(img, 3);
                Grid.SetColumnSpan(img, 2);


                var adView = new MTAdView()
                {
                    AdsId = "ca-app-pub-8236433593467251/9930623074",
                    AdSize = BannerSize.FullBanner,
                    HorizontalOptions = LayoutOptions.FillAndExpand,
                    VerticalOptions = LayoutOptions.FillAndExpand,
                    HeightRequest = 50,
                    IsVisible = true,
                    IsEnabled = true,
                    Margin = 5,
                    WidthRequest = 400
                };
                ((Grid)Content).Children.Add(adView);
                Grid.SetRow(adView, 4);
                Grid.SetColumnSpan(adView, 2);

            }
        }

        private void btnConvertToAsc_Clicked(object sender, EventArgs e)
        {
            if (txtCharEntry.Text != null)
            {
                CrossMauiMTAdmob.Current.LoadInterstitial("ca-app-pub-8236433593467251/4891162775");
                CrossMauiMTAdmob.Current.ShowInterstitial();
                if (!String.IsNullOrEmpty(txtCharEntry.Text.ToString().Trim()))
                {
                    string letra = txtCharEntry.Text;
                    int a = (int)letra[0];
                    txtAscEntry.Text = a.ToString();
                }
            }            
        }

        private void btnConvertToChar_Clicked(object sender, EventArgs e)
        {
            if (txtAscEntry.Text != null)
            {
                if (!String.IsNullOrEmpty(txtAscEntry.Text.ToString().Trim()))
                {
                    int ascii = 0;
                    ToastDuration duration = ToastDuration.Short;
                    double fontSize = 14;
                    var toast = Toast.Make("Invalid value!!", duration, fontSize);
                    CancellationTokenSource cancellationTokenSource = new CancellationTokenSource();
                    try
                    {
                        ascii = Convert.ToInt32(txtAscEntry.Text.ToString().Trim());
                    }
                    catch (Exception)
                    {
                        toast.Show(cancellationTokenSource.Token);
                    }
                    if (ascii != 0)
                    {
                        if (ascii > 0 && ascii < 256)
                        {
                            txtCharEntry.Text = Convert.ToString((char)ascii);
                        }
                        else
                        {
                            toast.Show(cancellationTokenSource.Token);
                        }
                    }
                }
            }                        
        }

        private void ToolbarItem_Clicked(object sender, EventArgs e)
        {
            this.OpenPrivacy("privacy").Wait();
        }

        private async Task OpenPrivacy(string section)
        {
            try
            {
                Uri uri = new Uri($"https://electrasystems.netlify.app/policy#{section}");
                await Browser.Default.OpenAsync(uri, BrowserLaunchMode.External);
            }
            catch (Exception ex)
            {
                await DisplayAlert("Privacy", ex.Message, "Ok");
            }
        }

        private void ToolbarItem_Clicked_1(object sender, EventArgs e)
        {
            this.OpenPrivacy("terms").Wait();
        }

        private void tbExit_Clicked(object sender, EventArgs e)
        {
            App.Current.Quit();
        }

        private static Entry CreateTxtCharEntry()
        {
            return new Entry
            {
                Placeholder = "Enter a character",
                MaxLength = 1,
                FontSize = 15,
                HorizontalTextAlignment = TextAlignment.Center,
                PlaceholderColor = Color.FromHex("#8A2BE2"),
                HeightRequest = 50,
                BackgroundColor = Color.FromHex("#F0F8FF"),
                FontAttributes = FontAttributes.Bold,
                HorizontalOptions = LayoutOptions.FillAndExpand,
                VerticalOptions = LayoutOptions.Center
            };
        }

        private static Entry CreateTxtAscEntry()
        {
            return new Entry
            {
                Placeholder = "Or enter a decimal",
                MaxLength = 3,
                FontSize = 15,
                HorizontalTextAlignment = TextAlignment.Center,
                PlaceholderColor = Color.FromHex("#8A2BE2"),
                HeightRequest = 50,
                BackgroundColor = Color.FromHex("#F0F8FF"),
                FontAttributes = FontAttributes.Bold,
                HorizontalOptions = LayoutOptions.FillAndExpand,
                VerticalOptions = LayoutOptions.Center
            };
        }
    }

}
