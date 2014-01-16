.class public Lcom/android/internal/util/SearchHelper;
.super Ljava/lang/Object;
.source "SearchHelper.java"


# static fields
.field public static final ANIM_TYPE_BOTTOM_UP:I = 0x4

.field public static final ANIM_TYPE_FADE_IN:I = 0x2

.field public static final ANIM_TYPE_IN_OUT:I = 0x5

.field public static final ANIM_TYPE_NORMAL:I = 0x1

.field public static final ANIM_TYPE_RIGHT_LEFT:I = 0x3

.field public static final CALL_APP_ID:Ljava/lang/String; = "delimitwordsearch"

.field private static final SEMIVIEW_ACTION:Ljava/lang/String; = "android.intent.action.QUICKVIEW"

.field private static final SEMIVIEW_ANIMTYPE:Ljava/lang/String; = "AnimType"

.field private static final SEMIVIEW_CALLAPPID:Ljava/lang/String; = "CallAppID"

.field private static final SEMIVIEW_DATA:Ljava/lang/String; = "Data"

.field private static final SEMIVIEW_KEY_HOSTAPPNAME:Ljava/lang/String; = "HostAppName"

.field private static final SEMIVIEW_STYLE:Ljava/lang/String; = "Style"

.field private static final SEMIVIEW_TOUCH_POINT_X:Ljava/lang/String; = "Touch_Point_X"

.field private static final SEMIVIEW_TOUCH_POINT_Y:Ljava/lang/String; = "Touch_Point_Y"

.field private static final SEMIVIEW_TYPE:Ljava/lang/String; = "Type"

.field public static final STYLE_NOPIN:I = 0x8

.field public static final STYLE_NOTITLEBAR:I = 0x2

.field public static final STYLE_NOZOOMBUTTON:I = 0x1

.field public static final STYLE_STABLE:I = 0x4

.field public static final TYPE_BAIKE_SEMIVIEW:I = 0x3

.field public static final TYPE_DEFAULT_SEMIVIEW:I = 0x2

.field public static final TYPE_TRANSLATOR_SEMIVIEW:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startSearch(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 8
    .parameter "context"
    .parameter "searchText"
    .parameter "startPointerX"
    .parameter "startPointerY"

    .prologue
    .line 59
    const/16 v5, 0xe

    .line 60
    .local v5, style:I
    const/4 v4, 0x2

    const/4 v6, 0x3

    const-string v7, "delimitwordsearch"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v7}, Lcom/android/internal/util/SearchHelper;->startSearch(Landroid/content/Context;Ljava/lang/String;IIIIILjava/lang/String;)V

    .line 62
    return-void
.end method

.method public static startSearch(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 8
    .parameter "context"
    .parameter "searchText"
    .parameter "startPointerX"
    .parameter "startPointerY"
    .parameter "type"

    .prologue
    .line 75
    const/16 v5, 0xe

    .line 76
    .local v5, style:I
    const/4 v6, 0x3

    const-string v7, "delimitwordsearch"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, Lcom/android/internal/util/SearchHelper;->startSearch(Landroid/content/Context;Ljava/lang/String;IIIIILjava/lang/String;)V

    .line 78
    return-void
.end method

.method public static startSearch(Landroid/content/Context;Ljava/lang/String;IIIIILjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "searchText"
    .parameter "startPointerX"
    .parameter "startPointerY"
    .parameter "type"
    .parameter "style"
    .parameter "animType"
    .parameter "callAppId"

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 98
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 102
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 103
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.QUICKVIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v3, "Data"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v3, "Type"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const-string v3, "Style"

    invoke-virtual {v2, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    const-string v3, "AnimType"

    invoke-virtual {v2, v3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    const-string v3, "CallAppID"

    invoke-virtual {v2, v3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 110
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    const-string v1, ""

    .line 111
    .local v1, appPackageName:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 112
    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 114
    :cond_3
    const-string v3, "HostAppName"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    if-nez p2, :cond_4

    if-eqz p3, :cond_5

    .line 116
    :cond_4
    const-string v3, "Touch_Point_X"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    const-string v3, "Touch_Point_Y"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    :cond_5
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_1

    .line 121
    invoke-static {p0, p1}, Lcom/android/internal/util/SearchHelper;->useBaiduSearch(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static useBaiduSearch(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "searchText"

    .prologue
    .line 127
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v2, "com.baidu.searchbox.action.SEARCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 131
    const-string v2, "key_value"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v2, "BROWSER_RESTART"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, p1}, Lcom/android/internal/util/SearchHelper;->useBrowerSearch(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static useBrowerSearch(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "searchText"

    .prologue
    const v7, #string@search_baidu_web#t

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 140
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, " "

    aput-object v5, v4, v6

    invoke-virtual {p0, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, url:Ljava/lang/String;
    const v4, #string@search_baidu_web#t

    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "utf-8"

    invoke-static {p1, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 149
    :goto_0
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 150
    .local v3, webSearchIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.BROWSABLE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    .end local v3           #webSearchIntent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 153
    .end local v1           #ex:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 154
    .local v0, ee:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method
