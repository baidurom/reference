.class Lcom/android/phone/PhoneInterfaceManager$PinMmiGemini;
.super Ljava/lang/Object;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinMmiGemini"
.end annotation


# instance fields
.field public dialString:Ljava/lang/String;

.field public simId:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter "dialString"
    .parameter "simId"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$PinMmiGemini;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManager$PinMmiGemini;->dialString:Ljava/lang/String;

    .line 208
    iput-object p3, p0, Lcom/android/phone/PhoneInterfaceManager$PinMmiGemini;->simId:Ljava/lang/Integer;

    .line 209
    return-void
.end method
