; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [146 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [292 x i32] [
	i32 38948123, ; 0: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 0
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 59
	i32 42244203, ; 2: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 9
	i32 42639949, ; 3: System.Threading.Thread => 0x28aa24d => 135
	i32 67008169, ; 4: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 5: Microsoft.Maui.Graphics.dll => 0x44bb714 => 58
	i32 83839681, ; 6: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 17
	i32 117431740, ; 7: System.Runtime.InteropServices => 0x6ffddbc => 124
	i32 136584136, ; 8: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 32
	i32 140062828, ; 9: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 25
	i32 159306688, ; 10: System.ComponentModel.Annotations => 0x97ed3c0 => 96
	i32 165246403, ; 11: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 64
	i32 182336117, ; 12: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 83
	i32 205061960, ; 13: System.ComponentModel => 0xc38ff48 => 99
	i32 230752869, ; 14: Microsoft.CSharp.dll => 0xdc10265 => 91
	i32 246610117, ; 15: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 122
	i32 254259026, ; 16: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 35
	i32 317674968, ; 17: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 18: Xamarin.AndroidX.Activity.dll => 0x13031348 => 60
	i32 321963286, ; 19: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 8
	i32 342366114, ; 20: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 71
	i32 379916513, ; 21: System.Threading.Thread.dll => 0x16a510e1 => 135
	i32 385762202, ; 22: System.Memory.dll => 0x16fe439a => 111
	i32 395744057, ; 23: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 409257351, ; 24: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 28
	i32 442565967, ; 25: System.Collections => 0x1a61054f => 95
	i32 450948140, ; 26: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 70
	i32 456227837, ; 27: System.Web.HttpUtility.dll => 0x1b317bfd => 137
	i32 459347974, ; 28: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 128
	i32 469710990, ; 29: System.dll => 0x1bff388e => 141
	i32 489220957, ; 30: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 6
	i32 498788369, ; 31: System.ObjectModel => 0x1dbae811 => 117
	i32 513247710, ; 32: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 52
	i32 538707440, ; 33: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 27
	i32 539058512, ; 34: Microsoft.Extensions.Logging => 0x20216150 => 49
	i32 571435654, ; 35: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 46
	i32 627609679, ; 36: Xamarin.AndroidX.CustomView => 0x2568904f => 68
	i32 627931235, ; 37: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 662205335, ; 38: System.Text.Encodings.Web.dll => 0x27787397 => 132
	i32 672442732, ; 39: System.Collections.Concurrent => 0x2814a96c => 92
	i32 690569205, ; 40: System.Xml.Linq.dll => 0x29293ff5 => 138
	i32 722857257, ; 41: System.Runtime.Loader.dll => 0x2b15ed29 => 125
	i32 759454413, ; 42: System.Net.Requests => 0x2d445acd => 115
	i32 775507847, ; 43: System.IO.Compression => 0x2e394f87 => 107
	i32 777317022, ; 44: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 45: Microsoft.Extensions.Options => 0x2f0980eb => 51
	i32 804008546, ; 46: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 39
	i32 804715423, ; 47: System.Data.Common => 0x2ff6fb9f => 101
	i32 823281589, ; 48: System.Private.Uri.dll => 0x311247b5 => 118
	i32 830298997, ; 49: System.IO.Compression.Brotli => 0x317d5b75 => 106
	i32 869139383, ; 50: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 10
	i32 878954865, ; 51: System.Net.Http.Json => 0x3463c971 => 112
	i32 880668424, ; 52: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 24
	i32 904024072, ; 53: System.ComponentModel.Primitives.dll => 0x35e25008 => 97
	i32 918734561, ; 54: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 21
	i32 955402788, ; 55: Newtonsoft.Json => 0x38f24a24 => 59
	i32 961460050, ; 56: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 14
	i32 966729478, ; 57: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 87
	i32 967690846, ; 58: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 71
	i32 975874589, ; 59: System.Xml.XDocument => 0x3a2aaa1d => 140
	i32 987960067, ; 60: MauiBlazorHybridApp => 0x3ae31303 => 90
	i32 990727110, ; 61: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 23
	i32 992768348, ; 62: System.Collections.dll => 0x3b2c715c => 95
	i32 999186168, ; 63: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 48
	i32 1012816738, ; 64: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 81
	i32 1019214401, ; 65: System.Drawing => 0x3cbffa41 => 105
	i32 1028951442, ; 66: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 43
	i32 1035644815, ; 67: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 61
	i32 1036536393, ; 68: System.Drawing.Primitives.dll => 0x3dc84a49 => 104
	i32 1043950537, ; 69: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 4
	i32 1044663988, ; 70: System.Linq.Expressions.dll => 0x3e444eb4 => 109
	i32 1052210849, ; 71: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 73
	i32 1082857460, ; 72: System.ComponentModel.TypeConverter => 0x408b17f4 => 98
	i32 1084122840, ; 73: Xamarin.Kotlin.StdLib => 0x409e66d8 => 88
	i32 1098259244, ; 74: System => 0x41761b2c => 141
	i32 1108272742, ; 75: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 26
	i32 1117529484, ; 76: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 20
	i32 1118262833, ; 77: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 78: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1173126369, ; 79: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 44
	i32 1178241025, ; 80: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 78
	i32 1260983243, ; 81: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 82: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 69
	i32 1308624726, ; 83: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 11
	i32 1324164729, ; 84: System.Linq => 0x4eed2679 => 110
	i32 1336711579, ; 85: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 31
	i32 1373134921, ; 86: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 87: Xamarin.AndroidX.SavedState => 0x52114ed3 => 81
	i32 1406073936, ; 88: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 65
	i32 1408764838, ; 89: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 127
	i32 1430672901, ; 90: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1435222561, ; 91: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 87
	i32 1454105418, ; 92: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 45
	i32 1461004990, ; 93: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1462112819, ; 94: System.IO.Compression.dll => 0x57261233 => 107
	i32 1469204771, ; 95: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 62
	i32 1470490898, ; 96: Microsoft.Extensions.Primitives => 0x57a5e912 => 52
	i32 1480492111, ; 97: System.IO.Compression.Brotli.dll => 0x583e844f => 106
	i32 1521091094, ; 98: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 48
	i32 1526286932, ; 99: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 30
	i32 1543031311, ; 100: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 134
	i32 1546581739, ; 101: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 39
	i32 1622152042, ; 102: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 75
	i32 1624863272, ; 103: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 85
	i32 1636350590, ; 104: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 67
	i32 1639515021, ; 105: System.Net.Http.dll => 0x61b9038d => 113
	i32 1639986890, ; 106: System.Text.RegularExpressions => 0x61c036ca => 134
	i32 1654881142, ; 107: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 38
	i32 1657153582, ; 108: System.Runtime => 0x62c6282e => 129
	i32 1658251792, ; 109: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 86
	i32 1677501392, ; 110: System.Net.Primitives.dll => 0x63fca3d0 => 114
	i32 1679769178, ; 111: System.Security.Cryptography => 0x641f3e5a => 130
	i32 1729485958, ; 112: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 63
	i32 1743415430, ; 113: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1752605219, ; 114: MauiBlazorHybridApp.dll => 0x6876a223 => 90
	i32 1760259689, ; 115: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 37
	i32 1763938596, ; 116: System.Diagnostics.TraceSource.dll => 0x69239124 => 103
	i32 1766324549, ; 117: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 83
	i32 1770582343, ; 118: Microsoft.Extensions.Logging.dll => 0x6988f147 => 49
	i32 1780572499, ; 119: Mono.Android.Runtime.dll => 0x6a216153 => 144
	i32 1782862114, ; 120: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 121: Xamarin.AndroidX.Fragment => 0x6a96652d => 70
	i32 1793755602, ; 122: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 123: Xamarin.AndroidX.Loader => 0x6bcd3296 => 75
	i32 1813058853, ; 124: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 88
	i32 1813201214, ; 125: Xamarin.Google.Android.Material => 0x6c13413e => 86
	i32 1818569960, ; 126: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 79
	i32 1824175904, ; 127: System.Text.Encoding.Extensions => 0x6cbab720 => 131
	i32 1824722060, ; 128: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 127
	i32 1828688058, ; 129: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 50
	i32 1853025655, ; 130: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 131: System.Linq.Expressions => 0x6ec71a65 => 109
	i32 1870277092, ; 132: System.Reflection.Primitives => 0x6f7a29e4 => 123
	i32 1875935024, ; 133: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1893218855, ; 134: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 2
	i32 1910275211, ; 135: System.Collections.NonGeneric.dll => 0x71dc7c8b => 93
	i32 1939592360, ; 136: System.Private.Xml.Linq => 0x739bd4a8 => 119
	i32 1953182387, ; 137: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 13
	i32 1961813231, ; 138: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 82
	i32 1968388702, ; 139: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 40
	i32 2003115576, ; 140: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 141: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 73
	i32 2045470958, ; 142: System.Private.Xml => 0x79eb68ee => 120
	i32 2055257422, ; 143: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 72
	i32 2066184531, ; 144: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 145: System.Diagnostics.TraceSource => 0x7b6f419e => 103
	i32 2072397586, ; 146: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 47
	i32 2079903147, ; 147: System.Runtime.dll => 0x7bf8cdab => 129
	i32 2090596640, ; 148: System.Numerics.Vectors => 0x7c9bf920 => 116
	i32 2127167465, ; 149: System.Console => 0x7ec9ffe9 => 100
	i32 2142473426, ; 150: System.Collections.Specialized => 0x7fb38cd2 => 94
	i32 2159891885, ; 151: Microsoft.Maui => 0x80bd55ad => 56
	i32 2169148018, ; 152: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 153: Microsoft.Extensions.Options.dll => 0x820d22b3 => 51
	i32 2192057212, ; 154: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 50
	i32 2193016926, ; 155: System.ObjectModel.dll => 0x82b6c85e => 117
	i32 2201107256, ; 156: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 89
	i32 2201231467, ; 157: System.Net.Http => 0x8334206b => 113
	i32 2207618523, ; 158: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 159: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 41
	i32 2279755925, ; 160: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 80
	i32 2303942373, ; 161: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 162: System.Private.CoreLib.dll => 0x896b7878 => 142
	i32 2353062107, ; 163: System.Net.Primitives => 0x8c40e0db => 114
	i32 2366048013, ; 164: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 12
	i32 2368005991, ; 165: System.Xml.ReaderWriter.dll => 0x8d24e767 => 139
	i32 2371007202, ; 166: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 40
	i32 2395872292, ; 167: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2401565422, ; 168: System.Web.HttpUtility => 0x8f24faee => 137
	i32 2411328690, ; 169: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 35
	i32 2427813419, ; 170: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 171: System.Console.dll => 0x912896e5 => 100
	i32 2442556106, ; 172: Microsoft.JSInterop.dll => 0x919672ca => 53
	i32 2475788418, ; 173: Java.Interop.dll => 0x93918882 => 143
	i32 2480646305, ; 174: Microsoft.Maui.Controls => 0x93dba8a1 => 54
	i32 2503351294, ; 175: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 16
	i32 2538310050, ; 176: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 122
	i32 2550873716, ; 177: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2562349572, ; 178: Microsoft.CSharp => 0x98ba5a04 => 91
	i32 2570120770, ; 179: System.Text.Encodings.Web => 0x9930ee42 => 132
	i32 2576534780, ; 180: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 15
	i32 2585220780, ; 181: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 131
	i32 2585813321, ; 182: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 36
	i32 2592341985, ; 183: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 44
	i32 2593496499, ; 184: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 185: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 89
	i32 2617129537, ; 186: System.Private.Xml.dll => 0x9bfe3a41 => 120
	i32 2620871830, ; 187: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 67
	i32 2626831493, ; 188: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 189: System.Runtime.Loader => 0x9ec4cf01 => 125
	i32 2664396074, ; 190: System.Xml.XDocument.dll => 0x9ecf752a => 140
	i32 2665622720, ; 191: System.Drawing.Primitives => 0x9ee22cc0 => 104
	i32 2676780864, ; 192: System.Data.Common.dll => 0x9f8c6f40 => 101
	i32 2692077919, ; 193: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 38
	i32 2724373263, ; 194: System.Runtime.Numerics.dll => 0xa262a30f => 126
	i32 2732626843, ; 195: Xamarin.AndroidX.Activity => 0xa2e0939b => 60
	i32 2737747696, ; 196: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 62
	i32 2740698338, ; 197: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 1
	i32 2752995522, ; 198: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 199: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 55
	i32 2764765095, ; 200: Microsoft.Maui.dll => 0xa4caf7a7 => 56
	i32 2778768386, ; 201: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 84
	i32 2785988530, ; 202: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 203: Microsoft.Maui.Graphics => 0xa7008e0b => 58
	i32 2810250172, ; 204: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 65
	i32 2853208004, ; 205: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 84
	i32 2861189240, ; 206: Microsoft.Maui.Essentials => 0xaa8a4878 => 57
	i32 2892341533, ; 207: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 37
	i32 2909740682, ; 208: System.Private.CoreLib => 0xad6f1e8a => 142
	i32 2911054922, ; 209: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 47
	i32 2916838712, ; 210: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 85
	i32 2919462931, ; 211: System.Numerics.Vectors.dll => 0xae037813 => 116
	i32 2959614098, ; 212: System.ComponentModel.dll => 0xb0682092 => 99
	i32 2978675010, ; 213: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 69
	i32 2987532451, ; 214: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 82
	i32 3038032645, ; 215: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3053864966, ; 216: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 7
	i32 3057625584, ; 217: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 76
	i32 3059408633, ; 218: Mono.Android.Runtime => 0xb65adef9 => 144
	i32 3059793426, ; 219: System.ComponentModel.Primitives => 0xb660be12 => 97
	i32 3159123045, ; 220: System.Reflection.Primitives.dll => 0xbc4c6465 => 123
	i32 3178803400, ; 221: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 77
	i32 3220365878, ; 222: System.Threading => 0xbff2e236 => 136
	i32 3258312781, ; 223: Xamarin.AndroidX.CardView => 0xc235e84d => 63
	i32 3280506390, ; 224: System.ComponentModel.Annotations.dll => 0xc3888e16 => 96
	i32 3305363605, ; 225: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 226: System.Net.Requests.dll => 0xc5b097e4 => 115
	i32 3317135071, ; 227: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 68
	i32 3346324047, ; 228: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 78
	i32 3357674450, ; 229: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 230: System.Text.Json => 0xc82afec1 => 133
	i32 3362522851, ; 231: Xamarin.AndroidX.Core => 0xc86c06e3 => 66
	i32 3366347497, ; 232: Java.Interop => 0xc8a662e9 => 143
	i32 3374999561, ; 233: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 80
	i32 3381016424, ; 234: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3406629867, ; 235: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 45
	i32 3428513518, ; 236: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 42
	i32 3458724246, ; 237: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 22
	i32 3464190856, ; 238: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 36
	i32 3471940407, ; 239: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 98
	i32 3476120550, ; 240: Mono.Android => 0xcf3163e6 => 145
	i32 3484440000, ; 241: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 242: System.Text.Json.dll => 0xcfbaacae => 133
	i32 3500000672, ; 243: Microsoft.JSInterop => 0xd09dc5a0 => 53
	i32 3509114376, ; 244: System.Xml.Linq => 0xd128d608 => 138
	i32 3580758918, ; 245: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3592228221, ; 246: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 33
	i32 3608519521, ; 247: System.Linq.dll => 0xd715a361 => 110
	i32 3641597786, ; 248: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 72
	i32 3643446276, ; 249: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 250: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 77
	i32 3657292374, ; 251: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 41
	i32 3672681054, ; 252: Mono.Android.dll => 0xdae8aa5e => 145
	i32 3724971120, ; 253: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 76
	i32 3737834244, ; 254: System.Net.Http.Json.dll => 0xdecad304 => 112
	i32 3748608112, ; 255: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 102
	i32 3751619990, ; 256: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 3
	i32 3786282454, ; 257: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 64
	i32 3792276235, ; 258: System.Collections.NonGeneric => 0xe2098b0b => 93
	i32 3802395368, ; 259: System.Collections.Specialized.dll => 0xe2a3f2e8 => 94
	i32 3823082795, ; 260: System.Security.Cryptography.dll => 0xe3df9d2b => 130
	i32 3841636137, ; 261: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 43
	i32 3849253459, ; 262: System.Runtime.InteropServices.dll => 0xe56ef253 => 124
	i32 3896106733, ; 263: System.Collections.Concurrent.dll => 0xe839deed => 92
	i32 3896760992, ; 264: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 66
	i32 3920221145, ; 265: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 19
	i32 3928044579, ; 266: System.Xml.ReaderWriter => 0xea213423 => 139
	i32 3931092270, ; 267: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 79
	i32 3955647286, ; 268: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 61
	i32 4025784931, ; 269: System.Memory => 0xeff49a63 => 111
	i32 4046471985, ; 270: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 55
	i32 4054681211, ; 271: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 121
	i32 4068434129, ; 272: System.Private.Xml.Linq.dll => 0xf27f60d1 => 119
	i32 4073602200, ; 273: System.Threading.dll => 0xf2ce3c98 => 136
	i32 4091086043, ; 274: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 5
	i32 4094352644, ; 275: Microsoft.Maui.Essentials.dll => 0xf40add04 => 57
	i32 4099507663, ; 276: System.Drawing.dll => 0xf45985cf => 105
	i32 4100113165, ; 277: System.Private.Uri => 0xf462c30d => 118
	i32 4103439459, ; 278: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 29
	i32 4126470640, ; 279: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 42
	i32 4127667938, ; 280: System.IO.FileSystem.Watcher => 0xf60736e2 => 108
	i32 4147896353, ; 281: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 121
	i32 4150914736, ; 282: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4164802419, ; 283: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 108
	i32 4181436372, ; 284: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 128
	i32 4182413190, ; 285: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 74
	i32 4213026141, ; 286: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 102
	i32 4249188766, ; 287: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 18
	i32 4271975918, ; 288: Microsoft.Maui.Controls.dll => 0xfea12dee => 54
	i32 4274976490, ; 289: System.Runtime.Numerics => 0xfecef6ea => 126
	i32 4292120959, ; 290: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 74
	i32 4294648842 ; 291: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 46
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [292 x i32] [
	i32 0, ; 0
	i32 59, ; 1
	i32 9, ; 2
	i32 135, ; 3
	i32 33, ; 4
	i32 58, ; 5
	i32 17, ; 6
	i32 124, ; 7
	i32 32, ; 8
	i32 25, ; 9
	i32 96, ; 10
	i32 64, ; 11
	i32 83, ; 12
	i32 99, ; 13
	i32 91, ; 14
	i32 122, ; 15
	i32 35, ; 16
	i32 30, ; 17
	i32 60, ; 18
	i32 8, ; 19
	i32 71, ; 20
	i32 135, ; 21
	i32 111, ; 22
	i32 34, ; 23
	i32 28, ; 24
	i32 95, ; 25
	i32 70, ; 26
	i32 137, ; 27
	i32 128, ; 28
	i32 141, ; 29
	i32 6, ; 30
	i32 117, ; 31
	i32 52, ; 32
	i32 27, ; 33
	i32 49, ; 34
	i32 46, ; 35
	i32 68, ; 36
	i32 19, ; 37
	i32 132, ; 38
	i32 92, ; 39
	i32 138, ; 40
	i32 125, ; 41
	i32 115, ; 42
	i32 107, ; 43
	i32 25, ; 44
	i32 51, ; 45
	i32 39, ; 46
	i32 101, ; 47
	i32 118, ; 48
	i32 106, ; 49
	i32 10, ; 50
	i32 112, ; 51
	i32 24, ; 52
	i32 97, ; 53
	i32 21, ; 54
	i32 59, ; 55
	i32 14, ; 56
	i32 87, ; 57
	i32 71, ; 58
	i32 140, ; 59
	i32 90, ; 60
	i32 23, ; 61
	i32 95, ; 62
	i32 48, ; 63
	i32 81, ; 64
	i32 105, ; 65
	i32 43, ; 66
	i32 61, ; 67
	i32 104, ; 68
	i32 4, ; 69
	i32 109, ; 70
	i32 73, ; 71
	i32 98, ; 72
	i32 88, ; 73
	i32 141, ; 74
	i32 26, ; 75
	i32 20, ; 76
	i32 16, ; 77
	i32 22, ; 78
	i32 44, ; 79
	i32 78, ; 80
	i32 2, ; 81
	i32 69, ; 82
	i32 11, ; 83
	i32 110, ; 84
	i32 31, ; 85
	i32 32, ; 86
	i32 81, ; 87
	i32 65, ; 88
	i32 127, ; 89
	i32 0, ; 90
	i32 87, ; 91
	i32 45, ; 92
	i32 6, ; 93
	i32 107, ; 94
	i32 62, ; 95
	i32 52, ; 96
	i32 106, ; 97
	i32 48, ; 98
	i32 30, ; 99
	i32 134, ; 100
	i32 39, ; 101
	i32 75, ; 102
	i32 85, ; 103
	i32 67, ; 104
	i32 113, ; 105
	i32 134, ; 106
	i32 38, ; 107
	i32 129, ; 108
	i32 86, ; 109
	i32 114, ; 110
	i32 130, ; 111
	i32 63, ; 112
	i32 1, ; 113
	i32 90, ; 114
	i32 37, ; 115
	i32 103, ; 116
	i32 83, ; 117
	i32 49, ; 118
	i32 144, ; 119
	i32 17, ; 120
	i32 70, ; 121
	i32 9, ; 122
	i32 75, ; 123
	i32 88, ; 124
	i32 86, ; 125
	i32 79, ; 126
	i32 131, ; 127
	i32 127, ; 128
	i32 50, ; 129
	i32 26, ; 130
	i32 109, ; 131
	i32 123, ; 132
	i32 8, ; 133
	i32 2, ; 134
	i32 93, ; 135
	i32 119, ; 136
	i32 13, ; 137
	i32 82, ; 138
	i32 40, ; 139
	i32 5, ; 140
	i32 73, ; 141
	i32 120, ; 142
	i32 72, ; 143
	i32 4, ; 144
	i32 103, ; 145
	i32 47, ; 146
	i32 129, ; 147
	i32 116, ; 148
	i32 100, ; 149
	i32 94, ; 150
	i32 56, ; 151
	i32 12, ; 152
	i32 51, ; 153
	i32 50, ; 154
	i32 117, ; 155
	i32 89, ; 156
	i32 113, ; 157
	i32 14, ; 158
	i32 41, ; 159
	i32 80, ; 160
	i32 18, ; 161
	i32 142, ; 162
	i32 114, ; 163
	i32 12, ; 164
	i32 139, ; 165
	i32 40, ; 166
	i32 13, ; 167
	i32 137, ; 168
	i32 35, ; 169
	i32 10, ; 170
	i32 100, ; 171
	i32 53, ; 172
	i32 143, ; 173
	i32 54, ; 174
	i32 16, ; 175
	i32 122, ; 176
	i32 11, ; 177
	i32 91, ; 178
	i32 132, ; 179
	i32 15, ; 180
	i32 131, ; 181
	i32 36, ; 182
	i32 44, ; 183
	i32 20, ; 184
	i32 89, ; 185
	i32 120, ; 186
	i32 67, ; 187
	i32 15, ; 188
	i32 125, ; 189
	i32 140, ; 190
	i32 104, ; 191
	i32 101, ; 192
	i32 38, ; 193
	i32 126, ; 194
	i32 60, ; 195
	i32 62, ; 196
	i32 1, ; 197
	i32 21, ; 198
	i32 55, ; 199
	i32 56, ; 200
	i32 84, ; 201
	i32 27, ; 202
	i32 58, ; 203
	i32 65, ; 204
	i32 84, ; 205
	i32 57, ; 206
	i32 37, ; 207
	i32 142, ; 208
	i32 47, ; 209
	i32 85, ; 210
	i32 116, ; 211
	i32 99, ; 212
	i32 69, ; 213
	i32 82, ; 214
	i32 34, ; 215
	i32 7, ; 216
	i32 76, ; 217
	i32 144, ; 218
	i32 97, ; 219
	i32 123, ; 220
	i32 77, ; 221
	i32 136, ; 222
	i32 63, ; 223
	i32 96, ; 224
	i32 7, ; 225
	i32 115, ; 226
	i32 68, ; 227
	i32 78, ; 228
	i32 24, ; 229
	i32 133, ; 230
	i32 66, ; 231
	i32 143, ; 232
	i32 80, ; 233
	i32 3, ; 234
	i32 45, ; 235
	i32 42, ; 236
	i32 22, ; 237
	i32 36, ; 238
	i32 98, ; 239
	i32 145, ; 240
	i32 23, ; 241
	i32 133, ; 242
	i32 53, ; 243
	i32 138, ; 244
	i32 31, ; 245
	i32 33, ; 246
	i32 110, ; 247
	i32 72, ; 248
	i32 28, ; 249
	i32 77, ; 250
	i32 41, ; 251
	i32 145, ; 252
	i32 76, ; 253
	i32 112, ; 254
	i32 102, ; 255
	i32 3, ; 256
	i32 64, ; 257
	i32 93, ; 258
	i32 94, ; 259
	i32 130, ; 260
	i32 43, ; 261
	i32 124, ; 262
	i32 92, ; 263
	i32 66, ; 264
	i32 19, ; 265
	i32 139, ; 266
	i32 79, ; 267
	i32 61, ; 268
	i32 111, ; 269
	i32 55, ; 270
	i32 121, ; 271
	i32 119, ; 272
	i32 136, ; 273
	i32 5, ; 274
	i32 57, ; 275
	i32 105, ; 276
	i32 118, ; 277
	i32 29, ; 278
	i32 42, ; 279
	i32 108, ; 280
	i32 121, ; 281
	i32 29, ; 282
	i32 108, ; 283
	i32 128, ; 284
	i32 74, ; 285
	i32 102, ; 286
	i32 18, ; 287
	i32 54, ; 288
	i32 126, ; 289
	i32 74, ; 290
	i32 46 ; 291
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

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
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ f1b7113872c8db3dfee70d11925e81bb752dc8d0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
