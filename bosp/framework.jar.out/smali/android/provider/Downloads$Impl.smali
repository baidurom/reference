.class public final Landroid/provider/Downloads$Impl;
.super Ljava/lang/Object;
.source "Downloads.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Downloads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Impl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Downloads$Impl$RequestHeaders;
    }
.end annotation


# static fields
.field public static final ACTION_DOWNLOAD_COMPLETED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETED"

.field public static final ACTION_NOTIFICATION_CLICKED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

.field public static final ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri; = null

.field public static final COLUMN_ALLOWED_NETWORK_TYPES:Ljava/lang/String; = "allowed_network_types"

.field public static final COLUMN_ALLOW_METERED:Ljava/lang/String; = "allow_metered"

.field public static final COLUMN_ALLOW_ROAMING:Ljava/lang/String; = "allow_roaming"

.field public static final COLUMN_APP_DATA:Ljava/lang/String; = "entity"

.field public static final COLUMN_BYPASS_RECOMMENDED_SIZE_LIMIT:Ljava/lang/String; = "bypass_recommended_size_limit"

.field public static final COLUMN_CONTROL:Ljava/lang/String; = "control"

.field public static final COLUMN_COOKIE_DATA:Ljava/lang/String; = "cookiedata"

.field public static final COLUMN_CURRENT_BYTES:Ljava/lang/String; = "current_bytes"

.field public static final COLUMN_DELETED:Ljava/lang/String; = "deleted"

.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_DESTINATION:Ljava/lang/String; = "destination"

.field public static final COLUMN_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field public static final COLUMN_FILE_NAME_HINT:Ljava/lang/String; = "hint"

.field public static final COLUMN_IS_PUBLIC_API:Ljava/lang/String; = "is_public_api"

.field public static final COLUMN_IS_VISIBLE_IN_DOWNLOADS_UI:Ljava/lang/String; = "is_visible_in_downloads_ui"

.field public static final COLUMN_LAST_MODIFICATION:Ljava/lang/String; = "lastmod"

.field public static final COLUMN_LAST_UPDATESRC:Ljava/lang/String; = "lastUpdateSrc"

.field public static final COLUMN_MEDIAPROVIDER_URI:Ljava/lang/String; = "mediaprovider_uri"

.field public static final COLUMN_MEDIA_SCANNED:Ljava/lang/String; = "scanned"

.field public static final COLUMN_MIME_TYPE:Ljava/lang/String; = "mimetype"

.field public static final COLUMN_NOTIFICATION_CLASS:Ljava/lang/String; = "notificationclass"

.field public static final COLUMN_NOTIFICATION_EXTRAS:Ljava/lang/String; = "notificationextras"

.field public static final COLUMN_NOTIFICATION_PACKAGE:Ljava/lang/String; = "notificationpackage"

.field public static final COLUMN_NO_INTEGRITY:Ljava/lang/String; = "no_integrity"

.field public static final COLUMN_OMA_DOWNLOAD_DD_FILE_INFO_DESCRIPTION:Ljava/lang/String; = "OMA_Download_DDFileInfo_Description"

.field public static final COLUMN_OMA_DOWNLOAD_DD_FILE_INFO_NAME:Ljava/lang/String; = "OMA_Download_DDFileInfo_Name"

.field public static final COLUMN_OMA_DOWNLOAD_DD_FILE_INFO_SIZE:Ljava/lang/String; = "OMA_Download_DDFileInfo_Size"

.field public static final COLUMN_OMA_DOWNLOAD_DD_FILE_INFO_TYPE:Ljava/lang/String; = "OMA_Download_DDFileInfo_Type"

.field public static final COLUMN_OMA_DOWNLOAD_DD_FILE_INFO_VENDOR:Ljava/lang/String; = "OMA_Download_DDFileInfo_Vendor"

.field public static final COLUMN_OMA_DOWNLOAD_FLAG:Ljava/lang/String; = "OMA_Download"

.field public static final COLUMN_OMA_DOWNLOAD_INSTALL_NOTIFY_URL:Ljava/lang/String; = "OMA_Download_Install_Notify_Url"

