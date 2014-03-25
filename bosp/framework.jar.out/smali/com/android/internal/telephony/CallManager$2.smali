.class Lcom/android/internal/telephony/CallManager$2;
.super Ljava/lang/Object;
.source "CallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/CallManager;->setAudioMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CallManager;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CallManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3010
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager$2;->this$0:Lcom/android/internal/telephony/CallManager;

    iput p2, p0, Lcom/android/internal/telephony/CallManager$2;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 3012
    const-string v11, "/sys/devices/platform/Accdet_Driver/driver/accdet_call_state"

    new-array v12, v3, [Ljava/lang/Object;

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3014
    .local v0, callStateFilePath:Ljava/lang/String;
    :try_start_0
    iget v11, p0, Lcom/android/internal/telephony/CallManager$2;->val$value:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 3015
    .local v8, state:Ljava/lang/String;
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 3016
    .local v5, fw:Ljava/io/FileWriter;
    invoke-virtual {v5, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 3017
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V

    .line 3018
    const-string v11, "CallManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Call state for Accdet is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3024
    .end local v5           #fw:Ljava/io/FileWriter;
    .end local v8           #state:Ljava/lang/String;
    :goto_0
    const-string v11, "/sys/devices/platform/mtk-kpd/driver/kpd_call_state"

    new-array v12, v3, [Ljava/lang/Object;

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3026
    .local v1, callStateFilePath2:Ljava/lang/String;
    :try_start_1
    iget v11, p0, Lcom/android/internal/telephony/CallManager$2;->val$value:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 3027
    .local v9, state2:Ljava/lang/String;
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 3028
    .local v6, fw2:Ljava/io/FileWriter;
    invoke-virtual {v6, v9}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 3029
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V

    .line 3030
    const-string v11, "CallManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Call state for kpd is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3036
    .end local v6           #fw2:Ljava/io/FileWriter;
    .end local v9           #state2:Ljava/lang/String;
    :goto_1
    const-string v11, "/sys/devices/platform/battery/Charging_CallState"

    new-array v12, v3, [Ljava/lang/Object;

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3038
    .local v2, callStateFilePath3:Ljava/lang/String;
    :try_start_2
    iget v11, p0, Lcom/android/internal/telephony/CallManager$2;->val$value:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    const/4 v3, 0x1

    .line 3039
    .local v3, call_existed:I
    :cond_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 3040
    .local v10, state3:Ljava/lang/String;
    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 3041
    .local v7, fw3:Ljava/io/FileWriter;
    invoke-virtual {v7, v10}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 3042
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V

    .line 3043
    const-string v11, "CallManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Call state for Charging Battery (call_existed=1,else=0) is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3047
    .end local v3           #call_existed:I
    .end local v7           #fw3:Ljava/io/FileWriter;
    .end local v10           #state3:Ljava/lang/String;
    :goto_2
    return-void

    .line 3019
    .end local v1           #callStateFilePath2:Ljava/lang/String;
    .end local v2           #callStateFilePath3:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 3020
    .local v4, e:Ljava/lang/Exception;
    const-string v11, "CallManager"

    const-string v12, ""

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3031
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #callStateFilePath2:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 3032
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v11, "CallManager"

    const-string v12, ""

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3044
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v2       #callStateFilePath3:Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 3045
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v11, "CallManager"

    const-string v12, ""

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
