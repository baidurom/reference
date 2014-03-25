.class Lcom/baidu/service/power/Policy$7;
.super Ljava/lang/Object;
.source "Policy.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/service/power/Policy;->playLowBatterySound(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/service/power/Policy;


# direct methods
.method constructor <init>(Lcom/baidu/service/power/Policy;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/baidu/service/power/Policy$7;->this$0:Lcom/baidu/service/power/Policy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7
    .parameter "soundPool"
    .parameter "sampleId"
    .parameter "status"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 431
    iget-object v0, p0, Lcom/baidu/service/power/Policy$7;->this$0:Lcom/baidu/service/power/Policy;

    #getter for: Lcom/baidu/service/power/Policy;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/baidu/service/power/Policy;->access$200(Lcom/baidu/service/power/Policy;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/service/power/Policy$7;->this$0:Lcom/baidu/service/power/Policy;

    #getter for: Lcom/baidu/service/power/Policy;->mSoundPoolId:I
    invoke-static {v1}, Lcom/baidu/service/power/Policy;->access$100(Lcom/baidu/service/power/Policy;)I

    move-result v1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 432
    return-void
.end method
