.class Lcom/android/phone/PhoneInterfaceManager$ScAddrGemini;
.super Ljava/lang/Object;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScAddrGemini"
.end annotation


# instance fields
.field public scAddr:Ljava/lang/String;

.field public simId:I

.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "addr"
    .parameter "id"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$ScAddrGemini;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManager$ScAddrGemini;->scAddr:Ljava/lang/String;

    .line 218
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 219
    :cond_0
    iput p3, p0, Lcom/android/phone/PhoneInterfaceManager$ScAddrGemini;->simId:I

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/PhoneInterfaceManager$ScAddrGemini;->simId:I

    goto :goto_0
.end method
