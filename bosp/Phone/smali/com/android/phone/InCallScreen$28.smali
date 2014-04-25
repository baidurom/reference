.class Lcom/android/phone/InCallScreen$28;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 7196
    iput-object p1, p0, Lcom/android/phone/InCallScreen$28;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 7198
    iget-object v0, p0, Lcom/android/phone/InCallScreen$28;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, p0, Lcom/android/phone/InCallScreen$28;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mRecordStart:Z
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$3800(Lcom/android/phone/InCallScreen;)Z

    move-result v1

    #calls: Lcom/android/phone/InCallScreen;->updateRecordView(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$3900(Lcom/android/phone/InCallScreen;Z)V

    .line 7199
    return-void
.end method
