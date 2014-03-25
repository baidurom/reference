.class public Landroid/media/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field public static final FILE_TYPE_3GA:I = 0xc1

.field public static final FILE_TYPE_3GPP:I = 0x12f

.field public static final FILE_TYPE_3GPP2:I = 0x130

.field public static final FILE_TYPE_3GPP3:I = 0xc7

.field public static final FILE_TYPE_AAC:I = 0x6c

.field public static final FILE_TYPE_AMR:I = 0x68

.field public static final FILE_TYPE_APE:I = 0x6f

.field public static final FILE_TYPE_APK:I = 0x31f

.field public static final FILE_TYPE_ASF:I = 0x132

.field public static final FILE_TYPE_AVI:I = 0x135

.field public static final FILE_TYPE_AWB:I = 0x69

.field public static final FILE_TYPE_BMP:I = 0x194

.field public static final FILE_TYPE_FL:I = 0x259

.field public static final FILE_TYPE_FLA:I = 0xc4

.field public static final FILE_TYPE_FLAC:I = 0x6e

.field public static final FILE_TYPE_FLV:I = 0x18e

.field public static final FILE_TYPE_GIF:I = 0x192

.field public static final FILE_TYPE_HTML:I = 0x2bd

.field public static final FILE_TYPE_HTTPLIVE:I = 0x1f8

.field public static final FILE_TYPE_ICS:I = 0x31b

.field public static final FILE_TYPE_ICZ:I = 0x31c

.field public static final FILE_TYPE_IMY:I = 0xcb

.field public static final FILE_TYPE_JPEG:I = 0x191

.field public static final FILE_TYPE_JPS:I = 0x1f2

.field public static final FILE_TYPE_M3U:I = 0x1f5

.field public static final FILE_TYPE_M4A:I = 0x66

.field public static final FILE_TYPE_M4V:I = 0x12e

.field public static final FILE_TYPE_MID:I = 0xc9

.field public static final FILE_TYPE_MKA:I = 0x6d

.field public static final FILE_TYPE_MKV:I = 0x133

.field public static final FILE_TYPE_MP2:I = 0xc5

.field public static final FILE_TYPE_MP2PS:I = 0x320

.field public static final FILE_TYPE_MP2TS:I = 0x134

.field public static final FILE_TYPE_MP3:I = 0x65

.field public static final FILE_TYPE_MP4:I = 0x12d

.field public static final FILE_TYPE_MPO:I = 0x1f3

.field public static final FILE_TYPE_MS_EXCEL:I = 0x2c1

.field public static final FILE_TYPE_MS_POWERPOINT:I = 0x2c2

.field public static final FILE_TYPE_MS_WORD:I = 0x2c0

.field public static final FILE_TYPE_OGG:I = 0x6b

.field public static final FILE_TYPE_OGM:I = 0x321

.field public static final FILE_TYPE_PDF:I = 0x2be

.field public static final FILE_TYPE_PLS:I = 0x1f6

.field public static final FILE_TYPE_PNG:I = 0x193

.field public static final FILE_TYPE_QUICKTIME_AUDIO:I = 0xc2

.field public static final FILE_TYPE_QUICKTIME_VIDEO:I = 0x18d

.field public static final FILE_TYPE_RA:I = 0xc6

.field public static final FILE_TYPE_RM:I = 0x18f

.field public static final FILE_TYPE_RMVB:I = 0x18c

.field public static final FILE_TYPE_RV:I = 0x18b

.field public static final FILE_TYPE_SMF:I = 0xca

.field public static final FILE_TYPE_TEXT:I = 0x2bc

.field public static final FILE_TYPE_VCF:I = 0x31d

.field public static final FILE_TYPE_VCS:I = 0x31e

.field public static final FILE_TYPE_WAV:I = 0x67

.field public static final FILE_TYPE_WBMP:I = 0x195

.field public static final FILE_TYPE_WEBM:I = 0x136

.field public static final FILE_TYPE_WEBP:I = 0x196

.field public static final FILE_TYPE_WMA:I = 0x6a

.field public static final FILE_TYPE_WMV:I = 0x131

.field public static final FILE_TYPE_WPL:I = 0x1f7

.field public static final FILE_TYPE_XML:I = 0x2bf

.field public static final FILE_TYPE_ZIP:I = 0x2c3

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x65

.field private static final FIRST_DRM_FILE_TYPE:I = 0x259

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x191

