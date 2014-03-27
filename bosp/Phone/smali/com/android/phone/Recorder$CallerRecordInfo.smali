.class Lcom/android/phone/Recorder$CallerRecordInfo;
.super Ljava/lang/Object;
.source "Recorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Recorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallerRecordInfo"
.end annotation


# instance fields
.field mDisplayName:Ljava/lang/String;

.field mPhoneNumber:Ljava/lang/String;

.field mRecordPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/Recorder;


# direct methods
.method constructor <init>(Lcom/android/phone/Recorder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "phoneNumber"
    .parameter "displayName"
    .parameter "recordPath"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/phone/Recorder$CallerRecordInfo;->this$0:Lcom/android/phone/Recorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/android/phone/Recorder$CallerRecordInfo;->mPhoneNumber:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/android/phone/Recorder$CallerRecordInfo;->mDisplayName:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/android/phone/Recorder$CallerRecordInfo;->mRecordPath:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/Recorder$CallerRecordInfo;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/Recorder$CallerRecordInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/Recorder$CallerRecordInfo;->mRecordPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
