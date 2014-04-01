.class public Landroid/text/style/URLSpan;
.super Landroid/text/style/ClickableSpan;
.source "URLSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field private static final IS_CMCC:Z


# instance fields
.field private final mURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-string/jumbo v0, "ro.operator.optr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OP01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/text/style/URLSpan;->IS_CMCC:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/URLSpan;->mURL:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/text/style/URLSpan;->mURL:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0xb

    return v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Landroid/text/style/URLSpan;->mURL:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "widget"

    .prologue
    const/4 v7, 0x1

    .line 64
    invoke-virtual {p0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 65
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 66
    .local v1, context:Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v2, v8, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 67
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "com.android.browser.application_id"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    sget-boolean v8, Landroid/text/style/URLSpan;->IS_CMCC:Z

    if-eqz v8, :cond_4

    instance-of v8, p1, Landroid/widget/TextView;

    if-eqz v8, :cond_4

    move-object v5, p1

    .line 69
    check-cast v5, Landroid/widget/TextView;

    .line 70
    .local v5, tv:Landroid/widget/TextView;
    const/4 v3, 0x0

    .line 71
    .local v3, isWebURL:Z
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, scheme:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 73
    const-string v8, "http"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "https"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "rtsp"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    move v3, v7

    .line 77
    :cond_1
    :goto_0
    invoke-virtual {v5}, Landroid/widget/TextView;->isEnableShowUrlDialog()Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v3, :cond_3

    .line 78
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v8, 0x20500c3

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 80
    const v8, 0x20500c4

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 81
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 83
    const v7, #string@ok#t

    new-instance v8, Landroid/text/style/URLSpan$1;

    invoke-direct {v8, p0, v1, v2}, Landroid/text/style/URLSpan$1;-><init>(Landroid/text/style/URLSpan;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 90
    const/high16 v7, 0x104

    new-instance v8, Landroid/text/style/URLSpan$2;

    invoke-direct {v8, p0}, Landroid/text/style/URLSpan$2;-><init>(Landroid/text/style/URLSpan;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 96
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 103
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v3           #isWebURL:Z
    .end local v4           #scheme:Ljava/lang/String;
    .end local v5           #tv:Landroid/widget/TextView;
    :goto_1
    return-void

    .line 73
    .restart local v3       #isWebURL:Z
    .restart local v4       #scheme:Ljava/lang/String;
    .restart local v5       #tv:Landroid/widget/TextView;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 101
    .end local v3           #isWebURL:Z
    .end local v4           #scheme:Ljava/lang/String;
    .end local v5           #tv:Landroid/widget/TextView;
    :cond_4
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/text/style/URLSpan;->mURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    return-void
.end method
