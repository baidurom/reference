.class public Lcom/baidu/ifttt/util/ActivityUtil;
.super Ljava/lang/Object;
.source "ActivityUtil.java"


# instance fields
.field public mBm:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconId:I

.field public mIntent:Landroid/content/Intent;

.field public mLabel:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/baidu/ifttt/util/ActivityUtil;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public resolveInfo()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 32
    iget-object v5, p0, Lcom/baidu/ifttt/util/ActivityUtil;->mIntent:Landroid/content/Intent;

    const/high16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    iget-object v5, p0, Lcom/baidu/ifttt/util/ActivityUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 34
    .local v2, pm:Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lcom/baidu/ifttt/util/ActivityUtil;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v5, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 35
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_0

    .line 36
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 37
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/ifttt/util/ActivityUtil;->mLabel:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/ifttt/util/ActivityUtil;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 39
    iget-object v1, p0, Lcom/baidu/ifttt/util/ActivityUtil;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 40
    .local v1, bmDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/ifttt/util/ActivityUtil;->mBm:Landroid/graphics/Bitmap;

    .line 41
    const/4 v4, 0x1

    .line 43
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v1           #bmDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return v4
.end method

.method public resolveInfo(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/baidu/ifttt/util/ActivityUtil;->mIntent:Landroid/content/Intent;

    .line 28
    invoke-virtual {p0}, Lcom/baidu/ifttt/util/ActivityUtil;->resolveInfo()Z

    move-result v0

    return v0
.end method
