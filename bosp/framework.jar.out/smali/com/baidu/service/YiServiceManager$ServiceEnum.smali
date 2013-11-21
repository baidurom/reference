.class public final enum Lcom/baidu/service/YiServiceManager$ServiceEnum;
.super Ljava/lang/Enum;
.source "YiServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/service/YiServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServiceEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/service/YiServiceManager$ServiceEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/service/YiServiceManager$ServiceEnum;

.field public static final enum BROADCAST_MANAGER:Lcom/baidu/service/YiServiceManager$ServiceEnum;

.field public static final enum DYNAMIC_PERMISSION:Lcom/baidu/service/YiServiceManager$ServiceEnum;

.field public static final enum SERVICE_ACCESS_CONTROLL:Lcom/baidu/service/YiServiceManager$ServiceEnum;

.field public static final enum SERVICE_IFTTT:Lcom/baidu/service/YiServiceManager$ServiceEnum;

.field public static final enum SERVICE_MANAGER:Lcom/baidu/service/YiServiceManager$ServiceEnum;

.field public static final enum SERVICE_NOTIFICATION_DEFENSE:Lcom/baidu/service/YiServiceManager$ServiceEnum;

.field public static final enum SERVICE_PACKAGE_VERIFY:Lcom/baidu/service/YiServiceManager$ServiceEnum;

.field public static final enum SERVICE_QUICK_BOOT:Lcom/baidu/service/YiServiceManager$ServiceEnum;

.field public static final enum SERVICE_SMART_POWER:Lcom/baidu/service/YiServiceManager$ServiceEnum;

