.class Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView$1;
.super Ljava/lang/Object;
.source "UnlockerElement.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->setTouchState(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;


# direct methods
.method constructor <init>(Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;)V
    .locals 0
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView$1;->this$1:Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mediaPlayer"

    .prologue
    .line 503
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 504
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView$1;->this$1:Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->mp:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->access$302(Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 505
    return-void
.end method
