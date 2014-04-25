.class public Lcom/android/phone/VoiceSearchActivity;
.super Landroid/app/Activity;
.source "VoiceSearchActivity.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "VoiceSearchActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/android/phone/VoiceSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 22
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 23
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, number:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, DialIntent:Landroid/content/Intent;
    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 31
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/phone/VoiceSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 37
    .end local v0           #DialIntent:Landroid/content/Intent;
    .end local v2           #number:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 44
    invoke-virtual {p0}, Lcom/android/phone/VoiceSearchActivity;->finish()V

    .line 45
    return-void
.end method
