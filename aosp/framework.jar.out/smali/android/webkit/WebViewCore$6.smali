.class Landroid/webkit/WebViewCore$6;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Landroid/webkit/NotificationPermissions$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore;->notificationPermissionsShowPrompt(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewCore;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter

    .prologue
    .line 669
    iput-object p1, p0, Landroid/webkit/WebViewCore$6;->this$0:Landroid/webkit/WebViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;Z)V
    .locals 3
    .parameter "origin"
    .parameter "allow"

    .prologue
    .line 672
    new-instance v0, Landroid/webkit/WebViewCore$NotificationPermissionsData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$NotificationPermissionsData;-><init>()V

    .line 673
    .local v0, localNotificationPermissionsData:Landroid/webkit/WebViewCore$NotificationPermissionsData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$NotificationPermissionsData;->mOrigin:Ljava/lang/String;

    .line 674
    iput-boolean p2, v0, Landroid/webkit/WebViewCore$NotificationPermissionsData;->mAllow:Z

    .line 675
    iget-object v1, p0, Landroid/webkit/WebViewCore$6;->this$0:Landroid/webkit/WebViewCore;

    const/16 v2, 0xe9

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 676
    return-void
.end method

.method public invokeEvent(Ljava/lang/String;I)V
    .locals 0
    .parameter "eventName"
    .parameter "pointer"

    .prologue
    .line 680
    return-void
.end method

.method public invokeNotificationID(II)V
    .locals 0
    .parameter "id"
    .parameter "counter"

    .prologue
    .line 684
    return-void
.end method
