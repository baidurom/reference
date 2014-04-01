.class public Landroid/util/FeatureData;
.super Ljava/lang/Object;
.source "FeatureData.java"


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.baidu.network.action.FeatureData"

.field private static final EXTRAID:Ljava/lang/String; = "com.baidu.network.extra.id"

.field public static final MAGNIFIER_TEXT:Ljava/lang/String; = "mag_text"

.field public static final MAGNIFIER_WEB:Ljava/lang/String; = "mag_web"

.field public static final MULTITHEME:Ljava/lang/String; = "multitheme"

.field public static final WORDSEARCH_TEXT:Ljava/lang/String; = "search_text"

.field public static final WORDSEARCH_WEB:Ljava/lang/String; = "search_web"

.field public static final WORDSEG_TEXT:Ljava/lang/String; = "seg_text"

.field public static final WORDSEG_WEB:Ljava/lang/String; = "seg_web"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "ctx"
    .parameter "id"

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.network.action.FeatureData"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.baidu.network.extra.id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 27
    return-void
.end method
