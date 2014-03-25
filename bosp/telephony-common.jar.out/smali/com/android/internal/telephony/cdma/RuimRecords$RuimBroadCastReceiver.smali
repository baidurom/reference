.class Lcom/android/internal/telephony/cdma/RuimRecords$RuimBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RuimRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RuimBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/RuimRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 1174
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$RuimBroadCastReceiver;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/RuimRecords;Lcom/android/internal/telephony/cdma/RuimRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1174
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/RuimRecords$RuimBroadCastReceiver;-><init>(Lcom/android/internal/telephony/cdma/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1177
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1178
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$RuimBroadCastReceiver;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RuimBroadCastReceiver action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1179
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$RuimBroadCastReceiver;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #calls: Lcom/android/internal/telephony/cdma/RuimRecords;->setDefaultNameByLocale()V
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$2800(Lcom/android/internal/telephony/cdma/RuimRecords;)V

    .line 1181
    :cond_0
    return-void
.end method