.field public static final COLUMN_OMA_DOWNLOAD_NEXT_URL:Ljava/lang/String; = "OMA_Download_Next_Url"

.field public static final COLUMN_OMA_DOWNLOAD_OBJECT_URL:Ljava/lang/String; = "OMA_Download_Object_Url"

.field public static final COLUMN_OMA_DOWNLOAD_STATUS:Ljava/lang/String; = "OMA_Download_Status"

.field public static final COLUMN_OTHER_UID:Ljava/lang/String; = "otheruid"

.field public static final COLUMN_PASSWORD:Ljava/lang/String; = "password"

.field public static final COLUMN_REFERER:Ljava/lang/String; = "referer"

.field public static final COLUMN_STATUS:Ljava/lang/String; = "status"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_TOTAL_BYTES:Ljava/lang/String; = "total_bytes"

.field public static final COLUMN_URI:Ljava/lang/String; = "uri"

.field public static final COLUMN_USERNAME:Ljava/lang/String; = "username"

.field public static final COLUMN_USER_AGENT:Ljava/lang/String; = "useragent"

.field public static final COLUMN_VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTINUE_DOWNLOAD_WITH_SAME_FILENAME:Ljava/lang/String; = "continue_download_with_same_filename"

.field public static final CONTROL_PAUSED:I = 0x1

.field public static final CONTROL_RUN:I = 0x0

.field public static final DESTINATION_CACHE_PARTITION:I = 0x1

.field public static final DESTINATION_CACHE_PARTITION_NOROAMING:I = 0x3

.field public static final DESTINATION_CACHE_PARTITION_PURGEABLE:I = 0x2

.field public static final DESTINATION_EXTERNAL:I = 0x0

.field public static final DESTINATION_FILE_URI:I = 0x4

.field public static final DESTINATION_NON_DOWNLOADMANAGER_DOWNLOAD:I = 0x6

.field public static final DESTINATION_SYSTEMCACHE_PARTITION:I = 0x5

.field public static final DOWNLOAD_PATH_SELECTED_FROM_FILEMANAGER:Ljava/lang/String; = "download_path_selected_from_filemanager"

.field public static final DRM_RIGHT_VALID:Ljava/lang/String; = "drm_right_valid"

.field public static final LAST_UPDATESRC_DONT_NOTIFY_DOWNLOADSVC:I = 0x1

.field public static final LAST_UPDATESRC_NOT_RELEVANT:I = 0x0

.field public static final MIN_ARTIFICIAL_ERROR_STATUS:I = 0x1e8

.field public static final MTK_OMA_DOWNLOAD_SUPPORT:Z = true

.field public static final OMADL_OCCUR_ERROR_NEED_NOTIFY:Ljava/lang/String; = "OMADL_ERROR_NEED_NOTIFY"

.field public static final OMADL_STATUS_DOWNLOAD_COMPLETELY:I = 0xc8

.field public static final OMADL_STATUS_ERROR_ALERTDIALOG_SHOWED:I = 0x257

.field public static final OMADL_STATUS_ERROR_ATTRIBUTE_MISMATCH:I = 0x200

.field public static final OMADL_STATUS_ERROR_INSTALL_FAILED:I = 0x190

.field public static final OMADL_STATUS_ERROR_INSUFFICIENT_MEMORY:I = 0x193

.field public static final OMADL_STATUS_ERROR_INVALID_DDVERSION:I = 0x203

.field public static final OMADL_STATUS_ERROR_INVALID_DESCRIPTOR:I = 0x194

.field public static final OMADL_STATUS_ERROR_NON_ACCEPTABLE_CONTENT:I = 0x1ec

.field public static final OMADL_STATUS_ERROR_USER_CANCELLED:I = 0x1ea

.field public static final OMADL_STATUS_ERROR_USER_DOWNLOAD_MEDIA_OBJECT:I = 0x1eb

.field public static final OMADL_STATUS_HAS_NEXT_URL:I = 0xcb

.field public static final OMADL_STATUS_PARSE_DDFILE_SUCCESS:I = 0xc9

.field public static final PERMISSION_ACCESS:Ljava/lang/String; = "android.permission.ACCESS_DOWNLOAD_MANAGER"

