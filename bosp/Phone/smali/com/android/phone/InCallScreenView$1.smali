.class Lcom/android/phone/InCallScreenView$1;
.super Ljava/lang/Object;
.source "InCallScreenView.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreenView;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreenView;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/phone/InCallScreenView$1;->this$0:Lcom/android/phone/InCallScreenView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 1
    .parameter "animation"
    .parameter "totalTime"
    .parameter "deltaTime"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/phone/InCallScreenView$1;->this$0:Lcom/android/phone/InCallScreenView;

    #calls: Lcom/android/phone/InCallScreenView;->animationTick(J)V
    invoke-static {v0, p4, p5}, Lcom/android/phone/InCallScreenView;->access$000(Lcom/android/phone/InCallScreenView;J)V

    .line 213
    return-void
.end method
