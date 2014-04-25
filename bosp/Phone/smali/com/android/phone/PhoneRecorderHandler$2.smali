.class Lcom/android/phone/PhoneRecorderHandler$2;
.super Ljava/lang/Object;
.source "PhoneRecorderHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneRecorderHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneRecorderHandler;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneRecorderHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/phone/PhoneRecorderHandler$2;->this$0:Lcom/android/phone/PhoneRecorderHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderHandler$2;->this$0:Lcom/android/phone/PhoneRecorderHandler;

    #calls: Lcom/android/phone/PhoneRecorderHandler;->checkRecordDisk()V
    invoke-static {v0}, Lcom/android/phone/PhoneRecorderHandler;->access$000(Lcom/android/phone/PhoneRecorderHandler;)V

    .line 53
    return-void
.end method
