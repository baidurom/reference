.class Lcom/android/phone/InCallScreen$RecordDiskCheckRunnable;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordDiskCheckRunnable"
.end annotation


# instance fields
.field private isStoreToSdcard:Z

.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method private constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 1
    .parameter

    .prologue
    .line 5006
    iput-object p1, p0, Lcom/android/phone/InCallScreen$RecordDiskCheckRunnable;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5007
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen$RecordDiskCheckRunnable;->isStoreToSdcard:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5006
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen$RecordDiskCheckRunnable;-><init>(Lcom/android/phone/InCallScreen;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5009
    iget-object v0, p0, Lcom/android/phone/InCallScreen$RecordDiskCheckRunnable;->this$0:Lcom/android/phone/InCallScreen;

    iget-boolean v1, p0, Lcom/android/phone/InCallScreen$RecordDiskCheckRunnable;->isStoreToSdcard:Z

    #calls: Lcom/android/phone/InCallScreen;->checkRecordDisk(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$3000(Lcom/android/phone/InCallScreen;Z)V

    .line 5010
    return-void
.end method

.method public setExternalStorage(Z)V
    .locals 0
    .parameter "storeToSdcard"

    .prologue
    .line 5013
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen$RecordDiskCheckRunnable;->isStoreToSdcard:Z

    .line 5014
    return-void
.end method