.field private static final FIRST_MIDI_FILE_TYPE:I = 0xc9

.field private static final FIRST_MORE_IMAGE_FILE_TYPE:I = 0x1f2

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x1f5

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x12d

.field private static final FIRST_VIDEO_FILE_TYPE2:I = 0x320

.field private static final LAST_AUDIO_FILE_TYPE:I = 0xc7

.field private static final LAST_DRM_FILE_TYPE:I = 0x259

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x196

.field private static final LAST_MIDI_FILE_TYPE:I = 0xcb

.field private static final LAST_MORE_IMAGE_FILE_TYPE:I = 0x1f3

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x1f8

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x18f

.field private static final LAST_VIDEO_FILE_TYPE2:I = 0x321

.field private static final sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFileTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFormatToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const v8, 0xb902

    const/16 v7, 0x2c2

    const/16 v6, 0x6b

    const/16 v5, 0x300b

    const/16 v4, 0xc9

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    .line 207
    const-string v0, "MP3"

    const/16 v1, 0x65

    const-string v2, "audio/mpeg"

    const/16 v3, 0x3009

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 208
    const-string v0, "MPGA"

    const/16 v1, 0x65

    const-string v2, "audio/mpeg"

    const/16 v3, 0x3009

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 210
    const-string v0, "APE"

    const/16 v1, 0x6f

    const-string v2, "audio/ape"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 213
    const-string v0, "M4A"

    const/16 v1, 0x66

    const-string v2, "audio/mp4"

    invoke-static {v0, v1, v2, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 214
    const-string v0, "WAV"

    const/16 v1, 0x67

    const-string v2, "audio/x-wav"

    const/16 v3, 0x3008

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 215
    const-string v0, "AMR"

    const/16 v1, 0x68

    const-string v2, "audio/amr"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 216
    const-string v0, "AWB"

    const/16 v1, 0x69

    const-string v2, "audio/amr-wb"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 219
    const-string v0, "3GP"

    const/16 v1, 0xc7

    const-string v2, "audio/3gpp"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    const-string v0, "MP2"

    const/16 v1, 0x320

    const-string/jumbo v2, "video/mp2p"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 225
    const-string v0, "3GA"

    const/16 v1, 0xc1

    const-string v2, "audio/3gpp"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 227
    const-string v0, "MOV"

    const/16 v1, 0xc2

    const-string v2, "audio/quicktime"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 228
    const-string v0, "QT"

    const/16 v1, 0xc2

    const-string v2, "audio/quicktime"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 231
    const-string v0, "DCF"

    const/16 v1, 0x65

    const-string v2, "audio/mpeg"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 234
    invoke-static {}, Landroid/media/MediaFile;->isWMAEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const-string v0, "WMA"

    const/16 v1, 0x6a

    const-string v2, "audio/x-ms-wma"

    const v3, 0xb901

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 239
    :cond_0
    const-string v0, "OGG"

    const-string v1, "audio/vorbis"

    invoke-static {v0, v6, v1, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 240
    const-string v0, "OGG"

    const-string v1, "audio/ogg"

    invoke-static {v0, v6, v1, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 241
    const-string v0, "OGG"

    const-string v1, "application/ogg"

    invoke-static {v0, v6, v1, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 242
    const-string v0, "OGA"

    const-string v1, "application/ogg"

    invoke-static {v0, v6, v1, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 247
    const-string v0, "OGV"

    const/16 v1, 0x321

    const-string/jumbo v2, "video/ogm"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 248
    const-string v0, "OGM"

    const/16 v1, 0x321

    const-string/jumbo v2, "video/ogm"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 251
    const-string v0, "AAC"

    const/16 v1, 0x6c

    const-string v2, "audio/aac"

    const v3, 0xb903

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 252
    const-string v0, "AAC"

    const/16 v1, 0x6c

    const-string v2, "audio/aac-adts"

    const v3, 0xb903

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 253
    const-string v0, "MKA"

    const/16 v1, 0x6d

    const-string v2, "audio/x-matroska"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 255
    const-string v0, "MID"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 256
    const-string v0, "MIDI"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 257
    const-string v0, "XMF"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 258
    const-string v0, "RTTTL"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 259
    const-string v0, "SMF"

    const/16 v1, 0xca

    const-string v2, "audio/sp-midi"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 260
    const-string v0, "IMY"

    const/16 v1, 0xcb

    const-string v2, "audio/imelody"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 261
    const-string v0, "RTX"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 262
    const-string v0, "OTA"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 263
    const-string v0, "MXMF"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 265
    const-string v0, "MPEG"

    const/16 v1, 0x12d

    const-string/jumbo v2, "video/mpeg"

    invoke-static {v0, v1, v2, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 266
    const-string v0, "MPG"

    const/16 v1, 0x12d

    const-string/jumbo v2, "video/mpeg"

    invoke-static {v0, v1, v2, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 267
    const-string v0, "MP4"

    const/16 v1, 0x12d

    const-string/jumbo v2, "video/mp4"

    invoke-static {v0, v1, v2, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 268
    const-string v0, "M4V"

    const/16 v1, 0x12e

    const-string/jumbo v2, "video/mp4"

    invoke-static {v0, v1, v2, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 269
    const-string v0, "3GP"

    const/16 v1, 0x12f

    const-string/jumbo v2, "video/3gpp"

    const v3, 0xb984

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 270
    const-string v0, "3GPP"

    const/16 v1, 0x12f

    const-string/jumbo v2, "video/3gpp"

    const v3, 0xb984

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 271
    const-string v0, "3G2"

    const/16 v1, 0x130

    const-string/jumbo v2, "video/3gpp2"

    const v3, 0xb984

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 272
    const-string v0, "3GPP2"

    const/16 v1, 0x130

    const-string/jumbo v2, "video/3gpp2"

    const v3, 0xb984

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 273
    const-string v0, "MKV"

    const/16 v1, 0x133

    const-string/jumbo v2, "video/x-matroska"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 274
    const-string v0, "WEBM"

    const/16 v1, 0x136

    const-string/jumbo v2, "video/webm"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 275
    const-string v0, "TS"

    const/16 v1, 0x134

    const-string/jumbo v2, "video/mp2ts"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 277
    const-string v0, "MTS"

    const/16 v1, 0x134

    const-string/jumbo v2, "video/mp2ts"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 279
    const-string v0, "M2TS"

    const/16 v1, 0x134

    const-string/jumbo v2, "video/mp2ts"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 280
    const-string v0, "AVI"

    const/16 v1, 0x135

    const-string/jumbo v2, "video/avi"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 281
    const-string v0, "MOV"

    const/16 v1, 0x18d

    const-string/jumbo v2, "video/quicktime"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 282
    const-string v0, "QT"

    const/16 v1, 0x18d

    const-string/jumbo v2, "video/quicktime"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 285
    const-string v0, "FLV"

    const/16 v1, 0x18e

    const-string/jumbo v2, "video/x-flv"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 287
    const-string v0, "F4V"

    const/16 v1, 0x18e

    const-string/jumbo v2, "video/x-flv"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 290
    const-string v0, "PFV"

    const/16 v1, 0x18e

    const-string/jumbo v2, "video/x-flv"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 291
    const-string v0, "FLA"

    const/16 v1, 0xc4

    const-string v2, "audio/x-flv"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 295
    invoke-static {}, Landroid/media/MediaFile;->isWMVEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    const-string v0, "WMV"

    const/16 v1, 0x131

    const-string/jumbo v2, "video/x-ms-wmv"

    const v3, 0xb981

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 297
    const-string v0, "ASF"

    const/16 v1, 0x132

    const-string/jumbo v2, "video/x-ms-asf"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 300
    :cond_1
    const-string v0, "JPG"

    const/16 v1, 0x191

    const-string v2, "image/jpeg"

    const/16 v3, 0x3801

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 301
    const-string v0, "JPEG"

    const/16 v1, 0x191

    const-string v2, "image/jpeg"

    const/16 v3, 0x3801

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 302
    const-string v0, "GIF"

    const/16 v1, 0x192

    const-string v2, "image/gif"

    const/16 v3, 0x3807

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 303
    const-string v0, "PNG"

    const/16 v1, 0x193

    const-string v2, "image/png"

    const/16 v3, 0x380b

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 304
    const-string v0, "BMP"

    const/16 v1, 0x194

    const-string v2, "image/x-ms-bmp"

    const/16 v3, 0x3804

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 305
    const-string v0, "WBMP"

    const/16 v1, 0x195

    const-string v2, "image/vnd.wap.wbmp"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 306
    const-string v0, "WEBP"

    const/16 v1, 0x196

    const-string v2, "image/webp"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 309
    const-string v0, "MPO"

    const/16 v1, 0x1f3

    const-string v2, "image/mpo"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 319
    const-string v0, "M3U"

    const/16 v1, 0x1f5

    const-string v2, "audio/x-mpegurl"

    const v3, 0xba11

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 320
    const-string v0, "M3U"

    const/16 v1, 0x1f5

    const-string v2, "application/x-mpegurl"

    const v3, 0xba11

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 321
    const-string v0, "PLS"

    const/16 v1, 0x1f6

    const-string v2, "audio/x-scpls"

    const v3, 0xba14

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 322
    const-string v0, "WPL"

    const/16 v1, 0x1f7

    const-string v2, "application/vnd.ms-wpl"

    const v3, 0xba10

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 323
    const-string v0, "M3U8"

    const/16 v1, 0x1f8

    const-string v2, "application/vnd.apple.mpegurl"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 324
    const-string v0, "M3U8"

    const/16 v1, 0x1f8

    const-string v2, "audio/mpegurl"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 325
    const-string v0, "M3U8"

    const/16 v1, 0x1f8

    const-string v2, "audio/x-mpegurl"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 327
    const-string v0, "FL"

    const/16 v1, 0x259

    const-string v2, "application/x-android-drm-fl"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 329
    const-string v0, "TXT"

    const/16 v1, 0x2bc

    const-string/jumbo v2, "text/plain"

    const/16 v3, 0x3004

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 330
    const-string v0, "HTM"

    const/16 v1, 0x2bd

    const-string/jumbo v2, "text/html"

    const/16 v3, 0x3005

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 331
    const-string v0, "HTML"

    const/16 v1, 0x2bd

    const-string/jumbo v2, "text/html"

    const/16 v3, 0x3005

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 332
    const-string v0, "PDF"

    const/16 v1, 0x2be

    const-string v2, "application/pdf"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 333
    const-string v0, "DOC"

    const/16 v1, 0x2c0

    const-string v2, "application/msword"

    const v3, 0xba83

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 334
    const-string v0, "XLS"

    const/16 v1, 0x2c1

    const-string v2, "application/vnd.ms-excel"

    const v3, 0xba85

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 335
    const-string v0, "PPT"

    const-string v1, "application/mspowerpoint"

    const v2, 0xba86

    invoke-static {v0, v7, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 336
    const-string v0, "FLAC"

    const/16 v1, 0x6e

    const-string v2, "audio/flac"

    const v3, 0xb906

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 337
    const-string v0, "ZIP"

    const/16 v1, 0x2c3

    const-string v2, "application/zip"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 338
    const-string v0, "MPG"

    const/16 v1, 0x320

    const-string/jumbo v2, "video/mp2p"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 339
    const-string v0, "MPEG"

    const/16 v1, 0x320

    const-string/jumbo v2, "video/mp2p"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 349
    const-string v0, "MP2"

    const/16 v1, 0xc5

    const-string v2, "audio/mpeg"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 352
    const-string v0, "ICS"

    const/16 v1, 0x31b

    const-string/jumbo v2, "text/calendar"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 353
    const-string v0, "ICZ"

    const/16 v1, 0x31c

    const-string/jumbo v2, "text/calendar"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 356
    const-string v0, "VCF"

    const/16 v1, 0x31d

    const-string/jumbo v2, "text/x-vcard"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 357
    const-string v0, "VCS"

    const/16 v1, 0x31e

    const-string/jumbo v2, "text/x-vcalendar"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 360
    const-string v0, "APK"

    const/16 v1, 0x31f

    const-string v2, "application/vnd.android.package-archive"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 362
    const-string v0, "DOCX"

    const/16 v1, 0x2c0

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 363
    const-string v0, "DOTX"

    const/16 v1, 0x2c0

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 364
    const-string v0, "XLSX"

    const/16 v1, 0x2c1

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 365
    const-string v0, "XLTX"

    const/16 v1, 0x2c1

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 366
    const-string v0, "PPTX"

    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-static {v0, v7, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 367
    const-string v0, "POTX"

    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.template"

    invoke-static {v0, v7, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 368
    const-string v0, "PPSX"

    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    invoke-static {v0, v7, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 370
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "extension"
    .parameter "fileType"
    .parameter "mimeType"

    .prologue
    .line 171
    sget-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Landroid/media/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .parameter "extension"
    .parameter "fileType"
    .parameter "mimeType"
    .parameter "mtpFormatCode"

    .prologue
    .line 176
    invoke-static {p0, p1, p2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 177
    sget-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-void
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 419
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 420
    .local v1, lastSlash:I
    if-ltz v1, :cond_0

    .line 421
    add-int/lit8 v1, v1, 0x1

    .line 422
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 423
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 427
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 428
    .local v0, lastDot:I
    if-lez v0, :cond_1

    .line 429
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 431
    :cond_1
    return-object p0
.end method

.method public static getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .locals 3
    .parameter "path"

    .prologue
    .line 404
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 405
    .local v0, lastDot:I
    if-gez v0, :cond_0

    .line 406
    const/4 v1, 0x0

    .line 407
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFile$MediaFileType;

    goto :goto_0
.end method

.method public static getFileTypeBySuffix(Ljava/lang/String;)I
    .locals 2
    .parameter "filename"

    .prologue
    .line 470
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v0

    .line 471
    .local v0, mdeiaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v0, :cond_0

    .line 472
    const/4 v1, -0x1

    .line 474
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    goto :goto_0
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 435
    sget-object v1, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 436
    .local v0, value:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getFormatCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "fileName"
    .parameter "mimeType"

    .prologue
    .line 445
    if-eqz p1, :cond_0

    .line 446
    sget-object v3, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 447
    .local v2, value:Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 448
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 459
    .end local v2           #value:Ljava/lang/Integer;
    :goto_0
    return v3

    .line 451
    :cond_0
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 452
    .local v1, lastDot:I
    if-lez v1, :cond_1

    .line 453
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, extension:Ljava/lang/String;
    sget-object v3, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 455
    .restart local v2       #value:Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 456
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 459
    .end local v0           #extension:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/Integer;
    :cond_1
    const/16 v3, 0x3000

    goto :goto_0
.end method

.method public static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 440
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v0

    .line 441
    .local v0, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMimeTypeForFormatCode(I)Ljava/lang/String;
    .locals 2
    .parameter "formatCode"

    .prologue
    .line 463
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isAudioFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 373
    const/16 v0, 0x65

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc7

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0xc9

    if-lt p0, v0, :cond_2

    const/16 v0, 0xcb

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDrmFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    const/16 v0, 0x259

    .line 399
    if-lt p0, v0, :cond_0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImageFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 387
    const/16 v0, 0x191

    if-lt p0, v0, :cond_0

    const/16 v0, 0x196

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x1f2

    if-lt p0, v0, :cond_2

    const/16 v0, 0x1f3

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMimeTypeMedia(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 411
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 412
    .local v0, fileType:I
    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPlayListFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 394
    const/16 v0, 0x1f5

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f8

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 380
    const/16 v0, 0x12d

    if-lt p0, v0, :cond_0

    const/16 v0, 0x18f

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x320

    if-lt p0, v0, :cond_2

    const/16 v0, 0x321

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWMAEnabled()Z
    .locals 5

    .prologue
    .line 183
    invoke-static {}, Landroid/media/DecoderCapabilities;->getAudioDecoders()Ljava/util/List;

    move-result-object v2

    .line 184
    .local v2, decoders:Ljava/util/List;,"Ljava/util/List<Landroid/media/DecoderCapabilities$AudioDecoder;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 185
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 186
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/DecoderCapabilities$AudioDecoder;

    .line 187
    .local v1, decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    sget-object v4, Landroid/media/DecoderCapabilities$AudioDecoder;->AUDIO_DECODER_WMA:Landroid/media/DecoderCapabilities$AudioDecoder;

    if-ne v1, v4, :cond_0

    .line 188
    const/4 v4, 0x1

    .line 191
    .end local v1           #decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    :goto_1
    return v4

    .line 185
    .restart local v1       #decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    .end local v1           #decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static isWMVEnabled()Z
    .locals 5

    .prologue
    .line 195
    invoke-static {}, Landroid/media/DecoderCapabilities;->getVideoDecoders()Ljava/util/List;

    move-result-object v2

    .line 196
    .local v2, decoders:Ljava/util/List;,"Ljava/util/List<Landroid/media/DecoderCapabilities$VideoDecoder;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 197
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 198
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/DecoderCapabilities$VideoDecoder;

    .line 199
    .local v1, decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    sget-object v4, Landroid/media/DecoderCapabilities$VideoDecoder;->VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;

    if-ne v1, v4, :cond_0

    .line 200
    const/4 v4, 0x1

    .line 203
    .end local v1           #decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    :goto_1
    return v4

    .line 197
    .restart local v1       #decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    .end local v1           #decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
