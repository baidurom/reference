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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .locals 12
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

    move-result v8

    if-eqz v8, :cond_2

    .line 138
    :cond_1
    :goto_0
    return-void

    .line 102
    :cond_2
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 103
    .local v5, intent:Landroid/content/Intent;
    const-string v8, "android.intent.action.QUICKVIEW"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v8, "Data"

    invoke-virtual {v5, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v8, "Type"

    move/from16 v0, p4

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const-string v8, "Style"

    move/from16 v0, p5

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    const-string v8, "AnimType"

    move/from16 v0, p6

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    const-string v8, "CallAppID"

    move-object/from16 v0, p7

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 110
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    const-string v2, ""

    .line 111
    .local v2, appPackageName:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 112
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 114
    :cond_3
    const-string v8, "HostAppName"

    invoke-virtual {v5, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    if-nez p2, :cond_4

    if-eqz p3, :cond_5

    .line 116
    :cond_4
    const-string v8, "Touch_Point_X"

    invoke-virtual {v5, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    const-string v8, "Touch_Point_Y"

    invoke-virtual {v5, v8, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    :cond_5
    invoke-virtual {p0, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_1

    .line 121
    const v8, #string@search_baidu_web#t

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, " "

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, url:Ljava/lang/String;
    const v8, #string@search_baidu_web#t

    const/4 v9, 0x1

    :try_start_0
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "utf-8"

    invoke-static {p1, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 130
    :goto_1
    :try_start_1
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 131
    .local v7, webSearchIntent:Landroid/content/Intent;
    const-string v8, "android.intent.category.BROWSABLE"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const/high16 v8, 0x1000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 134
    .end local v7           #webSearchIntent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 135
    .local v3, ee:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v3}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 125
    .end local v3           #ee:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v4

    .line 126
    .local v4, ex:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method
