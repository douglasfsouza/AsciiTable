; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [129 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [387 x i64] [
	i64 u0x0071cf2d27b7d61e, ; 0: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 75
	i64 u0x02123411c4e01926, ; 1: lib_Xamarin.AndroidX.Navigation.Runtime.dll.so => 71
	i64 u0x022e81ea9c46e03a, ; 2: lib_CommunityToolkit.Maui.Core.dll.so => 36
	i64 u0x02abedc11addc1ed, ; 3: lib_Mono.Android.Runtime.dll.so => 127
	i64 u0x03113da505cf490a, ; 4: Xamarin.Google.UserMessagingPlatform.dll => 79
	i64 u0x032267b2a94db371, ; 5: lib_Xamarin.AndroidX.AppCompat.dll.so => 53
	i64 u0x043032f1d071fae0, ; 6: ru/Microsoft.Maui.Controls.resources => 24
	i64 u0x044440a55165631e, ; 7: lib-cs-Microsoft.Maui.Controls.resources.dll.so => 2
	i64 u0x046eb1581a80c6b0, ; 8: vi/Microsoft.Maui.Controls.resources => 30
	i64 u0x0517ef04e06e9f76, ; 9: System.Net.Primitives => 106
	i64 u0x0565d18c6da3de38, ; 10: Xamarin.AndroidX.RecyclerView => 73
	i64 u0x0581db89237110e9, ; 11: lib_System.Collections.dll.so => 90
	i64 u0x05989cb940b225a9, ; 12: Microsoft.Maui.dll => 48
	i64 u0x06076b5d2b581f08, ; 13: zh-HK/Microsoft.Maui.Controls.resources => 31
	i64 u0x0680a433c781bb3d, ; 14: Xamarin.AndroidX.Collection.Jvm => 57
	i64 u0x07c57877c7ba78ad, ; 15: ru/Microsoft.Maui.Controls.resources.dll => 24
	i64 u0x07dcdc7460a0c5e4, ; 16: System.Collections.NonGeneric => 88
	i64 u0x08f3c9788ee2153c, ; 17: Xamarin.AndroidX.DrawerLayout => 62
	i64 u0x0919c28b89381a0b, ; 18: lib_Microsoft.Extensions.Options.dll.so => 43
	i64 u0x092266563089ae3e, ; 19: lib_System.Collections.NonGeneric.dll.so => 88
	i64 u0x098b50f911ccea8d, ; 20: lib_Xamarin.GooglePlayServices.Basement.dll.so => 81
	i64 u0x09d144a7e214d457, ; 21: System.Security.Cryptography => 116
	i64 u0x0b3b632c3bbee20c, ; 22: sk/Microsoft.Maui.Controls.resources => 25
	i64 u0x0b6aff547b84fbe9, ; 23: Xamarin.KotlinX.Serialization.Core.Jvm => 84
	i64 u0x0be2e1f8ce4064ed, ; 24: Xamarin.AndroidX.ViewPager => 76
	i64 u0x0c3ca6cc978e2aae, ; 25: pt-BR/Microsoft.Maui.Controls.resources => 21
	i64 u0x0c59ad9fbbd43abe, ; 26: Mono.Android => 128
	i64 u0x0c7790f60165fc06, ; 27: lib_Microsoft.Maui.Essentials.dll.so => 49
	i64 u0x0c83c82812e96127, ; 28: lib_System.Net.Mail.dll.so => 105
	i64 u0x102a31b45304b1da, ; 29: Xamarin.AndroidX.CustomView => 61
	i64 u0x1098799b133ea514, ; 30: lib_Xamarin.Google.UserMessagingPlatform.dll.so => 79
	i64 u0x10f6cfcbcf801616, ; 31: System.IO.Compression.Brotli => 98
	i64 u0x11a603952763e1d4, ; 32: System.Net.Mail => 105
	i64 u0x125b7f94acb989db, ; 33: Xamarin.AndroidX.RecyclerView.dll => 73
	i64 u0x138567fa954faa55, ; 34: Xamarin.AndroidX.Browser => 55
	i64 u0x13a01de0cbc3f06c, ; 35: lib-fr-Microsoft.Maui.Controls.resources.dll.so => 8
	i64 u0x13f1e5e209e91af4, ; 36: lib_Java.Interop.dll.so => 126
	i64 u0x13f1e880c25d96d1, ; 37: he/Microsoft.Maui.Controls.resources => 9
	i64 u0x143d8ea60a6a4011, ; 38: Microsoft.Extensions.DependencyInjection.Abstractions => 40
	i64 u0x17b56e25558a5d36, ; 39: lib-hu-Microsoft.Maui.Controls.resources.dll.so => 12
	i64 u0x17f9358913beb16a, ; 40: System.Text.Encodings.Web => 117
	i64 u0x18402a709e357f3b, ; 41: lib_Xamarin.KotlinX.Serialization.Core.Jvm.dll.so => 84
	i64 u0x18f0ce884e87d89a, ; 42: nb/Microsoft.Maui.Controls.resources.dll => 18
	i64 u0x1a91866a319e9259, ; 43: lib_System.Collections.Concurrent.dll.so => 86
	i64 u0x1aac34d1917ba5d3, ; 44: lib_System.dll.so => 124
	i64 u0x1aad60783ffa3e5b, ; 45: lib-th-Microsoft.Maui.Controls.resources.dll.so => 27
	i64 u0x1c753b5ff15bce1b, ; 46: Mono.Android.Runtime.dll => 127
	i64 u0x1d4c109ca6e27ed8, ; 47: lib_Microsoft.Maui.Controls.Compatibility.dll.so => 45
	i64 u0x1e3d87657e9659bc, ; 48: Xamarin.AndroidX.Navigation.UI => 72
	i64 u0x1e71143913d56c10, ; 49: lib-ko-Microsoft.Maui.Controls.resources.dll.so => 16
	i64 u0x1ed8fcce5e9b50a0, ; 50: Microsoft.Extensions.Options.dll => 43
	i64 u0x209375905fcc1bad, ; 51: lib_System.IO.Compression.Brotli.dll.so => 98
	i64 u0x2174319c0d835bc9, ; 52: System.Runtime => 115
	i64 u0x220fd4f2e7c48170, ; 53: th/Microsoft.Maui.Controls.resources => 27
	i64 u0x2347c268e3e4e536, ; 54: Xamarin.GooglePlayServices.Basement.dll => 81
	i64 u0x237be844f1f812c7, ; 55: System.Threading.Thread.dll => 120
	i64 u0x2407aef2bbe8fadf, ; 56: System.Console => 94
	i64 u0x240abe014b27e7d3, ; 57: Xamarin.AndroidX.Core.dll => 59
	i64 u0x252073cc3caa62c2, ; 58: fr/Microsoft.Maui.Controls.resources.dll => 8
	i64 u0x2662c629b96b0b30, ; 59: lib_Xamarin.Kotlin.StdLib.dll.so => 82
	i64 u0x268c1439f13bcc29, ; 60: lib_Microsoft.Extensions.Primitives.dll.so => 44
	i64 u0x273f3515de5faf0d, ; 61: id/Microsoft.Maui.Controls.resources.dll => 13
	i64 u0x2742545f9094896d, ; 62: hr/Microsoft.Maui.Controls.resources => 11
	i64 u0x27b410442fad6cf1, ; 63: Java.Interop.dll => 126
	i64 u0x2801845a2c71fbfb, ; 64: System.Net.Primitives.dll => 106
	i64 u0x2a128783efe70ba0, ; 65: uk/Microsoft.Maui.Controls.resources.dll => 29
	i64 u0x2a6507a5ffabdf28, ; 66: System.Diagnostics.TraceSource.dll => 96
	i64 u0x2ad156c8e1354139, ; 67: fi/Microsoft.Maui.Controls.resources => 7
	i64 u0x2af298f63581d886, ; 68: System.Text.RegularExpressions.dll => 119
	i64 u0x2afc1c4f898552ee, ; 69: lib_System.Formats.Asn1.dll.so => 97
	i64 u0x2b148910ed40fbf9, ; 70: zh-Hant/Microsoft.Maui.Controls.resources.dll => 33
	i64 u0x2c8bd14bb93a7d82, ; 71: lib-pl-Microsoft.Maui.Controls.resources.dll.so => 20
	i64 u0x2d169d318a968379, ; 72: System.Threading.dll => 121
	i64 u0x2d47774b7d993f59, ; 73: sv/Microsoft.Maui.Controls.resources.dll => 26
	i64 u0x2d7425ff4d3309b0, ; 74: Xamarin.GooglePlayServices.Ads.Lite => 80
	i64 u0x2db915caf23548d2, ; 75: System.Text.Json.dll => 118
	i64 u0x2e6f1f226821322a, ; 76: el/Microsoft.Maui.Controls.resources.dll => 5
	i64 u0x2f2e98e1c89b1aff, ; 77: System.Xml.ReaderWriter => 123
	i64 u0x309ee9eeec09a71e, ; 78: lib_Xamarin.AndroidX.Fragment.dll.so => 63
	i64 u0x31195fef5d8fb552, ; 79: _Microsoft.Android.Resource.Designer.dll => 34
	i64 u0x32243413e774362a, ; 80: Xamarin.AndroidX.CardView.dll => 56
	i64 u0x329753a17a517811, ; 81: fr/Microsoft.Maui.Controls.resources => 8
	i64 u0x32aa989ff07a84ff, ; 82: lib_System.Xml.ReaderWriter.dll.so => 123
	i64 u0x33829542f112d59b, ; 83: System.Collections.Immutable => 87
	i64 u0x33a31443733849fe, ; 84: lib-es-Microsoft.Maui.Controls.resources.dll.so => 6
	i64 u0x34dfd74fe2afcf37, ; 85: Microsoft.Maui => 48
	i64 u0x34e292762d9615df, ; 86: cs/Microsoft.Maui.Controls.resources.dll => 2
	i64 u0x3508234247f48404, ; 87: Microsoft.Maui.Controls => 46
	i64 u0x3549870798b4cd30, ; 88: lib_Xamarin.AndroidX.ViewPager2.dll.so => 77
	i64 u0x355282fc1c909694, ; 89: Microsoft.Extensions.Configuration => 37
	i64 u0x380134e03b1e160a, ; 90: System.Collections.Immutable.dll => 87
	i64 u0x385c17636bb6fe6e, ; 91: Xamarin.AndroidX.CustomView.dll => 61
	i64 u0x393c226616977fdb, ; 92: lib_Xamarin.AndroidX.ViewPager.dll.so => 76
	i64 u0x395e37c3334cf82a, ; 93: lib-ca-Microsoft.Maui.Controls.resources.dll.so => 1
	i64 u0x3c7c495f58ac5ee9, ; 94: Xamarin.Kotlin.StdLib => 82
	i64 u0x3cd9d281d402eb9b, ; 95: Xamarin.AndroidX.Browser.dll => 55
	i64 u0x3d9c2a242b040a50, ; 96: lib_Xamarin.AndroidX.Core.dll.so => 59
	i64 u0x407a10bb4bf95829, ; 97: lib_Xamarin.AndroidX.Navigation.Common.dll.so => 69
	i64 u0x41cab042be111c34, ; 98: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 54
	i64 u0x4330e07da656303f, ; 99: lib_Xamarin.GooglePlayServices.Ads.Lite.dll.so => 80
	i64 u0x434c4e1d9284cdae, ; 100: Mono.Android.dll => 128
	i64 u0x43950f84de7cc79a, ; 101: pl/Microsoft.Maui.Controls.resources.dll => 20
	i64 u0x4515080865a951a5, ; 102: Xamarin.Kotlin.StdLib.dll => 82
	i64 u0x45c40276a42e283e, ; 103: System.Diagnostics.TraceSource => 96
	i64 u0x46a4213bc97fe5ae, ; 104: lib-ru-Microsoft.Maui.Controls.resources.dll.so => 24
	i64 u0x47daf4e1afbada10, ; 105: pt/Microsoft.Maui.Controls.resources => 22
	i64 u0x49e952f19a4e2022, ; 106: System.ObjectModel => 109
	i64 u0x4a5667b2462a664b, ; 107: lib_Xamarin.AndroidX.Navigation.UI.dll.so => 72
	i64 u0x4b7b6532ded934b7, ; 108: System.Text.Json => 118
	i64 u0x4cc5f15266470798, ; 109: lib_Xamarin.AndroidX.Loader.dll.so => 68
	i64 u0x4d479f968a05e504, ; 110: System.Linq.Expressions.dll => 101
	i64 u0x4d55a010ffc4faff, ; 111: System.Private.Xml => 111
	i64 u0x4d95fccc1f67c7ca, ; 112: System.Runtime.Loader.dll => 113
	i64 u0x4da4a8f0f6a70fdc, ; 113: Microsoft.Maui.Controls.Compatibility.dll => 45
	i64 u0x4dcf44c3c9b076a2, ; 114: it/Microsoft.Maui.Controls.resources.dll => 14
	i64 u0x4dd9247f1d2c3235, ; 115: Xamarin.AndroidX.Loader.dll => 68
	i64 u0x4e32f00cb0937401, ; 116: Mono.Android.Runtime => 127
	i64 u0x4f21ee6ef9eb527e, ; 117: ca/Microsoft.Maui.Controls.resources => 1
	i64 u0x5037f0be3c28c7a3, ; 118: lib_Microsoft.Maui.Controls.dll.so => 46
	i64 u0x5131bbe80989093f, ; 119: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 66
	i64 u0x526ce79eb8e90527, ; 120: lib_System.Net.Primitives.dll.so => 106
	i64 u0x529ffe06f39ab8db, ; 121: Xamarin.AndroidX.Core => 59
	i64 u0x52ff996554dbf352, ; 122: Microsoft.Maui.Graphics => 50
	i64 u0x535f7e40e8fef8af, ; 123: lib-sk-Microsoft.Maui.Controls.resources.dll.so => 25
	i64 u0x53c3014b9437e684, ; 124: lib-zh-HK-Microsoft.Maui.Controls.resources.dll.so => 31
	i64 u0x54795225dd1587af, ; 125: lib_System.Runtime.dll.so => 115
	i64 u0x556e8b63b660ab8b, ; 126: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 64
	i64 u0x5588627c9a108ec9, ; 127: System.Collections.Specialized => 89
	i64 u0x571c5cfbec5ae8e2, ; 128: System.Private.Uri => 110
	i64 u0x579a06fed6eec900, ; 129: System.Private.CoreLib.dll => 125
	i64 u0x57c542c14049b66d, ; 130: System.Diagnostics.DiagnosticSource => 95
	i64 u0x58601b2dda4a27b9, ; 131: lib-ja-Microsoft.Maui.Controls.resources.dll.so => 15
	i64 u0x58688d9af496b168, ; 132: Microsoft.Extensions.DependencyInjection.dll => 39
	i64 u0x5a89a886ae30258d, ; 133: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 58
	i64 u0x5a8f6699f4a1caa9, ; 134: lib_System.Threading.dll.so => 121
	i64 u0x5ae9cd33b15841bf, ; 135: System.ComponentModel => 93
	i64 u0x5b5f0e240a06a2a2, ; 136: da/Microsoft.Maui.Controls.resources.dll => 3
	i64 u0x5c393624b8176517, ; 137: lib_Microsoft.Extensions.Logging.dll.so => 41
	i64 u0x5db0cbbd1028510e, ; 138: lib_System.Runtime.InteropServices.dll.so => 112
	i64 u0x5db30905d3e5013b, ; 139: Xamarin.AndroidX.Collection.Jvm.dll => 57
	i64 u0x5db83d222b54d3cb, ; 140: lib_AsciiTable.dll.so => 85
	i64 u0x5e467bc8f09ad026, ; 141: System.Collections.Specialized.dll => 89
	i64 u0x5ea92fdb19ec8c4c, ; 142: System.Text.Encodings.Web.dll => 117
	i64 u0x5eb8046dd40e9ac3, ; 143: System.ComponentModel.Primitives => 91
	i64 u0x5f36ccf5c6a57e24, ; 144: System.Xml.ReaderWriter.dll => 123
	i64 u0x5f9a2d823f664957, ; 145: lib-el-Microsoft.Maui.Controls.resources.dll.so => 5
	i64 u0x609f4b7b63d802d4, ; 146: lib_Microsoft.Extensions.DependencyInjection.dll.so => 39
	i64 u0x60cd4e33d7e60134, ; 147: Xamarin.KotlinX.Coroutines.Core.Jvm => 83
	i64 u0x60f62d786afcf130, ; 148: System.Memory => 103
	i64 u0x61be8d1299194243, ; 149: Microsoft.Maui.Controls.Xaml => 47
	i64 u0x61d2cba29557038f, ; 150: de/Microsoft.Maui.Controls.resources => 4
	i64 u0x61d88f399afb2f45, ; 151: lib_System.Runtime.Loader.dll.so => 113
	i64 u0x622eef6f9e59068d, ; 152: System.Private.CoreLib => 125
	i64 u0x62322c1f77812c8e, ; 153: lib_Plugin.MauiMtAdmob.dll.so => 51
	i64 u0x63f1f6883c1e23c2, ; 154: lib_System.Collections.Immutable.dll.so => 87
	i64 u0x6400f68068c1e9f1, ; 155: Xamarin.Google.Android.Material.dll => 78
	i64 u0x658f524e4aba7dad, ; 156: CommunityToolkit.Maui.dll => 35
	i64 u0x65ecac39144dd3cc, ; 157: Microsoft.Maui.Controls.dll => 46
	i64 u0x65ece51227bfa724, ; 158: lib_System.Runtime.Numerics.dll.so => 114
	i64 u0x6692e924eade1b29, ; 159: lib_System.Console.dll.so => 94
	i64 u0x66a4e5c6a3fb0bae, ; 160: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so => 66
	i64 u0x66d13304ce1a3efa, ; 161: Xamarin.AndroidX.CursorAdapter => 60
	i64 u0x68558ec653afa616, ; 162: lib-da-Microsoft.Maui.Controls.resources.dll.so => 3
	i64 u0x68fbbbe2eb455198, ; 163: System.Formats.Asn1 => 97
	i64 u0x69063fc0ba8e6bdd, ; 164: he/Microsoft.Maui.Controls.resources.dll => 9
	i64 u0x6a4d7577b2317255, ; 165: System.Runtime.InteropServices.dll => 112
	i64 u0x6ace3b74b15ee4a4, ; 166: nb/Microsoft.Maui.Controls.resources => 18
	i64 u0x6d12bfaa99c72b1f, ; 167: lib_Microsoft.Maui.Graphics.dll.so => 50
	i64 u0x6d79993361e10ef2, ; 168: Microsoft.Extensions.Primitives => 44
	i64 u0x6d86d56b84c8eb71, ; 169: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 60
	i64 u0x6d9bea6b3e895cf7, ; 170: Microsoft.Extensions.Primitives.dll => 44
	i64 u0x6e25a02c3833319a, ; 171: lib_Xamarin.AndroidX.Navigation.Fragment.dll.so => 70
	i64 u0x6fd2265da78b93a4, ; 172: lib_Microsoft.Maui.dll.so => 48
	i64 u0x6fdfc7de82c33008, ; 173: cs/Microsoft.Maui.Controls.resources => 2
	i64 u0x70e99f48c05cb921, ; 174: tr/Microsoft.Maui.Controls.resources.dll => 28
	i64 u0x70fd3deda22442d2, ; 175: lib-nb-Microsoft.Maui.Controls.resources.dll.so => 18
	i64 u0x71a495ea3761dde8, ; 176: lib-it-Microsoft.Maui.Controls.resources.dll.so => 14
	i64 u0x71ad672adbe48f35, ; 177: System.ComponentModel.Primitives.dll => 91
	i64 u0x72b1fb4109e08d7b, ; 178: lib-hr-Microsoft.Maui.Controls.resources.dll.so => 11
	i64 u0x73e4ce94e2eb6ffc, ; 179: lib_System.Memory.dll.so => 103
	i64 u0x755a91767330b3d4, ; 180: lib_Microsoft.Extensions.Configuration.dll.so => 37
	i64 u0x76012e7334db86e5, ; 181: lib_Xamarin.AndroidX.SavedState.dll.so => 74
	i64 u0x76ca07b878f44da0, ; 182: System.Runtime.Numerics.dll => 114
	i64 u0x780bc73597a503a9, ; 183: lib-ms-Microsoft.Maui.Controls.resources.dll.so => 17
	i64 u0x783606d1e53e7a1a, ; 184: th/Microsoft.Maui.Controls.resources.dll => 27
	i64 u0x78a45e51311409b6, ; 185: Xamarin.AndroidX.Fragment.dll => 63
	i64 u0x7adb8da2ac89b647, ; 186: fi/Microsoft.Maui.Controls.resources.dll => 7
	i64 u0x7bef86a4335c4870, ; 187: System.ComponentModel.TypeConverter => 92
	i64 u0x7c0820144cd34d6a, ; 188: sk/Microsoft.Maui.Controls.resources.dll => 25
	i64 u0x7c2a0bd1e0f988fc, ; 189: lib-de-Microsoft.Maui.Controls.resources.dll.so => 4
	i64 u0x7c6127dbb283f6ad, ; 190: Plugin.MauiMtAdmob => 51
	i64 u0x7cb95ad2a929d044, ; 191: Xamarin.GooglePlayServices.Basement => 81
	i64 u0x7cc637f941f716d0, ; 192: CommunityToolkit.Maui.Core => 36
	i64 u0x7d649b75d580bb42, ; 193: ms/Microsoft.Maui.Controls.resources.dll => 17
	i64 u0x7d8ee2bdc8e3aad1, ; 194: System.Numerics.Vectors => 108
	i64 u0x7dfc3d6d9d8d7b70, ; 195: System.Collections => 90
	i64 u0x7e946809d6008ef2, ; 196: lib_System.ObjectModel.dll.so => 109
	i64 u0x7ecc13347c8fd849, ; 197: lib_System.ComponentModel.dll.so => 93
	i64 u0x7f00ddd9b9ca5a13, ; 198: Xamarin.AndroidX.ViewPager.dll => 76
	i64 u0x7f9351cd44b1273f, ; 199: Microsoft.Extensions.Configuration.Abstractions => 38
	i64 u0x7fbd557c99b3ce6f, ; 200: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 65
	i64 u0x812c069d5cdecc17, ; 201: System.dll => 124
	i64 u0x81ab745f6c0f5ce6, ; 202: zh-Hant/Microsoft.Maui.Controls.resources => 33
	i64 u0x8277f2be6b5ce05f, ; 203: Xamarin.AndroidX.AppCompat => 53
	i64 u0x828f06563b30bc50, ; 204: lib_Xamarin.AndroidX.CardView.dll.so => 56
	i64 u0x82f6403342e12049, ; 205: uk/Microsoft.Maui.Controls.resources => 29
	i64 u0x83c14ba66c8e2b8c, ; 206: zh-Hans/Microsoft.Maui.Controls.resources => 32
	i64 u0x86a909228dc7657b, ; 207: lib-zh-Hant-Microsoft.Maui.Controls.resources.dll.so => 33
	i64 u0x86b3e00c36b84509, ; 208: Microsoft.Extensions.Configuration.dll => 37
	i64 u0x87c69b87d9283884, ; 209: lib_System.Threading.Thread.dll.so => 120
	i64 u0x87f6569b25707834, ; 210: System.IO.Compression.Brotli.dll => 98
	i64 u0x8842b3a5d2d3fb36, ; 211: Microsoft.Maui.Essentials => 49
	i64 u0x88bda98e0cffb7a9, ; 212: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 83
	i64 u0x897a606c9e39c75f, ; 213: lib_System.ComponentModel.Primitives.dll.so => 91
	i64 u0x8ad229ea26432ee2, ; 214: Xamarin.AndroidX.Loader => 68
	i64 u0x8b4ff5d0fdd5faa1, ; 215: lib_System.Diagnostics.DiagnosticSource.dll.so => 95
	i64 u0x8b9ceca7acae3451, ; 216: lib-he-Microsoft.Maui.Controls.resources.dll.so => 9
	i64 u0x8d0f420977c2c1c7, ; 217: Xamarin.AndroidX.CursorAdapter.dll => 60
	i64 u0x8d7b8ab4b3310ead, ; 218: System.Threading => 121
	i64 u0x8da188285aadfe8e, ; 219: System.Collections.Concurrent => 86
	i64 u0x8ed807bfe9858dfc, ; 220: Xamarin.AndroidX.Navigation.Common => 69
	i64 u0x8ee08b8194a30f48, ; 221: lib-hi-Microsoft.Maui.Controls.resources.dll.so => 10
	i64 u0x8ef7601039857a44, ; 222: lib-ro-Microsoft.Maui.Controls.resources.dll.so => 23
	i64 u0x8f32c6f611f6ffab, ; 223: pt/Microsoft.Maui.Controls.resources.dll => 22
	i64 u0x8f8829d21c8985a4, ; 224: lib-pt-BR-Microsoft.Maui.Controls.resources.dll.so => 21
	i64 u0x90263f8448b8f572, ; 225: lib_System.Diagnostics.TraceSource.dll.so => 96
	i64 u0x903101b46fb73a04, ; 226: _Microsoft.Android.Resource.Designer => 34
	i64 u0x90393bd4865292f3, ; 227: lib_System.IO.Compression.dll.so => 99
	i64 u0x90634f86c5ebe2b5, ; 228: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 66
	i64 u0x907b636704ad79ef, ; 229: lib_Microsoft.Maui.Controls.Xaml.dll.so => 47
	i64 u0x91418dc638b29e68, ; 230: lib_Xamarin.AndroidX.CustomView.dll.so => 61
	i64 u0x9157bd523cd7ed36, ; 231: lib_System.Text.Json.dll.so => 118
	i64 u0x91a74f07b30d37e2, ; 232: System.Linq.dll => 102
	i64 u0x91fa41a87223399f, ; 233: ca/Microsoft.Maui.Controls.resources.dll => 1
	i64 u0x93cfa73ab28d6e35, ; 234: ms/Microsoft.Maui.Controls.resources => 17
	i64 u0x944077d8ca3c6580, ; 235: System.IO.Compression.dll => 99
	i64 u0x967fc325e09bfa8c, ; 236: es/Microsoft.Maui.Controls.resources => 6
	i64 u0x9732d8dbddea3d9a, ; 237: id/Microsoft.Maui.Controls.resources => 13
	i64 u0x978be80e5210d31b, ; 238: Microsoft.Maui.Graphics.dll => 50
	i64 u0x97b8c771ea3e4220, ; 239: System.ComponentModel.dll => 93
	i64 u0x97e144c9d3c6976e, ; 240: System.Collections.Concurrent.dll => 86
	i64 u0x991d510397f92d9d, ; 241: System.Linq.Expressions => 101
	i64 u0x993cc632e821c001, ; 242: Microsoft.Maui.Controls.Compatibility => 45
	i64 u0x99a00ca5270c6878, ; 243: Xamarin.AndroidX.Navigation.Runtime => 71
	i64 u0x99cdc6d1f2d3a72f, ; 244: ko/Microsoft.Maui.Controls.resources.dll => 16
	i64 u0x9d5dbcf5a48583fe, ; 245: lib_Xamarin.AndroidX.Activity.dll.so => 52
	i64 u0x9d74dee1a7725f34, ; 246: Microsoft.Extensions.Configuration.Abstractions.dll => 38
	i64 u0x9e4534b6adaf6e84, ; 247: nl/Microsoft.Maui.Controls.resources => 19
	i64 u0x9eaf1efdf6f7267e, ; 248: Xamarin.AndroidX.Navigation.Common.dll => 69
	i64 u0x9ef542cf1f78c506, ; 249: Xamarin.AndroidX.Lifecycle.LiveData.Core => 65
	i64 u0x9fe0f21f914d32f7, ; 250: Xamarin.GooglePlayServices.Ads.Lite.dll => 80
	i64 u0xa0d8259f4cc284ec, ; 251: lib_System.Security.Cryptography.dll.so => 116
	i64 u0xa1440773ee9d341e, ; 252: Xamarin.Google.Android.Material => 78
	i64 u0xa1b9d7c27f47219f, ; 253: Xamarin.AndroidX.Navigation.UI.dll => 72
	i64 u0xa2572680829d2c7c, ; 254: System.IO.Pipelines.dll => 100
	i64 u0xa3af3d3e143e4546, ; 255: AsciiTable.dll => 85
	i64 u0xa46aa1eaa214539b, ; 256: ko/Microsoft.Maui.Controls.resources => 16
	i64 u0xa5e599d1e0524750, ; 257: System.Numerics.Vectors.dll => 108
	i64 u0xa5f1ba49b85dd355, ; 258: System.Security.Cryptography.dll => 116
	i64 u0xa67dbee13e1df9ca, ; 259: Xamarin.AndroidX.SavedState.dll => 74
	i64 u0xa68a420042bb9b1f, ; 260: Xamarin.AndroidX.DrawerLayout.dll => 62
	i64 u0xa78ce3745383236a, ; 261: Xamarin.AndroidX.Lifecycle.Common.Jvm => 64
	i64 u0xa7c31b56b4dc7b33, ; 262: hu/Microsoft.Maui.Controls.resources => 12
	i64 u0xa89881774bc4cd6e, ; 263: Plugin.MauiMtAdmob.dll => 51
	i64 u0xa964304b5631e28a, ; 264: CommunityToolkit.Maui.Core.dll => 36
	i64 u0xaa2219c8e3449ff5, ; 265: Microsoft.Extensions.Logging.Abstractions => 42
	i64 u0xaa443ac34067eeef, ; 266: System.Private.Xml.dll => 111
	i64 u0xaa52de307ef5d1dd, ; 267: System.Net.Http => 104
	i64 u0xaaaf86367285a918, ; 268: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 40
	i64 u0xaaf84bb3f052a265, ; 269: el/Microsoft.Maui.Controls.resources => 5
	i64 u0xab9c1b2687d86b0b, ; 270: lib_System.Linq.Expressions.dll.so => 101
	i64 u0xac2af3fa195a15ce, ; 271: System.Runtime.Numerics => 114
	i64 u0xac5376a2a538dc10, ; 272: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 65
	i64 u0xacd46e002c3ccb97, ; 273: ro/Microsoft.Maui.Controls.resources => 23
	i64 u0xad89c07347f1bad6, ; 274: nl/Microsoft.Maui.Controls.resources.dll => 19
	i64 u0xadbb53caf78a79d2, ; 275: System.Web.HttpUtility => 122
	i64 u0xadc90ab061a9e6e4, ; 276: System.ComponentModel.TypeConverter.dll => 92
	i64 u0xae282bcd03739de7, ; 277: Java.Interop => 126
	i64 u0xae53579c90db1107, ; 278: System.ObjectModel.dll => 109
	i64 u0xafe29f45095518e7, ; 279: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so => 67
	i64 u0xb05cc42cd94c6d9d, ; 280: lib-sv-Microsoft.Maui.Controls.resources.dll.so => 26
	i64 u0xb220631954820169, ; 281: System.Text.RegularExpressions => 119
	i64 u0xb2a3f67f3bf29fce, ; 282: da/Microsoft.Maui.Controls.resources => 3
	i64 u0xb3f0a0fcda8d3ebc, ; 283: Xamarin.AndroidX.CardView => 56
	i64 u0xb46be1aa6d4fff93, ; 284: hi/Microsoft.Maui.Controls.resources => 10
	i64 u0xb477491be13109d8, ; 285: ar/Microsoft.Maui.Controls.resources => 0
	i64 u0xb4bd7015ecee9d86, ; 286: System.IO.Pipelines => 100
	i64 u0xb5c7fcdafbc67ee4, ; 287: Microsoft.Extensions.Logging.Abstractions.dll => 42
	i64 u0xb7b7753d1f319409, ; 288: sv/Microsoft.Maui.Controls.resources => 26
	i64 u0xb81a2c6e0aee50fe, ; 289: lib_System.Private.CoreLib.dll.so => 125
	i64 u0xb9f64d3b230def68, ; 290: lib-pt-Microsoft.Maui.Controls.resources.dll.so => 22
	i64 u0xb9fc3c8a556e3691, ; 291: ja/Microsoft.Maui.Controls.resources => 15
	i64 u0xba48785529705af9, ; 292: System.Collections.dll => 90
	i64 u0xbd0e2c0d55246576, ; 293: System.Net.Http.dll => 104
	i64 u0xbd437a2cdb333d0d, ; 294: Xamarin.AndroidX.ViewPager2 => 77
	i64 u0xbd5d0b88d3d647a5, ; 295: lib_Xamarin.AndroidX.Browser.dll.so => 55
	i64 u0xbee38d4a88835966, ; 296: Xamarin.AndroidX.AppCompat.AppCompatResources => 54
	i64 u0xc040a4ab55817f58, ; 297: ar/Microsoft.Maui.Controls.resources.dll => 0
	i64 u0xc0d928351ab5ca77, ; 298: System.Console.dll => 94
	i64 u0xc12b8b3afa48329c, ; 299: lib_System.Linq.dll.so => 102
	i64 u0xc1ff9ae3cdb6e1e6, ; 300: Xamarin.AndroidX.Activity.dll => 52
	i64 u0xc28c50f32f81cc73, ; 301: ja/Microsoft.Maui.Controls.resources.dll => 15
	i64 u0xc2bcfec99f69365e, ; 302: Xamarin.AndroidX.ViewPager2.dll => 77
	i64 u0xc4d3858ed4d08512, ; 303: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 67
	i64 u0xc50fded0ded1418c, ; 304: lib_System.ComponentModel.TypeConverter.dll.so => 92
	i64 u0xc519125d6bc8fb11, ; 305: lib_System.Net.Requests.dll.so => 107
	i64 u0xc5293b19e4dc230e, ; 306: Xamarin.AndroidX.Navigation.Fragment => 70
	i64 u0xc5325b2fcb37446f, ; 307: lib_System.Private.Xml.dll.so => 111
	i64 u0xc5a0f4b95a699af7, ; 308: lib_System.Private.Uri.dll.so => 110
	i64 u0xc7ce851898a4548e, ; 309: lib_System.Web.HttpUtility.dll.so => 122
	i64 u0xc858a28d9ee5a6c5, ; 310: lib_System.Collections.Specialized.dll.so => 89
	i64 u0xc9e54b32fc19baf3, ; 311: lib_CommunityToolkit.Maui.dll.so => 35
	i64 u0xca3a723e7342c5b6, ; 312: lib-tr-Microsoft.Maui.Controls.resources.dll.so => 28
	i64 u0xcab3493c70141c2d, ; 313: pl/Microsoft.Maui.Controls.resources => 20
	i64 u0xcacfddc9f7c6de76, ; 314: ro/Microsoft.Maui.Controls.resources.dll => 23
	i64 u0xcbd4fdd9cef4a294, ; 315: lib__Microsoft.Android.Resource.Designer.dll.so => 34
	i64 u0xcc2876b32ef2794c, ; 316: lib_System.Text.RegularExpressions.dll.so => 119
	i64 u0xcc5c3bb714c4561e, ; 317: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 83
	i64 u0xcc76886e09b88260, ; 318: Xamarin.KotlinX.Serialization.Core.Jvm.dll => 84
	i64 u0xccf25c4b634ccd3a, ; 319: zh-Hans/Microsoft.Maui.Controls.resources.dll => 32
	i64 u0xcd10a42808629144, ; 320: System.Net.Requests => 107
	i64 u0xcdd0c48b6937b21c, ; 321: Xamarin.AndroidX.SwipeRefreshLayout => 75
	i64 u0xcf23d8093f3ceadf, ; 322: System.Diagnostics.DiagnosticSource.dll => 95
	i64 u0xcf5ff6b6b2c4c382, ; 323: System.Net.Mail.dll => 105
	i64 u0xd1194e1d8a8de83c, ; 324: lib_Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so => 64
	i64 u0xd333d0af9e423810, ; 325: System.Runtime.InteropServices => 112
	i64 u0xd3426d966bb704f5, ; 326: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 54
	i64 u0xd3651b6fc3125825, ; 327: System.Private.Uri.dll => 110
	i64 u0xd373685349b1fe8b, ; 328: Microsoft.Extensions.Logging.dll => 41
	i64 u0xd3e4c8d6a2d5d470, ; 329: it/Microsoft.Maui.Controls.resources => 14
	i64 u0xd4645626dffec99d, ; 330: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 40
	i64 u0xd5507e11a2b2839f, ; 331: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 67
	i64 u0xd6694f8359737e4e, ; 332: Xamarin.AndroidX.SavedState => 74
	i64 u0xd6d21782156bc35b, ; 333: Xamarin.AndroidX.SwipeRefreshLayout.dll => 75
	i64 u0xd72329819cbbbc44, ; 334: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 38
	i64 u0xd7b3764ada9d341d, ; 335: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 42
	i64 u0xda1dfa4c534a9251, ; 336: Microsoft.Extensions.DependencyInjection => 39
	i64 u0xdad05a11827959a3, ; 337: System.Collections.NonGeneric.dll => 88
	i64 u0xdb5383ab5865c007, ; 338: lib-vi-Microsoft.Maui.Controls.resources.dll.so => 30
	i64 u0xdbeda89f832aa805, ; 339: vi/Microsoft.Maui.Controls.resources.dll => 30
	i64 u0xdbf9607a441b4505, ; 340: System.Linq => 102
	i64 u0xdc2739b299c00169, ; 341: Xamarin.Google.UserMessagingPlatform => 79
	i64 u0xdce2c53525640bf3, ; 342: Microsoft.Extensions.Logging => 41
	i64 u0xdd2b722d78ef5f43, ; 343: System.Runtime.dll => 115
	i64 u0xdd67031857c72f96, ; 344: lib_System.Text.Encodings.Web.dll.so => 117
	i64 u0xdde30e6b77aa6f6c, ; 345: lib-zh-Hans-Microsoft.Maui.Controls.resources.dll.so => 32
	i64 u0xde8769ebda7d8647, ; 346: hr/Microsoft.Maui.Controls.resources.dll => 11
	i64 u0xe0142572c095a480, ; 347: Xamarin.AndroidX.AppCompat.dll => 53
	i64 u0xe02f89350ec78051, ; 348: Xamarin.AndroidX.CoordinatorLayout.dll => 58
	i64 u0xe192a588d4410686, ; 349: lib_System.IO.Pipelines.dll.so => 100
	i64 u0xe1a08bd3fa539e0d, ; 350: System.Runtime.Loader => 113
	i64 u0xe2420585aeceb728, ; 351: System.Net.Requests.dll => 107
	i64 u0xe29b73bc11392966, ; 352: lib-id-Microsoft.Maui.Controls.resources.dll.so => 13
	i64 u0xe3811d68d4fe8463, ; 353: pt-BR/Microsoft.Maui.Controls.resources.dll => 21
	i64 u0xe494f7ced4ecd10a, ; 354: hu/Microsoft.Maui.Controls.resources.dll => 12
	i64 u0xe4a9b1e40d1e8917, ; 355: lib-fi-Microsoft.Maui.Controls.resources.dll.so => 7
	i64 u0xe5434e8a119ceb69, ; 356: lib_Mono.Android.dll.so => 128
	i64 u0xedc632067fb20ff3, ; 357: System.Memory.dll => 103
	i64 u0xedc8e4ca71a02a8b, ; 358: Xamarin.AndroidX.Navigation.Runtime.dll => 71
	i64 u0xeeb7ebb80150501b, ; 359: lib_Xamarin.AndroidX.Collection.Jvm.dll.so => 57
	i64 u0xef72742e1bcca27a, ; 360: Microsoft.Maui.Essentials.dll => 49
	i64 u0xefec0b7fdc57ec42, ; 361: Xamarin.AndroidX.Activity => 52
	i64 u0xf00c29406ea45e19, ; 362: es/Microsoft.Maui.Controls.resources.dll => 6
	i64 u0xf11b621fc87b983f, ; 363: Microsoft.Maui.Controls.Xaml.dll => 47
	i64 u0xf1c4b4005493d871, ; 364: System.Formats.Asn1.dll => 97
	i64 u0xf238bd79489d3a96, ; 365: lib-nl-Microsoft.Maui.Controls.resources.dll.so => 19
	i64 u0xf2e9fabca7a6f5ab, ; 366: AsciiTable => 85
	i64 u0xf37221fda4ef8830, ; 367: lib_Xamarin.Google.Android.Material.dll.so => 78
	i64 u0xf3ddfe05336abf29, ; 368: System => 124
	i64 u0xf4c1dd70a5496a17, ; 369: System.IO.Compression => 99
	i64 u0xf6077741019d7428, ; 370: Xamarin.AndroidX.CoordinatorLayout => 58
	i64 u0xf77b20923f07c667, ; 371: de/Microsoft.Maui.Controls.resources.dll => 4
	i64 u0xf7e2cac4c45067b3, ; 372: lib_System.Numerics.Vectors.dll.so => 108
	i64 u0xf7e74930e0e3d214, ; 373: zh-HK/Microsoft.Maui.Controls.resources.dll => 31
	i64 u0xf84773b5c81e3cef, ; 374: lib-uk-Microsoft.Maui.Controls.resources.dll.so => 29
	i64 u0xf8e045dc345b2ea3, ; 375: lib_Xamarin.AndroidX.RecyclerView.dll.so => 73
	i64 u0xf915dc29808193a1, ; 376: System.Web.HttpUtility.dll => 122
	i64 u0xf96c777a2a0686f4, ; 377: hi/Microsoft.Maui.Controls.resources.dll => 10
	i64 u0xf9eec5bb3a6aedc6, ; 378: Microsoft.Extensions.Options => 43
	i64 u0xfa5ed7226d978949, ; 379: lib-ar-Microsoft.Maui.Controls.resources.dll.so => 0
	i64 u0xfa645d91e9fc4cba, ; 380: System.Threading.Thread => 120
	i64 u0xfbf0a31c9fc34bc4, ; 381: lib_System.Net.Http.dll.so => 104
	i64 u0xfc719aec26adf9d9, ; 382: Xamarin.AndroidX.Navigation.Fragment.dll => 70
	i64 u0xfd22f00870e40ae0, ; 383: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 62
	i64 u0xfd583f7657b6a1cb, ; 384: Xamarin.AndroidX.Fragment => 63
	i64 u0xfdbe4710aa9beeff, ; 385: CommunityToolkit.Maui => 35
	i64 u0xfeae9952cf03b8cb ; 386: tr/Microsoft.Maui.Controls.resources => 28
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [387 x i32] [
	i32 75, i32 71, i32 36, i32 127, i32 79, i32 53, i32 24, i32 2,
	i32 30, i32 106, i32 73, i32 90, i32 48, i32 31, i32 57, i32 24,
	i32 88, i32 62, i32 43, i32 88, i32 81, i32 116, i32 25, i32 84,
	i32 76, i32 21, i32 128, i32 49, i32 105, i32 61, i32 79, i32 98,
	i32 105, i32 73, i32 55, i32 8, i32 126, i32 9, i32 40, i32 12,
	i32 117, i32 84, i32 18, i32 86, i32 124, i32 27, i32 127, i32 45,
	i32 72, i32 16, i32 43, i32 98, i32 115, i32 27, i32 81, i32 120,
	i32 94, i32 59, i32 8, i32 82, i32 44, i32 13, i32 11, i32 126,
	i32 106, i32 29, i32 96, i32 7, i32 119, i32 97, i32 33, i32 20,
	i32 121, i32 26, i32 80, i32 118, i32 5, i32 123, i32 63, i32 34,
	i32 56, i32 8, i32 123, i32 87, i32 6, i32 48, i32 2, i32 46,
	i32 77, i32 37, i32 87, i32 61, i32 76, i32 1, i32 82, i32 55,
	i32 59, i32 69, i32 54, i32 80, i32 128, i32 20, i32 82, i32 96,
	i32 24, i32 22, i32 109, i32 72, i32 118, i32 68, i32 101, i32 111,
	i32 113, i32 45, i32 14, i32 68, i32 127, i32 1, i32 46, i32 66,
	i32 106, i32 59, i32 50, i32 25, i32 31, i32 115, i32 64, i32 89,
	i32 110, i32 125, i32 95, i32 15, i32 39, i32 58, i32 121, i32 93,
	i32 3, i32 41, i32 112, i32 57, i32 85, i32 89, i32 117, i32 91,
	i32 123, i32 5, i32 39, i32 83, i32 103, i32 47, i32 4, i32 113,
	i32 125, i32 51, i32 87, i32 78, i32 35, i32 46, i32 114, i32 94,
	i32 66, i32 60, i32 3, i32 97, i32 9, i32 112, i32 18, i32 50,
	i32 44, i32 60, i32 44, i32 70, i32 48, i32 2, i32 28, i32 18,
	i32 14, i32 91, i32 11, i32 103, i32 37, i32 74, i32 114, i32 17,
	i32 27, i32 63, i32 7, i32 92, i32 25, i32 4, i32 51, i32 81,
	i32 36, i32 17, i32 108, i32 90, i32 109, i32 93, i32 76, i32 38,
	i32 65, i32 124, i32 33, i32 53, i32 56, i32 29, i32 32, i32 33,
	i32 37, i32 120, i32 98, i32 49, i32 83, i32 91, i32 68, i32 95,
	i32 9, i32 60, i32 121, i32 86, i32 69, i32 10, i32 23, i32 22,
	i32 21, i32 96, i32 34, i32 99, i32 66, i32 47, i32 61, i32 118,
	i32 102, i32 1, i32 17, i32 99, i32 6, i32 13, i32 50, i32 93,
	i32 86, i32 101, i32 45, i32 71, i32 16, i32 52, i32 38, i32 19,
	i32 69, i32 65, i32 80, i32 116, i32 78, i32 72, i32 100, i32 85,
	i32 16, i32 108, i32 116, i32 74, i32 62, i32 64, i32 12, i32 51,
	i32 36, i32 42, i32 111, i32 104, i32 40, i32 5, i32 101, i32 114,
	i32 65, i32 23, i32 19, i32 122, i32 92, i32 126, i32 109, i32 67,
	i32 26, i32 119, i32 3, i32 56, i32 10, i32 0, i32 100, i32 42,
	i32 26, i32 125, i32 22, i32 15, i32 90, i32 104, i32 77, i32 55,
	i32 54, i32 0, i32 94, i32 102, i32 52, i32 15, i32 77, i32 67,
	i32 92, i32 107, i32 70, i32 111, i32 110, i32 122, i32 89, i32 35,
	i32 28, i32 20, i32 23, i32 34, i32 119, i32 83, i32 84, i32 32,
	i32 107, i32 75, i32 95, i32 105, i32 64, i32 112, i32 54, i32 110,
	i32 41, i32 14, i32 40, i32 67, i32 74, i32 75, i32 38, i32 42,
	i32 39, i32 88, i32 30, i32 30, i32 102, i32 79, i32 41, i32 115,
	i32 117, i32 32, i32 11, i32 53, i32 58, i32 100, i32 113, i32 107,
	i32 13, i32 21, i32 12, i32 7, i32 128, i32 103, i32 71, i32 57,
	i32 49, i32 52, i32 6, i32 47, i32 97, i32 19, i32 85, i32 78,
	i32 124, i32 99, i32 58, i32 4, i32 108, i32 31, i32 29, i32 73,
	i32 122, i32 10, i32 43, i32 0, i32 120, i32 104, i32 70, i32 62,
	i32 63, i32 35, i32 28
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 u0x0000000000000000, ; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/9.0.1xx @ 9abff7703206541fdb83ffa80fe2c2753ad1997b"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
