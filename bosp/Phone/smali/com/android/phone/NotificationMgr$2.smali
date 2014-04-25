.class Lcom/android/phone/NotificationMgr$2;
.super Ljava/lang/Object;
.source "NotificationMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NotificationMgr;->notifyMissedCallCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NotificationMgr;


# direct methods
.method constructor <init>(Lcom/android/phone/NotificationMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$2;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 566
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.action.UNREAD_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "com.mediatek.intent.extra.UNREAD_NUMBER"

    iget-object v2, p0, Lcom/android/phone/NotificationMgr$2;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$500(Lcom/android/phone/NotificationMgr;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 568
    const-string v1, "com.mediatek.intent.extra.UNREAD_COMPONENT"

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.contacts"

    const-string v4, "com.android.contacts.activities.DialtactsActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 571
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$2;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->access$300(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 572
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$2;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->access$300(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com_android_contacts_mtk_unread"

    iget-object v3, p0, Lcom/android/phone/NotificationMgr$2;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I
    invoke-static {v3}, Lcom/android/phone/NotificationMgr;->access$500(Lcom/android/phone/NotificationMgr;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 576
    return-void
.end method
