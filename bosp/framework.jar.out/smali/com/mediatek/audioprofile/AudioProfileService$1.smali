.class Lcom/mediatek/audioprofile/AudioProfileService$1;
.super Lcom/mediatek/audioprofile/AudioProfileListener;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileService;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileService;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRingerModeChanged(I)V
    .locals 6
    .parameter "ringerMode"

    .prologue
    const/4 v5, 0x0

    .line 150
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I
    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileService;->access$000(Lcom/mediatek/audioprofile/AudioProfileService;)I

    move-result v2

    if-eq p1, v2, :cond_3

    .line 151
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileService;->access$100(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 153
    .local v0, activeScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService;->access$200()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMCC: onRingerModeChanged: ringermode changed by other app, change profile! ringerMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #setter for: Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I
    invoke-static {v2, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->access$002(Lcom/mediatek/audioprofile/AudioProfileService;I)I

    .line 156
    packed-switch p1, :pswitch_data_0

    .line 213
    .end local v0           #activeScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_0
    :goto_0
    return-void

    .line 161
    .restart local v0       #activeScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :pswitch_0
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    const-string v2, "AudioProfileService"

    const-string v3, "CMCC: RingerMode change to SILENT or VIBRATE, change profile to silent!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;Z)V

    goto :goto_0

    .line 170
    :pswitch_1
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    const-string v2, "AudioProfileService"

    const-string v3, "CMCC: RingerMode change to NORMAL, change profile to last active profile!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$400(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;Z)V

    goto :goto_0

    .line 177
    :cond_1
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRingerModeChanged: ringermode changed by other app, change profile! ringerMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #setter for: Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I
    invoke-static {v2, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->access$002(Lcom/mediatek/audioprofile/AudioProfileService;I)I

    .line 179
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 183
    :pswitch_2
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    const-string v2, "AudioProfileService"

    const-string v3, "RingerMode change to SILENT, change profile to silent!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;Z)V

    goto :goto_0

    .line 192
    :pswitch_3
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    const-string v2, "AudioProfileService"

    const-string v3, "RingerMode change to VIBRATE, change profile to meeting!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 201
    :pswitch_4
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    :cond_2
    const-string v2, "AudioProfileService"

    const-string v3, "RingerMode change to NORMAL, change profile to last active profile!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileService;->access$500(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 204
    .local v1, systemVolume:I
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$400(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->syncRingerVolumeToProfile(Ljava/lang/String;I)V
    invoke-static {v2, v3, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->access$600(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I)V

    .line 205
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$400(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 211
    .end local v0           #activeScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v1           #systemVolume:I
    :cond_3
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRingerModeChanged with the same as profile ringermode! ringerMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 179
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
