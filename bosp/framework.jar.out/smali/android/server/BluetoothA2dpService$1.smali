.class Landroid/server/BluetoothA2dpService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothA2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothA2dpService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 156
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    const-string v9, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 157
    const-string v9, "android.bluetooth.adapter.extra.STATE"

    const/high16 v10, -0x8000

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 159
    .local v7, state:I
    packed-switch v7, :pswitch_data_0

    .line 240
    .end local v7           #state:I
    :cond_0
    :goto_0
    return-void

    .line 161
    .restart local v7       #state:I
    :pswitch_0
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->onBluetoothEnable()V
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$400(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    .line 164
    :pswitch_1
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->onBluetoothDisable()V
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    .line 167
    .end local v7           #state:I
    :cond_1
    const-string v9, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 168
    monitor-enter p0

    .line 169
    :try_start_0
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$600(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 170
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$600(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 171
    .restart local v7       #state:I
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v10, 0x0

    #calls: Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v9, v2, v7, v10}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;II)V

    .line 173
    .end local v7           #state:I
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 174
    :cond_3
    const-string v9, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 175
    const-string v9, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 176
    .local v8, streamType:I
    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    .line 177
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v9}, Landroid/server/BluetoothA2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v6

    .line 179
    .local v6, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_0

    iget-object v10, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v9, 0x0

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    #calls: Landroid/server/BluetoothA2dpService;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v10, v9}, Landroid/server/BluetoothA2dpService;->access$800(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 180
    const/4 v9, 0x0

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, address:Ljava/lang/String;
    const-string v9, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 183
    .local v3, newVolLevel:I
    const-string v9, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 185
    .local v4, oldVolLevel:I
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$900(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, path:Ljava/lang/String;
    if-le v3, v4, :cond_4

    .line 187
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeUpNative(Ljava/lang/String;)Z
    invoke-static {v9, v5}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 188
    :cond_4
    if-ge v3, v4, :cond_0

    .line 189
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeDownNative(Ljava/lang/String;)Z
    invoke-static {v9, v5}, Landroid/server/BluetoothA2dpService;->access$1100(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 193
    .end local v1           #address:Ljava/lang/String;
    .end local v3           #newVolLevel:I
    .end local v4           #oldVolLevel:I
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v8           #streamType:I
    :cond_5
    const-string v9, "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERUP"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 194
    const-string v9, "FM Power On!"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$000(Ljava/lang/String;)V

    .line 195
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mA2dpDisconnecting:I
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 196
    const-string v9, "A2dp is disconnecting,return."

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$000(Ljava/lang/String;)V

    .line 197
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v10, 0x1

    #setter for: Landroid/server/BluetoothA2dpService;->mFMResult:I
    invoke-static {v9, v10}, Landroid/server/BluetoothA2dpService;->access$1302(Landroid/server/BluetoothA2dpService;I)I

    .line 198
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->fmSendIntent()V
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;)V

    goto/16 :goto_0

    .line 201
    :cond_6
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mFMoverBTon:Z
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$100(Landroid/server/BluetoothA2dpService;)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mFMStartReq:Z
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$1500(Landroid/server/BluetoothA2dpService;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 204
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mFMOverBtMode:Z
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$200(Landroid/server/BluetoothA2dpService;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 205
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->fmThroughPath()I
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$1600(Landroid/server/BluetoothA2dpService;)I

    move-result v9

    if-nez v9, :cond_7

    .line 206
    const-string v9, "FM_VIA_CONTROLLER"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$000(Ljava/lang/String;)V

    .line 207
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->fmOverBtViaController()V
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$1700(Landroid/server/BluetoothA2dpService;)V

    goto/16 :goto_0

    .line 209
    :cond_7
    const-string v9, "FM_VIA_HOST"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$000(Ljava/lang/String;)V

    .line 210
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->fmOverBtViaHost()V
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$1800(Landroid/server/BluetoothA2dpService;)V

    goto/16 :goto_0

    .line 214
    :cond_8
    const-string v9, "FM was Power On,ignore."

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$000(Ljava/lang/String;)V

    .line 215
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v10, 0x2

    #setter for: Landroid/server/BluetoothA2dpService;->mFMResult:I
    invoke-static {v9, v10}, Landroid/server/BluetoothA2dpService;->access$1302(Landroid/server/BluetoothA2dpService;I)I

    .line 216
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->fmSendIntent()V
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;)V

    goto/16 :goto_0

    .line 218
    :cond_9
    const-string v9, "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERDOWN"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 219
    const-string v9, "FM Power Off!"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$000(Ljava/lang/String;)V

    .line 220
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mFMoverBTon:Z
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$100(Landroid/server/BluetoothA2dpService;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    .line 221
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v10, 0x0

    #setter for: Landroid/server/BluetoothA2dpService;->mFMoverBTon:Z
    invoke-static {v9, v10}, Landroid/server/BluetoothA2dpService;->access$102(Landroid/server/BluetoothA2dpService;Z)Z

    .line 223
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mFMOverBtMode:Z
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$200(Landroid/server/BluetoothA2dpService;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 224
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->fmStop()V
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;)V

    goto/16 :goto_0

    .line 227
    :cond_a
    const-string v9, "FM was Power down,ignore."

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$000(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    :cond_b
    const-string v9, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 230
    const-string v9, "Receive WifiManager.WIFI_STATE_CHANGED_ACTION."

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$000(Ljava/lang/String;)V

    .line 231
    const-string/jumbo v9, "wifi_state"

    const/4 v10, 0x4

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 232
    .restart local v7       #state:I
    const/4 v9, 0x3

    if-ne v7, v9, :cond_c

    .line 233
    const-string v9, "Wifi is on."

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$000(Ljava/lang/String;)V

    .line 234
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->decA2dpThroughput4WifiOn()V
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$1900(Landroid/server/BluetoothA2dpService;)V

    goto/16 :goto_0

    .line 235
    :cond_c
    const/4 v9, 0x1

    if-ne v7, v9, :cond_0

    .line 236
    const-string v9, "Wifi is off."

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$000(Ljava/lang/String;)V

    .line 237
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->incA2dpThroughput4WifiOff()V
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$2000(Landroid/server/BluetoothA2dpService;)V

    goto/16 :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
