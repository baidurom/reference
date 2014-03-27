.class Lcom/android/phone/PhoneInterfaceManager$ScAddr;
.super Ljava/lang/Object;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScAddr"
.end annotation


# instance fields
.field public scAddr:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "addr"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$ScAddr;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManager$ScAddr;->scAddr:Ljava/lang/String;

    .line 81
    return-void
.end method