.field public static final PERMISSION_ACCESS_ADVANCED:Ljava/lang/String; = "android.permission.ACCESS_DOWNLOAD_MANAGER_ADVANCED"

.field public static final PERMISSION_ACCESS_ALL:Ljava/lang/String; = "android.permission.ACCESS_ALL_DOWNLOADS"

.field public static final PERMISSION_CACHE:Ljava/lang/String; = "android.permission.ACCESS_CACHE_FILESYSTEM"

.field public static final PERMISSION_CACHE_NON_PURGEABLE:Ljava/lang/String; = "android.permission.DOWNLOAD_CACHE_NON_PURGEABLE"

.field public static final PERMISSION_NO_NOTIFICATION:Ljava/lang/String; = "android.permission.DOWNLOAD_WITHOUT_NOTIFICATION"

.field public static final PERMISSION_SEND_INTENTS:Ljava/lang/String; = "android.permission.SEND_DOWNLOAD_COMPLETED_INTENTS"

.field public static final PUBLICLY_ACCESSIBLE_DOWNLOADS_URI:Landroid/net/Uri; = null

.field public static final PUBLICLY_ACCESSIBLE_DOWNLOADS_URI_SEGMENT:Ljava/lang/String; = "public_downloads"

.field public static final STATUS_BAD_REQUEST:I = 0x190

.field public static final STATUS_BLOCKED:I = 0x1f2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_CANCELED:I = 0x1ea

.field public static final STATUS_CANNOT_RESUME:I = 0x1e9

.field public static final STATUS_DEVICE_NOT_FOUND_ERROR:I = 0xc7

.field public static final STATUS_FILE_ALREADY_EXISTS_ERROR:I = 0x1e8

.field public static final STATUS_FILE_ERROR:I = 0x1ec

.field public static final STATUS_HTTP_DATA_ERROR:I = 0x1ef

.field public static final STATUS_HTTP_EXCEPTION:I = 0x1f0

.field public static final STATUS_INSUFFICIENT_SPACE_ERROR:I = 0xc6

.field public static final STATUS_LENGTH_REQUIRED:I = 0x19b

.field public static final STATUS_NEED_HTTP_AUTH:I = 0x191

.field public static final STATUS_NOT_ACCEPTABLE:I = 0x196

.field public static final STATUS_PAUSED_BY_APP:I = 0xc1

.field public static final STATUS_PENDING:I = 0xbe

.field public static final STATUS_PRECONDITION_FAILED:I = 0x19c

.field public static final STATUS_QUEUED_FOR_WIFI:I = 0xc4

.field public static final STATUS_RUNNING:I = 0xc0

.field public static final STATUS_SUCCESS:I = 0xc8

.field public static final STATUS_TOO_MANY_REDIRECTS:I = 0x1f1

.field public static final STATUS_UNHANDLED_HTTP_CODE:I = 0x1ee

.field public static final STATUS_UNHANDLED_REDIRECT:I = 0x1ed

.field public static final STATUS_UNKNOWN_ERROR:I = 0x1eb

.field public static final STATUS_WAITING_FOR_NETWORK:I = 0xc3

.field public static final STATUS_WAITING_TO_RETRY:I = 0xc2

.field public static final VISIBILITY_HIDDEN:I = 0x2

.field public static final VISIBILITY_VISIBLE:I = 0x0

.field public static final VISIBILITY_VISIBLE_NOTIFY_COMPLETED:I = 0x1

