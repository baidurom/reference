.class Lcom/mediatek/audioprofile/AudioProfileService$2;
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
    .line 219
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRingerVolumeChanged(IILjava/lang/String;)V
    .locals 5
    .parameter "oldVolume"
    .parameter "newVolume"
    .parameter "extra"

    .prologue
    .line 222
    if-ne p1, p2, :cond_1

    .line 223
    const-string v3, "AudioProfileService"

    const-string/jumbo v4, "onRingerVolumeChanged with Volume don\'t change, do nothing!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$700(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileService;->access$100(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 227
    .local v0, activeProfileState:Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$100(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v1

    .line 230
    .local v1, activeScenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService;->access$200()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 231
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3, v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    if-eq v3, p2, :cond_0

    .line 232
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileService;->access$100(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->notifyRingerVolumeChanged(IILjava/lang/String;)V
    invoke-static {v3, p1, p2, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->access$800(Lcom/mediatek/audioprofile/AudioProfileService;IILjava/lang/String;)V

    .line 233
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileService;->access$100(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->syncRingerVolumeToProfile(Ljava/lang/String;I)V
    invoke-static {v3, v4, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->access$600(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I)V

    .line 234
    const-string v3, "AudioProfileService"

    const-string v4, "CMCC: onRingerVolumeChanged: ringer volume changed, sysn to active profile except silent!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :cond_2
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileService$6;->$SwitchMap$com$mediatek$audioprofile$AudioProfileManager$Scenario:[I

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 268
    if-lez p1, :cond_0

    if-nez p2, :cond_0

    .line 269
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileService;->access$400(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->notifyRingerVolumeChanged(IILjava/lang/String;)V
    invoke-static {v3, p1, p2, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->access$800(Lcom/mediatek/audioprofile/AudioProfileService;IILjava/lang/String;)V

    .line 270
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileService;->access$400(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->syncRingerVolumeToProfile(Ljava/lang/String;I)V
    invoke-static {v3, v4, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->access$600(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I)V

    .line 271
    const-string v3, "AudioProfileService"

    const-string/jumbo v4, "onRingerVolumeChanged: sync volume 1->0 to last active profile when it cause ringemode change!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    :pswitch_0
    if-lez p2, :cond_0

    const/4 v3, 0x7

    if-eq p2, v3, :cond_0

    .line 243
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, generalProfilekey:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->syncRingerVolumeToProfile(Ljava/lang/String;I)V
    invoke-static {v3, v2, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->access$600(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I)V

    .line 245
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-virtual {v3, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;)V

    .line 246
    const-string v3, "AudioProfileService"

    const-string/jumbo v4, "onRingerVolumeChanged in outdoor profile, so change to general profile!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 252
    .end local v2           #generalProfilekey:Ljava/lang/String;
    :pswitch_1
    iget v3, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    if-eq v3, p2, :cond_0

    .line 255
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileService;->access$100(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->notifyRingerVolumeChanged(IILjava/lang/String;)V
    invoke-static {v3, p1, p2, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->access$800(Lcom/mediatek/audioprofile/AudioProfileService;IILjava/lang/String;)V

    .line 256
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    #getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileService;->access$100(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/audioprofile/AudioProfileService;->syncRingerVolumeToProfile(Ljava/lang/String;I)V
    invoke-static {v3, v4, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->access$600(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I)V

    .line 257
    const-string v3, "AudioProfileService"

    const-string/jumbo v4, "onRingerVolumeChanged: ringer volume changed, sysn to active profile except silent, meeting and outdoor!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