.field public static final enum SERVICE_SYSTEM_VERIFY:Lcom/baidu/service/YiServiceManager$ServiceEnum;


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mServiceName:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/baidu/service/YiServiceManager$ServiceEnum;

    const-string v1, "BROADCAST_MANAGER"

    const-class v3, Lcom/baidu/security/bm/BroadcastManagerService;

    const-string v4, "BroadcastManagerService"

    sget v5, Lcom/baidu/service/YiServiceManager;->START_TYPE_BOOTING:I

    invoke-direct/range {v0 .. v5}, Lcom/baidu/service/YiServiceManager$ServiceEnum;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/service/YiServiceManager$ServiceEnum;->BROADCAST_MANAGER:Lcom/baidu/service/YiServiceManager$ServiceEnum;

    .line 44
    new-instance v3, Lcom/baidu/service/YiServiceManager$ServiceEnum;

    const-string v4, "DYNAMIC_PERMISSION"

    const-class v6, Lcom/baidu/server/dp/DynamicPermissionService;

    const-string v7, "DynamicPermissionService"

    sget v8, Lcom/baidu/service/YiServiceManager;->START_TYPE_BOOTING:I

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/baidu/service/YiServiceManager$ServiceEnum;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;I)V

    sput-object v3, Lcom/baidu/service/YiServiceManager$ServiceEnum;->DYNAMIC_PERMISSION:Lcom/baidu/service/YiServiceManager$ServiceEnum;

    .line 48
    new-instance v3, Lcom/baidu/service/YiServiceManager$ServiceEnum;

    const-string v4, "SERVICE_IFTTT"

    const-class v6, Lcom/baidu/ifttt/IftttService;

    const-string v7, "Ifttt"

    sget v8, Lcom/baidu/service/YiServiceManager;->START_TYPE_BOOTING:I

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/baidu/service/YiServiceManager$ServiceEnum;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;I)V

    sput-object v3, Lcom/baidu/service/YiServiceManager$ServiceEnum;->SERVICE_IFTTT:Lcom/baidu/service/YiServiceManager$ServiceEnum;

    .line 50
    new-instance v3, Lcom/baidu/service/YiServiceManager$ServiceEnum;

    const-string v4, "SERVICE_SMART_POWER"

    const-class v6, Lcom/baidu/service/power/SmartPowerService;

    const-string v7, "SmartPowerService"

    sget v8, Lcom/baidu/service/YiServiceManager;->START_TYPE_BOOTING:I

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/baidu/service/YiServiceManager$ServiceEnum;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;I)V

    sput-object v3, Lcom/baidu/service/YiServiceManager$ServiceEnum;->SERVICE_SMART_POWER:Lcom/baidu/service/YiServiceManager$ServiceEnum;

    .line 52
    new-instance v3, Lcom/baidu/service/YiServiceManager$ServiceEnum;

    const-string v4, "SERVICE_QUICK_BOOT"

    const-class v6, Lcom/baidu/service/QuickBootService;

    const-string v7, "QuickBootService"

    sget v8, Lcom/baidu/service/YiServiceManager;->START_TYPE_BOOTING:I

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/baidu/service/YiServiceManager$ServiceEnum;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;I)V

    sput-object v3, Lcom/baidu/service/YiServiceManager$ServiceEnum;->SERVICE_QUICK_BOOT:Lcom/baidu/service/YiServiceManager$ServiceEnum;

    .line 55
    new-instance v3, Lcom/baidu/service/YiServiceManager$ServiceEnum;

    const-string v4, "SERVICE_NOTIFICATION_DEFENSE"

    const/4 v5, 0x5

    const-class v6, Lcom/baidu/notificationdefense/NotificationDefenseService;

    const-string v7, "NotificationDefenseService"

    sget v8, Lcom/baidu/service/YiServiceManager;->START_TYPE_BOOTING:I

    invoke-direct/range {v3 .. v8}, Lcom/baidu/service/YiServiceManager$ServiceEnum;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;I)V

    sput-object v3, Lcom/baidu/service/YiServiceManager$ServiceEnum;->SERVICE_NOTIFICATION_DEFENSE:Lcom/baidu/service/YiServiceManager$ServiceEnum;

    .line 59
    new-instance v3, Lcom/baidu/service/YiServiceManager$ServiceEnum;

    const-string v4, "SERVICE_SYSTEM_VERIFY"

    const/4 v5, 0x6

    const-class v6, Lcom/baidu/systemverify/VerificationService;

    const-string v7, "VerificationService"

    sget v8, Lcom/baidu/service/YiServiceManager;->START_TYPE_BOOT_COMPLETED:I

    invoke-direct/range {v3 .. v8}, Lcom/baidu/service/YiServiceManager$ServiceEnum;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;I)V

    sput-object v3, Lcom/baidu/service/YiServiceManager$ServiceEnum;->SERVICE_SYSTEM_VERIFY:Lcom/baidu/service/YiServiceManager$ServiceEnum;

    .line 62
    new-instance v3, Lcom/baidu/service/YiServiceManager$ServiceEnum;

    const-string v4, "SERVICE_PACKAGE_VERIFY"

    const/4 v5, 0x7

    const-class v6, Lcom/baidu/systemverify/PackageVerificationService;

    const-string v7, "PackageVerificationService"

    sget v8, Lcom/baidu/service/YiServiceManager;->START_TYPE_BOOTING:I

    invoke-direct/range {v3 .. v8}, Lcom/baidu/service/YiServiceManager$ServiceEnum;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;I)V

    sput-object v3, Lcom/baidu/service/YiServiceManager$ServiceEnum;->SERVICE_PACKAGE_VERIFY:Lcom/baidu/service/YiServiceManager$ServiceEnum;

    .line 64
    new-instance v3, Lcom/baidu/service/YiServiceManager$ServiceEnum;

    const-string v4, "SERVICE_ACCESS_CONTROLL"

    const/16 v5, 0x8

    const-class v6, Lcom/baidu/access/AccessControllService;

    const-string v7, "AccessControllManager"

    sget v8, Lcom/baidu/service/YiServiceManager;->START_TYPE_BOOTING:I

    invoke-direct/range {v3 .. v8}, Lcom/baidu/service/YiServiceManager$ServiceEnum;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;I)V

    sput-object v3, Lcom/baidu/service/YiServiceManager$ServiceEnum;->SERVICE_ACCESS_CONTROLL:Lcom/baidu/service/YiServiceManager$ServiceEnum;

    .line 66
    new-instance v3, Lcom/baidu/service/YiServiceManager$ServiceEnum;

    const-string v4, "SERVICE_MANAGER"

    const/16 v5, 0x9

    const/4 v6, 0x0

    const-string/jumbo v7, "place holder for ending"

    sget v8, Lcom/baidu/service/YiServiceManager;->START_TYPE_INVALID:I

    invoke-direct/range {v3 .. v8}, Lcom/baidu/service/YiServiceManager$ServiceEnum;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;I)V

    sput-object v3, Lcom/baidu/service/YiServiceManager$ServiceEnum;->SERVICE_MANAGER:Lcom/baidu/service/YiServiceManager$ServiceEnum;

    .line 34
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/baidu/service/YiServiceManager$ServiceEnum;

    sget-object v1, Lcom/baidu/service/YiServiceManager$ServiceEnum;->BROADCAST_MANAGER:Lcom/baidu/service/YiServiceManager$ServiceEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/service/YiServiceManager$ServiceEnum;->DYNAMIC_PERMISSION:Lcom/baidu/service/YiServiceManager$ServiceEnum;

    aput-object v1, v0, v9

    sget-object v1, Lcom/baidu/service/YiServiceManager$ServiceEnum;->SERVICE_IFTTT:Lcom/baidu/service/YiServiceManager$ServiceEnum;

    aput-object v1, v0, v10

    sget-object v1, Lcom/baidu/service/YiServiceManager$ServiceEnum;->SERVICE_SMART_POWER:Lcom/baidu/service/YiServiceManager$ServiceEnum;

    aput-object v1, v0, v11

    sget-object v1, Lcom/baidu/service/YiServiceManager$ServiceEnum;->SERVICE_QUICK_BOOT:Lcom/baidu/service/YiServiceManager$ServiceEnum;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/service/YiServiceManager$ServiceEnum;->SERVICE_NOTIFICATION_DEFENSE:Lcom/baidu/service/YiServiceManager$ServiceEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/service/YiServiceManager$ServiceEnum;->SERVICE_SYSTEM_VERIFY:Lcom/baidu/service/YiServiceManager$ServiceEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/baidu/service/YiServiceManager$ServiceEnum;->SERVICE_PACKAGE_VERIFY:Lcom/baidu/service/YiServiceManager$ServiceEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/baidu/service/YiServiceManager$ServiceEnum;->SERVICE_ACCESS_CONTROLL:Lcom/baidu/service/YiServiceManager$ServiceEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/baidu/service/YiServiceManager$ServiceEnum;->SERVICE_MANAGER:Lcom/baidu/service/YiServiceManager$ServiceEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/service/YiServiceManager$ServiceEnum;->$VALUES:[Lcom/baidu/service/YiServiceManager$ServiceEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter "classObj"
    .parameter "tag"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    if-eqz p3, :cond_0

    .line 73
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/service/YiServiceManager$ServiceEnum;->mClassName:Ljava/lang/String;

    .line 75
    :cond_0
    iput-object p4, p0, Lcom/baidu/service/YiServiceManager$ServiceEnum;->mServiceName:Ljava/lang/String;

    .line 76
    iput p5, p0, Lcom/baidu/service/YiServiceManager$ServiceEnum;->mType:I

    .line 77
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/service/YiServiceManager$ServiceEnum;
    .locals 1
    .parameter "name"

    .prologue
    .line 34
    const-class v0, Lcom/baidu/service/YiServiceManager$ServiceEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/service/YiServiceManager$ServiceEnum;

    return-object v0
.end method

.method public static values()[Lcom/baidu/service/YiServiceManager$ServiceEnum;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/baidu/service/YiServiceManager$ServiceEnum;->$VALUES:[Lcom/baidu/service/YiServiceManager$ServiceEnum;

    invoke-virtual {v0}, [Lcom/baidu/service/YiServiceManager$ServiceEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/service/YiServiceManager$ServiceEnum;

    return-object v0
.end method


# virtual methods
.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/baidu/service/YiServiceManager$ServiceEnum;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetClass()Ljava/lang/Class;
    .locals 2

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, targetClass:Ljava/lang/Class;
    iget-object v1, p0, Lcom/baidu/service/YiServiceManager$ServiceEnum;->mClassName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/baidu/service/YiServiceManager$ServiceEnum;->mClassName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 89
    :cond_0
    :goto_0
    return-object v0

    .line 84
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/baidu/service/YiServiceManager$ServiceEnum;->mType:I

    return v0
.end method
