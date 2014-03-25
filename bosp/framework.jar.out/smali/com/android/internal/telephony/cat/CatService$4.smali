.class Lcom/android/internal/telephony/cat/CatService$4;
.super Landroid/content/BroadcastReceiver;
.source "CatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static final EXTRA_VALUE_REMOVE_SIM:Ljava/lang/String; = "REMOVE"

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CatService;)V
    .locals 0
    .parameter

    .prologue
    .line 2129
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2135
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2136
    .local v1, action:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CatServiceReceiver action: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2138
    const-string v9, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2139
    const-string/jumbo v9, "remove event list because of ipo shutdown"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2140
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    const/4 v10, 0x0

    #setter for: Lcom/android/internal/telephony/cat/CatService;->mEventList:[B
    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatService;->access$402(Lcom/android/internal/telephony/cat/CatService;[B)[B

    .line 2141
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    .line 2156
    :cond_0
    :goto_0
    const-string v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2157
    const-string/jumbo v9, "simId"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2158
    .local v4, id:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SIM state change, id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", simId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mSimId:I
    invoke-static {v10}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2159
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mSimId:I
    invoke-static {v9}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v9

    if-ne v4, v9, :cond_1

    .line 2160
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    const-string/jumbo v10, "ss"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatService;->access$602(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)Ljava/lang/String;

    .line 2161
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #setter for: Lcom/android/internal/telephony/cat/CatService;->simIdfromIntent:I
    invoke-static {v9, v4}, Lcom/android/internal/telephony/cat/CatService;->access$702(Lcom/android/internal/telephony/cat/CatService;I)I

    .line 2162
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "simIdfromIntent["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->simIdfromIntent:I
    invoke-static {v10}, Lcom/android/internal/telephony/cat/CatService;->access$700(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "],simState["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/internal/telephony/cat/CatService;->access$600(Lcom/android/internal/telephony/cat/CatService;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2163
    const-string v9, "ABSENT"

    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/internal/telephony/cat/CatService;->access$600(Lcom/android/internal/telephony/cat/CatService;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2164
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #calls: Lcom/android/internal/telephony/cat/CatService;->clearCachedDisplayText(I)V
    invoke-static {v9, v4}, Lcom/android/internal/telephony/cat/CatService;->access$100(Lcom/android/internal/telephony/cat/CatService;I)V

    .line 2208
    .end local v4           #id:I
    :cond_1
    :goto_1
    return-void

    .line 2142
    :cond_2
    const-string v9, "android.intent.action.IVSR_NOTIFY"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2143
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mSimId:I
    invoke-static {v9}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v9

    const-string/jumbo v10, "simId"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 2147
    const-string v9, "action"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2148
    .local v6, ivsrAction:Ljava/lang/String;
    const-string/jumbo v9, "start"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2149
    const-string v9, "[IVSR set IVSR flag"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2150
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    const/4 v10, 0x1

    #setter for: Lcom/android/internal/telephony/cat/CatService;->isIvsrBootUp:Z
    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatService;->access$502(Lcom/android/internal/telephony/cat/CatService;Z)Z

    .line 2151
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    const/16 v10, 0xe

    const-wide/32 v11, 0xea60

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/internal/telephony/cat/CatService;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2168
    .end local v6           #ivsrAction:Ljava/lang/String;
    :cond_3
    const-string v9, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2170
    const-string v9, "get SIM_DETECTED begin"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2171
    const-string/jumbo v9, "simDetectStatus"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2172
    .local v8, status:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SIM_DETECTED, status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2173
    const-string v9, "REMOVE"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2175
    const-string/jumbo v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 2176
    .local v3, iTel:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_5

    .line 2178
    const/4 v5, 0x1

    .line 2180
    .local v5, isSimInserted:Z
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mSimId:I
    invoke-static {v9}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v9

    invoke-interface {v3, v9}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v5

    .line 2181
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SIM_DETECTED, isSimInserted: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", simId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mSimId:I
    invoke-static {v10}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2182
    if-nez v5, :cond_4

    .line 2185
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2198
    .end local v3           #iTel:Lcom/android/internal/telephony/ITelephony;
    .end local v5           #isSimInserted:Z
    :cond_4
    :goto_2
    const-string v9, "get SIM_DETECTED end"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2188
    .restart local v3       #iTel:Lcom/android/internal/telephony/ITelephony;
    .restart local v5       #isSimInserted:Z
    :catch_0
    move-exception v2

    .line 2190
    .local v2, ex:Ljava/lang/Exception;
    const-string v9, "Query Sim insert status fail"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 2195
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v5           #isSimInserted:Z
    :cond_5
    const-string v9, "ITelephony is null"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 2199
    .end local v3           #iTel:Lcom/android/internal/telephony/ITelephony;
    .end local v8           #status:Ljava/lang/String;
    :cond_6
    const-string v9, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2200
    const-string/jumbo v9, "simId"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2201
    .local v0, SIMID:I
    const-string/jumbo v9, "phoneName"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2202
    .local v7, newType:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GSM/CDMA changes, instant sim id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mSimId:I
    invoke-static {v10}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", sim id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", new type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2203
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mSimId:I
    invoke-static {v9}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v9

    if-ne v0, v9, :cond_1

    const-string v9, "CDMA"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2205
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    goto/16 :goto_1
.end method
