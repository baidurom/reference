.class final enum Lcom/android/phone/VTCallUtils$VTScreenMode;
.super Ljava/lang/Enum;
.source "VTCallUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VTCallUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "VTScreenMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/VTCallUtils$VTScreenMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/VTCallUtils$VTScreenMode;

.field public static final enum VT_SCREEN_CLOSE:Lcom/android/phone/VTCallUtils$VTScreenMode;

.field public static final enum VT_SCREEN_OPEN:Lcom/android/phone/VTCallUtils$VTScreenMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/android/phone/VTCallUtils$VTScreenMode;

    const-string v1, "VT_SCREEN_CLOSE"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/VTCallUtils$VTScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/VTCallUtils$VTScreenMode;

    .line 63
    new-instance v0, Lcom/android/phone/VTCallUtils$VTScreenMode;

    const-string v1, "VT_SCREEN_OPEN"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/VTCallUtils$VTScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_OPEN:Lcom/android/phone/VTCallUtils$VTScreenMode;

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/phone/VTCallUtils$VTScreenMode;

    sget-object v1, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/VTCallUtils$VTScreenMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_OPEN:Lcom/android/phone/VTCallUtils$VTScreenMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/VTCallUtils$VTScreenMode;->$VALUES:[Lcom/android/phone/VTCallUtils$VTScreenMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/VTCallUtils$VTScreenMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 61
    const-class v0, Lcom/android/phone/VTCallUtils$VTScreenMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/VTCallUtils$VTScreenMode;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/VTCallUtils$VTScreenMode;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/phone/VTCallUtils$VTScreenMode;->$VALUES:[Lcom/android/phone/VTCallUtils$VTScreenMode;

    invoke-virtual {v0}, [Lcom/android/phone/VTCallUtils$VTScreenMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/VTCallUtils$VTScreenMode;

    return-object v0
.end method
