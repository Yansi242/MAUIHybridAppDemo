; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [146 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [292 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 52
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 145
	i64 131669012237370309, ; 2: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 57
	i64 196720943101637631, ; 3: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 109
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 64
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 81
	i64 435118502366263740, ; 6: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 82
	i64 533925772679332524, ; 7: MauiBlazorHybridApp => 0x768e2a950fa42ac => 90
	i64 560278790331054453, ; 8: System.Reflection.Primitives => 0x7c6829760de3975 => 123
	i64 683390398661839228, ; 9: Microsoft.Extensions.FileProviders.Embedded => 0x97be3f26326c97c => 46
	i64 750875890346172408, ; 10: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 135
	i64 799765834175365804, ; 11: System.ComponentModel.dll => 0xb1956c9f18442ac => 99
	i64 805302231655005164, ; 12: hu\Microsoft.Maui.Controls.resources.dll => 0xb2d021ceea03bec => 12
	i64 872800313462103108, ; 13: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 69
	i64 1010599046655515943, ; 14: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 123
	i64 1120440138749646132, ; 15: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 86
	i64 1268860745194512059, ; 16: System.Drawing.dll => 0x119be62002c19ebb => 105
	i64 1369545283391376210, ; 17: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 77
	i64 1404195534211153682, ; 18: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 108
	i64 1476839205573959279, ; 19: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 114
	i64 1486715745332614827, ; 20: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 54
	i64 1513467482682125403, ; 21: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 144
	i64 1537168428375924959, ; 22: System.Threading.Thread.dll => 0x15551e8a954ae0df => 135
	i64 1624659445732251991, ; 23: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 62
	i64 1628611045998245443, ; 24: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 74
	i64 1731380447121279447, ; 25: Newtonsoft.Json => 0x18071957e9b889d7 => 59
	i64 1743969030606105336, ; 26: System.Memory.dll => 0x1833d297e88f2af8 => 111
	i64 1767386781656293639, ; 27: System.Private.Uri.dll => 0x188704e9f5582107 => 118
	i64 1776954265264967804, ; 28: Microsoft.JSInterop.dll => 0x18a9027d533bd07c => 53
	i64 1795316252682057001, ; 29: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 61
	i64 1835311033149317475, ; 30: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 6
	i64 1836611346387731153, ; 31: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 81
	i64 1875417405349196092, ; 32: System.Drawing.Primitives => 0x1a06d2319b6c713c => 104
	i64 1881198190668717030, ; 33: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 28
	i64 1897575647115118287, ; 34: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 82
	i64 1920760634179481754, ; 35: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 55
	i64 1981742497975770890, ; 36: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 73
	i64 2102659300918482391, ; 37: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 104
	i64 2133195048986300728, ; 38: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 59
	i64 2262844636196693701, ; 39: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 69
	i64 2287834202362508563, ; 40: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 92
	i64 2295368378960711535, ; 41: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x1fdac961189e0f6f => 39
	i64 2329709569556905518, ; 42: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 72
	i64 2335503487726329082, ; 43: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 132
	i64 2470498323731680442, ; 44: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 65
	i64 2497223385847772520, ; 45: System.Runtime => 0x22a7eb7046413568 => 129
	i64 2547086958574651984, ; 46: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 60
	i64 2602673633151553063, ; 47: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 27
	i64 2656907746661064104, ; 48: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 42
	i64 2662981627730767622, ; 49: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 2
	i64 2781169761569919449, ; 50: Microsoft.JSInterop => 0x2698b329b26ed1d9 => 53
	i64 2895129759130297543, ; 51: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 7
	i64 3017704767998173186, ; 52: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 86
	i64 3289520064315143713, ; 53: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 71
	i64 3311221304742556517, ; 54: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 116
	i64 3325875462027654285, ; 55: System.Runtime.Numerics => 0x2e27e21c8958b48d => 126
	i64 3344514922410554693, ; 56: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 89
	i64 3396143930648122816, ; 57: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 44
	i64 3429672777697402584, ; 58: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 57
	i64 3494946837667399002, ; 59: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 40
	i64 3522470458906976663, ; 60: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 83
	i64 3551103847008531295, ; 61: System.Private.CoreLib.dll => 0x31480e226177735f => 142
	i64 3567343442040498961, ; 62: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 22
	i64 3571415421602489686, ; 63: System.Runtime.dll => 0x319037675df7e556 => 129
	i64 3638003163729360188, ; 64: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 41
	i64 3647754201059316852, ; 65: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 139
	i64 3655542548057982301, ; 66: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 40
	i64 3727469159507183293, ; 67: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 80
	i64 3753897248517198740, ; 68: Microsoft.AspNetCore.Components.WebView.dll => 0x341885a8952f1394 => 38
	i64 3869221888984012293, ; 69: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 49
	i64 3889433610606858880, ; 70: Microsoft.Extensions.FileProviders.Physical.dll => 0x35fa0b4301afd280 => 47
	i64 3890352374528606784, ; 71: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 55
	i64 3933965368022646939, ; 72: System.Net.Requests => 0x369840a8bfadc09b => 115
	i64 3966267475168208030, ; 73: System.Memory => 0x370b03412596249e => 111
	i64 4009997192427317104, ; 74: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 128
	i64 4070326265757318011, ; 75: da\Microsoft.Maui.Controls.resources.dll => 0x387cb42c56683b7b => 3
	i64 4073500526318903918, ; 76: System.Private.Xml.dll => 0x3887fb25779ae26e => 120
	i64 4120493066591692148, ; 77: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 33
	i64 4154383907710350974, ; 78: System.ComponentModel => 0x39a7562737acb67e => 99
	i64 4187479170553454871, ; 79: System.Linq.Expressions => 0x3a1cea1e912fa117 => 109
	i64 4205801962323029395, ; 80: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 98
	i64 4360412976914417659, ; 81: tr\Microsoft.Maui.Controls.resources.dll => 0x3c834c8002fcc7fb => 28
	i64 4384840217421645357, ; 82: Microsoft.AspNetCore.Components.Forms => 0x3cda14f22443862d => 36
	i64 4477672992252076438, ; 83: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 137
	i64 4669643609833055392, ; 84: MauiBlazorHybridApp.dll => 0x40cde81f4fc5a4a0 => 90
	i64 4672453897036726049, ; 85: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 108
	i64 4743821336939966868, ; 86: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 96
	i64 4794310189461587505, ; 87: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 60
	i64 4795410492532947900, ; 88: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 83
	i64 4809057822547766521, ; 89: System.Drawing => 0x42bd349c3145ecf9 => 105
	i64 4853321196694829351, ; 90: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 125
	i64 4871824391508510238, ; 91: nb\Microsoft.Maui.Controls.resources.dll => 0x439c3278d7f2c61e => 18
	i64 4953714692329509532, ; 92: sv\Microsoft.Maui.Controls.resources.dll => 0x44bf21444aef129c => 26
	i64 5103417709280584325, ; 93: System.Collections.Specialized => 0x46d2fb5e161b6285 => 94
	i64 5182934613077526976, ; 94: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 94
	i64 5197073077358930460, ; 95: Microsoft.AspNetCore.Components.Web.dll => 0x481fb66db7b9aa1c => 37
	i64 5290786973231294105, ; 96: System.Runtime.Loader => 0x496ca6b869b72699 => 125
	i64 5471532531798518949, ; 97: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 26
	i64 5522859530602327440, ; 98: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 29
	i64 5570799893513421663, ; 99: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 106
	i64 5573260873512690141, ; 100: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 130
	i64 5692067934154308417, ; 101: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 85
	i64 6200764641006662125, ; 102: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 23
	i64 6222399776351216807, ; 103: System.Text.Json.dll => 0x565a67a0ffe264a7 => 133
	i64 6284145129771520194, ; 104: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 121
	i64 6300676701234028427, ; 105: es\Microsoft.Maui.Controls.resources.dll => 0x57708013cda25f8b => 6
	i64 6357457916754632952, ; 106: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 34
	i64 6401687960814735282, ; 107: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 72
	i64 6471714727257221498, ; 108: fi\Microsoft.Maui.Controls.resources.dll => 0x59d026417dd4a97a => 7
	i64 6478287442656530074, ; 109: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 11
	i64 6548213210057960872, ; 110: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 68
	i64 6560151584539558821, ; 111: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 51
	i64 6743165466166707109, ; 112: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 19
	i64 6786606130239981554, ; 113: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 103
	i64 6814185388980153342, ; 114: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 140
	i64 6876862101832370452, ; 115: System.Xml.Linq => 0x5f6f85a57d108914 => 138
	i64 6894844156784520562, ; 116: System.Numerics.Vectors => 0x5faf683aead1ad72 => 116
	i64 6920570528939222495, ; 117: Microsoft.AspNetCore.Components.WebView => 0x600ace3ab475a5df => 38
	i64 7083547580668757502, ; 118: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 119
	i64 7270811800166795866, ; 119: System.Linq => 0x64e71ccf51a90a5a => 110
	i64 7377312882064240630, ; 120: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 98
	i64 7488575175965059935, ; 121: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 138
	i64 7489048572193775167, ; 122: System.ObjectModel => 0x67ee71ff6b419e3f => 117
	i64 7654504624184590948, ; 123: System.Net.Http => 0x6a3a4366801b8264 => 113
	i64 7714652370974252055, ; 124: System.Private.CoreLib => 0x6b0ff375198b9c17 => 142
	i64 7735176074855944702, ; 125: Microsoft.CSharp => 0x6b58dda848e391fe => 91
	i64 7735352534559001595, ; 126: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 88
	i64 7742555799473854801, ; 127: it\Microsoft.Maui.Controls.resources.dll => 0x6b73157a51479951 => 14
	i64 7836164640616011524, ; 128: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 62
	i64 7975724199463739455, ; 129: sk\Microsoft.Maui.Controls.resources.dll => 0x6eaf76e6f785e03f => 25
	i64 8014722069583580780, ; 130: Microsoft.AspNetCore.Components.Forms.dll => 0x6f3a03422b034e6c => 36
	i64 8064050204834738623, ; 131: System.Collections.dll => 0x6fe942efa61731bf => 95
	i64 8083354569033831015, ; 132: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 71
	i64 8085230611270010360, ; 133: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 112
	i64 8087206902342787202, ; 134: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 102
	i64 8108129031893776750, ; 135: ko\Microsoft.Maui.Controls.resources.dll => 0x7085dc65530f796e => 16
	i64 8167236081217502503, ; 136: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 143
	i64 8185542183669246576, ; 137: System.Collections => 0x7198e33f4794aa70 => 95
	i64 8246048515196606205, ; 138: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 58
	i64 8368701292315763008, ; 139: System.Security.Cryptography => 0x7423997c6fd56140 => 130
	i64 8386351099740279196, ; 140: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x74624de475b9d19c => 31
	i64 8400357532724379117, ; 141: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 79
	i64 8410671156615598628, ; 142: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 122
	i64 8563666267364444763, ; 143: System.Private.Uri => 0x76d841191140ca5b => 118
	i64 8626175481042262068, ; 144: Java.Interop => 0x77b654e585b55834 => 143
	i64 8638972117149407195, ; 145: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 91
	i64 8639588376636138208, ; 146: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 78
	i64 8677882282824630478, ; 147: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 21
	i64 8725526185868997716, ; 148: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 102
	i64 8941376889969657626, ; 149: System.Xml.XDocument => 0x7c1626e87187471a => 140
	i64 9045785047181495996, ; 150: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 31
	i64 9312692141327339315, ; 151: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 85
	i64 9324707631942237306, ; 152: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 61
	i64 9363564275759486853, ; 153: el\Microsoft.Maui.Controls.resources.dll => 0x81f21019382e9785 => 5
	i64 9551379474083066910, ; 154: uk\Microsoft.Maui.Controls.resources.dll => 0x848d5106bbadb41e => 29
	i64 9575902398040817096, ; 155: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 87
	i64 9659729154652888475, ; 156: System.Text.RegularExpressions => 0x860e407c9991dd9b => 134
	i64 9678050649315576968, ; 157: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 65
	i64 9702891218465930390, ; 158: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 93
	i64 9773637193738963987, ; 159: ca\Microsoft.Maui.Controls.resources.dll => 0x87a2ef3ea85b4c13 => 1
	i64 9808709177481450983, ; 160: Mono.Android.dll => 0x881f890734e555e7 => 145
	i64 9956195530459977388, ; 161: Microsoft.Maui => 0x8a2b8315b36616ac => 56
	i64 10038780035334861115, ; 162: System.Net.Http.dll => 0x8b50e941206af13b => 113
	i64 10051358222726253779, ; 163: System.Private.Xml => 0x8b7d990c97ccccd3 => 120
	i64 10092835686693276772, ; 164: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 54
	i64 10143853363526200146, ; 165: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 3
	i64 10209869394718195525, ; 166: nl\Microsoft.Maui.Controls.resources.dll => 0x8db0be1ecb4f7f45 => 19
	i64 10229024438826829339, ; 167: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 68
	i64 10245369515835430794, ; 168: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 122
	i64 10364469296367737616, ; 169: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 121
	i64 10406448008575299332, ; 170: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 89
	i64 10430153318873392755, ; 171: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 66
	i64 10506226065143327199, ; 172: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 1
	i64 10734191584620811116, ; 173: Microsoft.Extensions.FileProviders.Embedded.dll => 0x94f7825fc04f936c => 46
	i64 10761706286639228993, ; 174: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0x955942d988382841 => 33
	i64 10785150219063592792, ; 175: System.Net.Primitives => 0x95ac8cfb68830758 => 114
	i64 11002576679268595294, ; 176: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 50
	i64 11009005086950030778, ; 177: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 56
	i64 11051904132540108364, ; 178: Microsoft.Extensions.FileProviders.Composite.dll => 0x99604040c7b98e4c => 45
	i64 11103970607964515343, ; 179: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 12
	i64 11156122287428000958, ; 180: th\Microsoft.Maui.Controls.resources.dll => 0x9ad2821cdcf6dcbe => 27
	i64 11157797727133427779, ; 181: fr\Microsoft.Maui.Controls.resources.dll => 0x9ad875ea9172e843 => 8
	i64 11162124722117608902, ; 182: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 84
	i64 11218356222449480316, ; 183: Microsoft.AspNetCore.Components => 0x9baf9b8c02e4f27c => 35
	i64 11220793807500858938, ; 184: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 15
	i64 11226290749488709958, ; 185: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 51
	i64 11340910727871153756, ; 186: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 67
	i64 11485890710487134646, ; 187: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 124
	i64 11518296021396496455, ; 188: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 13
	i64 11529969570048099689, ; 189: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 84
	i64 11530571088791430846, ; 190: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 49
	i64 11855031688536399763, ; 191: vi\Microsoft.Maui.Controls.resources.dll => 0xa485888294361f93 => 30
	i64 12048689113179125827, ; 192: Microsoft.Extensions.FileProviders.Physical => 0xa7358ae968287843 => 47
	i64 12058074296353848905, ; 193: Microsoft.Extensions.FileSystemGlobbing.dll => 0xa756e2afa5707e49 => 48
	i64 12145679461940342714, ; 194: System.Text.Json => 0xa88e1f1ebcb62fba => 133
	i64 12201331334810686224, ; 195: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 128
	i64 12451044538927396471, ; 196: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 70
	i64 12466513435562512481, ; 197: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 75
	i64 12475113361194491050, ; 198: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 34
	i64 12517810545449516888, ; 199: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 103
	i64 12538491095302438457, ; 200: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 63
	i64 12550732019250633519, ; 201: System.IO.Compression => 0xae2d28465e8e1b2f => 107
	i64 12700543734426720211, ; 202: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 64
	i64 12708922737231849740, ; 203: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 131
	i64 12843321153144804894, ; 204: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 52
	i64 12989346753972519995, ; 205: ar\Microsoft.Maui.Controls.resources.dll => 0xb4436e0d5ee7c43b => 0
	i64 13003699287675270979, ; 206: Microsoft.AspNetCore.Components.WebView.Maui => 0xb4766b9b07e27743 => 39
	i64 13005833372463390146, ; 207: pt-BR\Microsoft.Maui.Controls.resources.dll => 0xb47e008b5d99ddc2 => 21
	i64 13068258254871114833, ; 208: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 127
	i64 13343850469010654401, ; 209: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 144
	i64 13381594904270902445, ; 210: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 9
	i64 13465488254036897740, ; 211: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 88
	i64 13540124433173649601, ; 212: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 30
	i64 13550417756503177631, ; 213: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 44
	i64 13572454107664307259, ; 214: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 80
	i64 13717397318615465333, ; 215: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 97
	i64 13881769479078963060, ; 216: System.Console.dll => 0xc0a5f3cade5c6774 => 100
	i64 13959074834287824816, ; 217: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 70
	i64 14124974489674258913, ; 218: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 63
	i64 14125464355221830302, ; 219: System.Threading.dll => 0xc407bafdbc707a9e => 136
	i64 14254574811015963973, ; 220: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 131
	i64 14349907877893689639, ; 221: ro\Microsoft.Maui.Controls.resources.dll => 0xc7251d2f956ed127 => 23
	i64 14461014870687870182, ; 222: System.Net.Requests.dll => 0xc8afd8683afdece6 => 115
	i64 14464374589798375073, ; 223: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 24
	i64 14491877563792607819, ; 224: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0xc91d7ddcee4fca4b => 32
	i64 14551742072151931844, ; 225: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 132
	i64 14610046442689856844, ; 226: cs\Microsoft.Maui.Controls.resources.dll => 0xcac14fd5107d054c => 2
	i64 14622043554576106986, ; 227: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 127
	i64 14669215534098758659, ; 228: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 42
	i64 14690985099581930927, ; 229: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 137
	i64 14705122255218365489, ; 230: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 16
	i64 14735017007120366644, ; 231: ja\Microsoft.Maui.Controls.resources.dll => 0xcc7d4be604bfbc34 => 15
	i64 14744092281598614090, ; 232: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 32
	i64 14852515768018889994, ; 233: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 67
	i64 14904040806490515477, ; 234: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 0
	i64 14954917835170835695, ; 235: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 43
	i64 14987728460634540364, ; 236: System.IO.Compression.dll => 0xcfff1ba06622494c => 107
	i64 15024878362326791334, ; 237: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 112
	i64 15076659072870671916, ; 238: System.ObjectModel.dll => 0xd13b0d8c1620662c => 117
	i64 15111608613780139878, ; 239: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 17
	i64 15115185479366240210, ; 240: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 106
	i64 15133485256822086103, ; 241: System.Linq.dll => 0xd204f0a9127dd9d7 => 110
	i64 15203009853192377507, ; 242: pt\Microsoft.Maui.Controls.resources.dll => 0xd2fbf0e9984b94a3 => 22
	i64 15227001540531775957, ; 243: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 41
	i64 15370334346939861994, ; 244: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 66
	i64 15391712275433856905, ; 245: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 43
	i64 15427448221306938193, ; 246: Microsoft.AspNetCore.Components.Web => 0xd6194e6b4dbb6351 => 37
	i64 15481710163200268842, ; 247: Microsoft.Extensions.FileProviders.Composite => 0xd6da155e291b5a2a => 45
	i64 15527772828719725935, ; 248: System.Console => 0xd77dbb1e38cd3d6f => 100
	i64 15536481058354060254, ; 249: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 4
	i64 15582737692548360875, ; 250: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 74
	i64 15609085926864131306, ; 251: System.dll => 0xd89e9cf3334914ea => 141
	i64 15661133872274321916, ; 252: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 139
	i64 15783653065526199428, ; 253: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 5
	i64 16056281320585338352, ; 254: ru\Microsoft.Maui.Controls.resources.dll => 0xded35eca8f3a9df0 => 24
	i64 16154507427712707110, ; 255: System => 0xe03056ea4e39aa26 => 141
	i64 16288847719894691167, ; 256: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 18
	i64 16321164108206115771, ; 257: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 50
	i64 16649148416072044166, ; 258: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 58
	i64 16677317093839702854, ; 259: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 79
	i64 16803648858859583026, ; 260: ms\Microsoft.Maui.Controls.resources.dll => 0xe9328d9b8ab93632 => 17
	i64 16856067890322379635, ; 261: System.Data.Common.dll => 0xe9ecc87060889373 => 101
	i64 16890310621557459193, ; 262: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 134
	i64 16942731696432749159, ; 263: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 25
	i64 16998075588627545693, ; 264: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 77
	i64 17008137082415910100, ; 265: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 93
	i64 17031351772568316411, ; 266: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 76
	i64 17062143951396181894, ; 267: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 97
	i64 17079998892748052666, ; 268: Microsoft.AspNetCore.Components.dll => 0xed08587fce5018ba => 35
	i64 17187273293601214786, ; 269: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 96
	i64 17203614576212522419, ; 270: pl\Microsoft.Maui.Controls.resources.dll => 0xeebf844ef3e135b3 => 20
	i64 17205988430934219272, ; 271: Microsoft.Extensions.FileSystemGlobbing => 0xeec7f35113509a08 => 48
	i64 17230721278011714856, ; 272: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 119
	i64 17260702271250283638, ; 273: System.Data.Common => 0xef8a5543bba6bc76 => 101
	i64 17310278548634113468, ; 274: hi\Microsoft.Maui.Controls.resources.dll => 0xf03a76a04e6695bc => 10
	i64 17342750010158924305, ; 275: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 10
	i64 17360349973592121190, ; 276: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 87
	i64 17514990004910432069, ; 277: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 8
	i64 17623389608345532001, ; 278: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 20
	i64 17704177640604968747, ; 279: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 75
	i64 17710060891934109755, ; 280: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 73
	i64 17712670374920797664, ; 281: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 124
	i64 17777860260071588075, ; 282: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 126
	i64 17827813215687577648, ; 283: hr\Microsoft.Maui.Controls.resources.dll => 0xf7691da9f3129030 => 11
	i64 17942426894774770628, ; 284: de\Microsoft.Maui.Controls.resources.dll => 0xf9004e329f771bc4 => 4
	i64 18025913125965088385, ; 285: System.Threading => 0xfa28e87b91334681 => 136
	i64 18121036031235206392, ; 286: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 76
	i64 18245806341561545090, ; 287: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 92
	i64 18305135509493619199, ; 288: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 78
	i64 18324163916253801303, ; 289: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 14
	i64 18342408478508122430, ; 290: id\Microsoft.Maui.Controls.resources.dll => 0xfe8d53543697013e => 13
	i64 18358161419737137786 ; 291: he\Microsoft.Maui.Controls.resources.dll => 0xfec54a8ba8b6827a => 9
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [292 x i32] [
	i32 52, ; 0
	i32 145, ; 1
	i32 57, ; 2
	i32 109, ; 3
	i32 64, ; 4
	i32 81, ; 5
	i32 82, ; 6
	i32 90, ; 7
	i32 123, ; 8
	i32 46, ; 9
	i32 135, ; 10
	i32 99, ; 11
	i32 12, ; 12
	i32 69, ; 13
	i32 123, ; 14
	i32 86, ; 15
	i32 105, ; 16
	i32 77, ; 17
	i32 108, ; 18
	i32 114, ; 19
	i32 54, ; 20
	i32 144, ; 21
	i32 135, ; 22
	i32 62, ; 23
	i32 74, ; 24
	i32 59, ; 25
	i32 111, ; 26
	i32 118, ; 27
	i32 53, ; 28
	i32 61, ; 29
	i32 6, ; 30
	i32 81, ; 31
	i32 104, ; 32
	i32 28, ; 33
	i32 82, ; 34
	i32 55, ; 35
	i32 73, ; 36
	i32 104, ; 37
	i32 59, ; 38
	i32 69, ; 39
	i32 92, ; 40
	i32 39, ; 41
	i32 72, ; 42
	i32 132, ; 43
	i32 65, ; 44
	i32 129, ; 45
	i32 60, ; 46
	i32 27, ; 47
	i32 42, ; 48
	i32 2, ; 49
	i32 53, ; 50
	i32 7, ; 51
	i32 86, ; 52
	i32 71, ; 53
	i32 116, ; 54
	i32 126, ; 55
	i32 89, ; 56
	i32 44, ; 57
	i32 57, ; 58
	i32 40, ; 59
	i32 83, ; 60
	i32 142, ; 61
	i32 22, ; 62
	i32 129, ; 63
	i32 41, ; 64
	i32 139, ; 65
	i32 40, ; 66
	i32 80, ; 67
	i32 38, ; 68
	i32 49, ; 69
	i32 47, ; 70
	i32 55, ; 71
	i32 115, ; 72
	i32 111, ; 73
	i32 128, ; 74
	i32 3, ; 75
	i32 120, ; 76
	i32 33, ; 77
	i32 99, ; 78
	i32 109, ; 79
	i32 98, ; 80
	i32 28, ; 81
	i32 36, ; 82
	i32 137, ; 83
	i32 90, ; 84
	i32 108, ; 85
	i32 96, ; 86
	i32 60, ; 87
	i32 83, ; 88
	i32 105, ; 89
	i32 125, ; 90
	i32 18, ; 91
	i32 26, ; 92
	i32 94, ; 93
	i32 94, ; 94
	i32 37, ; 95
	i32 125, ; 96
	i32 26, ; 97
	i32 29, ; 98
	i32 106, ; 99
	i32 130, ; 100
	i32 85, ; 101
	i32 23, ; 102
	i32 133, ; 103
	i32 121, ; 104
	i32 6, ; 105
	i32 34, ; 106
	i32 72, ; 107
	i32 7, ; 108
	i32 11, ; 109
	i32 68, ; 110
	i32 51, ; 111
	i32 19, ; 112
	i32 103, ; 113
	i32 140, ; 114
	i32 138, ; 115
	i32 116, ; 116
	i32 38, ; 117
	i32 119, ; 118
	i32 110, ; 119
	i32 98, ; 120
	i32 138, ; 121
	i32 117, ; 122
	i32 113, ; 123
	i32 142, ; 124
	i32 91, ; 125
	i32 88, ; 126
	i32 14, ; 127
	i32 62, ; 128
	i32 25, ; 129
	i32 36, ; 130
	i32 95, ; 131
	i32 71, ; 132
	i32 112, ; 133
	i32 102, ; 134
	i32 16, ; 135
	i32 143, ; 136
	i32 95, ; 137
	i32 58, ; 138
	i32 130, ; 139
	i32 31, ; 140
	i32 79, ; 141
	i32 122, ; 142
	i32 118, ; 143
	i32 143, ; 144
	i32 91, ; 145
	i32 78, ; 146
	i32 21, ; 147
	i32 102, ; 148
	i32 140, ; 149
	i32 31, ; 150
	i32 85, ; 151
	i32 61, ; 152
	i32 5, ; 153
	i32 29, ; 154
	i32 87, ; 155
	i32 134, ; 156
	i32 65, ; 157
	i32 93, ; 158
	i32 1, ; 159
	i32 145, ; 160
	i32 56, ; 161
	i32 113, ; 162
	i32 120, ; 163
	i32 54, ; 164
	i32 3, ; 165
	i32 19, ; 166
	i32 68, ; 167
	i32 122, ; 168
	i32 121, ; 169
	i32 89, ; 170
	i32 66, ; 171
	i32 1, ; 172
	i32 46, ; 173
	i32 33, ; 174
	i32 114, ; 175
	i32 50, ; 176
	i32 56, ; 177
	i32 45, ; 178
	i32 12, ; 179
	i32 27, ; 180
	i32 8, ; 181
	i32 84, ; 182
	i32 35, ; 183
	i32 15, ; 184
	i32 51, ; 185
	i32 67, ; 186
	i32 124, ; 187
	i32 13, ; 188
	i32 84, ; 189
	i32 49, ; 190
	i32 30, ; 191
	i32 47, ; 192
	i32 48, ; 193
	i32 133, ; 194
	i32 128, ; 195
	i32 70, ; 196
	i32 75, ; 197
	i32 34, ; 198
	i32 103, ; 199
	i32 63, ; 200
	i32 107, ; 201
	i32 64, ; 202
	i32 131, ; 203
	i32 52, ; 204
	i32 0, ; 205
	i32 39, ; 206
	i32 21, ; 207
	i32 127, ; 208
	i32 144, ; 209
	i32 9, ; 210
	i32 88, ; 211
	i32 30, ; 212
	i32 44, ; 213
	i32 80, ; 214
	i32 97, ; 215
	i32 100, ; 216
	i32 70, ; 217
	i32 63, ; 218
	i32 136, ; 219
	i32 131, ; 220
	i32 23, ; 221
	i32 115, ; 222
	i32 24, ; 223
	i32 32, ; 224
	i32 132, ; 225
	i32 2, ; 226
	i32 127, ; 227
	i32 42, ; 228
	i32 137, ; 229
	i32 16, ; 230
	i32 15, ; 231
	i32 32, ; 232
	i32 67, ; 233
	i32 0, ; 234
	i32 43, ; 235
	i32 107, ; 236
	i32 112, ; 237
	i32 117, ; 238
	i32 17, ; 239
	i32 106, ; 240
	i32 110, ; 241
	i32 22, ; 242
	i32 41, ; 243
	i32 66, ; 244
	i32 43, ; 245
	i32 37, ; 246
	i32 45, ; 247
	i32 100, ; 248
	i32 4, ; 249
	i32 74, ; 250
	i32 141, ; 251
	i32 139, ; 252
	i32 5, ; 253
	i32 24, ; 254
	i32 141, ; 255
	i32 18, ; 256
	i32 50, ; 257
	i32 58, ; 258
	i32 79, ; 259
	i32 17, ; 260
	i32 101, ; 261
	i32 134, ; 262
	i32 25, ; 263
	i32 77, ; 264
	i32 93, ; 265
	i32 76, ; 266
	i32 97, ; 267
	i32 35, ; 268
	i32 96, ; 269
	i32 20, ; 270
	i32 48, ; 271
	i32 119, ; 272
	i32 101, ; 273
	i32 10, ; 274
	i32 10, ; 275
	i32 87, ; 276
	i32 8, ; 277
	i32 20, ; 278
	i32 75, ; 279
	i32 73, ; 280
	i32 124, ; 281
	i32 126, ; 282
	i32 11, ; 283
	i32 4, ; 284
	i32 136, ; 285
	i32 76, ; 286
	i32 92, ; 287
	i32 78, ; 288
	i32 14, ; 289
	i32 13, ; 290
	i32 9 ; 291
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
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
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ f1b7113872c8db3dfee70d11925e81bb752dc8d0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