.field public static final _DATA:Ljava/lang/String; = "_data"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-string v0, "content://downloads/my_downloads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    .line 102
    const-string v0, "content://downloads/all_downloads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    .line 112
    const-string v0, "content://downloads/public_downloads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Downloads$Impl;->PUBLICLY_ACCESSIBLE_DOWNLOADS_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNotificationToBeDisplayed(I)Z
    .locals 2
    .parameter "visibility"

    .prologue
    const/4 v0, 0x1

    .line 835
    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusClientError(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 818
    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusCompleted(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 844
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-lt p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x190

    if-lt p0, v0, :cond_2

    const/16 v0, 0x258

    if-ge p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusError(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 811
    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    const/16 v0, 0x258

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusInformational(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 797
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusServerError(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 825
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_0

    const/16 v0, 0x258

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusSuccess(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 804
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static statusToString(I)Ljava/lang/String;
    .locals 1
    .parameter "status"

    .prologue
    .line 1016
    sparse-switch p0, :sswitch_data_0

    .line 1041
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1017
    :sswitch_0
    const-string v0, "PENDING"

    goto :goto_0

    .line 1018
    :sswitch_1
    const-string v0, "RUNNING"

    goto :goto_0

    .line 1019
    :sswitch_2
    const-string v0, "PAUSED_BY_APP"

    goto :goto_0

    .line 1020
    :sswitch_3
    const-string v0, "WAITING_TO_RETRY"

    goto :goto_0

    .line 1021
    :sswitch_4
    const-string v0, "WAITING_FOR_NETWORK"

    goto :goto_0

    .line 1022
    :sswitch_5
    const-string v0, "QUEUED_FOR_WIFI"

    goto :goto_0

    .line 1023
    :sswitch_6
    const-string v0, "INSUFFICIENT_SPACE_ERROR"

    goto :goto_0

    .line 1024
    :sswitch_7
    const-string v0, "DEVICE_NOT_FOUND_ERROR"

    goto :goto_0

    .line 1025
    :sswitch_8
    const-string v0, "SUCCESS"

    goto :goto_0

    .line 1026
    :sswitch_9
    const-string v0, "BAD_REQUEST"

    goto :goto_0

    .line 1027
    :sswitch_a
    const-string v0, "NOT_ACCEPTABLE"

    goto :goto_0

    .line 1028
    :sswitch_b
    const-string v0, "LENGTH_REQUIRED"

    goto :goto_0

    .line 1029
    :sswitch_c
    const-string v0, "PRECONDITION_FAILED"

    goto :goto_0

    .line 1030
    :sswitch_d
    const-string v0, "FILE_ALREADY_EXISTS_ERROR"

    goto :goto_0

    .line 1031
    :sswitch_e
    const-string v0, "CANNOT_RESUME"

    goto :goto_0

    .line 1032
    :sswitch_f
    const-string v0, "CANCELED"

    goto :goto_0

    .line 1033
    :sswitch_10
    const-string v0, "UNKNOWN_ERROR"

    goto :goto_0

    .line 1034
    :sswitch_11
    const-string v0, "FILE_ERROR"

    goto :goto_0

    .line 1035
    :sswitch_12
    const-string v0, "UNHANDLED_REDIRECT"

    goto :goto_0

    .line 1036
    :sswitch_13
    const-string v0, "UNHANDLED_HTTP_CODE"

    goto :goto_0

    .line 1037
    :sswitch_14
    const-string v0, "HTTP_DATA_ERROR"

    goto :goto_0

    .line 1038
    :sswitch_15
    const-string v0, "HTTP_EXCEPTION"

    goto :goto_0

    .line 1039
    :sswitch_16
    const-string v0, "TOO_MANY_REDIRECTS"

    goto :goto_0

    .line 1040
    :sswitch_17
    const-string v0, "BLOCKED"

    goto :goto_0

    .line 1016
    :sswitch_data_0
    .sparse-switch
        0xbe -> :sswitch_0
        0xc0 -> :sswitch_1
        0xc1 -> :sswitch_2
        0xc2 -> :sswitch_3
        0xc3 -> :sswitch_4
        0xc4 -> :sswitch_5
        0xc6 -> :sswitch_6
        0xc7 -> :sswitch_7
        0xc8 -> :sswitch_8
        0x190 -> :sswitch_9
        0x196 -> :sswitch_a
        0x19b -> :sswitch_b
        0x19c -> :sswitch_c
        0x1e8 -> :sswitch_d
        0x1e9 -> :sswitch_e
        0x1ea -> :sswitch_f
        0x1eb -> :sswitch_10
        0x1ec -> :sswitch_11
        0x1ed -> :sswitch_12
        0x1ee -> :sswitch_13
        0x1ef -> :sswitch_14
        0x1f0 -> :sswitch_15
        0x1f1 -> :sswitch_16
        0x1f2 -> :sswitch_17
    .end sparse-switch
.end method
