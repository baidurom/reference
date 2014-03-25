.class public Landroid/provider/Telephony$SIMInfo;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SIMInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$SIMInfo$ErrorCode;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"


# instance fields
.field public mColor:I

.field public mDataRoaming:I

.field public mDefaultName:Ljava/lang/String;

.field public mDispalyNumberFormat:I

.field public mDisplayName:Ljava/lang/String;

.field public mICCId:Ljava/lang/String;

.field public mNameSource:I

.field public mNumber:Ljava/lang/String;

.field public mOperator:Ljava/lang/String;

.field public mSimId:J

.field public mSlot:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2639
    const-string v0, ""

    iput-object v0, p0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 2640
    const-string v0, ""

    iput-object v0, p0, Landroid/provider/Telephony$SIMInfo;->mDefaultName:Ljava/lang/String;

    .line 2642
    const-string v0, ""

    iput-object v0, p0, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    .line 2643
    const/4 v0, 0x1

    iput v0, p0, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    .line 2645
    const/4 v0, 0x0

    iput v0, p0, Landroid/provider/Telephony$SIMInfo;->mDataRoaming:I

    .line 2646
    const/4 v0, -0x1

    iput v0, p0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .line 2647
    const-string v0, ""

    iput-object v0, p0, Landroid/provider/Telephony$SIMInfo;->mOperator:Ljava/lang/String;

    .line 2650
    return-void
.end method

.method public static getAllSIMCount(Landroid/content/Context;)I
    .locals 8
    .parameter "ctx"

    .prologue
    .line 2879
    const-string v4, "[getAllSIMCount]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2881
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2882
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "getAllSimCountAdp"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2883
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 2884
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2885
    .local v1, count:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2891
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #count:Ljava/lang/Integer;
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .line 2887
    :catch_0
    move-exception v2

    .line 2888
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for getAllSimCountAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2889
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2891
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static getAllSIMList(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2690
    const-string v5, "[getAllSIMList]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2692
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2693
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "getAllSimInfoListAdp"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2694
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 2695
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2702
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 2698
    :catch_0
    move-exception v1

    .line 2699
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getAllSimInfoListAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2700
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    move-object v3, v4

    .line 2702
    goto :goto_0
.end method

.method public static getIdBySlot(Landroid/content/Context;I)J
    .locals 8
    .parameter "ctx"
    .parameter "slot"

    .prologue
    .line 2818
    const-string v4, "[getIdBySlot]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2820
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2821
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "getIdBySlotAdp"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2822
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 2823
    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 2824
    .local v2, id:Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 2830
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #id:Ljava/lang/Long;
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-wide v4

    .line 2826
    :catch_0
    move-exception v1

    .line 2827
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for getIdBySlotAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2828
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2830
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public static getInsertedSIMCount(Landroid/content/Context;)I
    .locals 8
    .parameter "ctx"

    .prologue
    .line 2859
    const-string v4, "[getInsertedSIMCount]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2861
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2862
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "getInsertedSimCountAdp"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2863
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 2864
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2865
    .local v1, count:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2871
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #count:Ljava/lang/Integer;
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .line 2867
    :catch_0
    move-exception v2

    .line 2868
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for getInsertedSimCountAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2869
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2871
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2663
    const-string v5, "[getInsertedSIMList]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2665
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2666
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "getInsertedSimInfoListAdp"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2667
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 2668
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2675
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 2671
    :catch_0
    move-exception v1

    .line 2672
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getInsertedSimInfoListAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2673
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    move-object v3, v4

    .line 2675
    goto :goto_0
.end method

.method public static getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ctx"
    .parameter "iccId"

    .prologue
    const/4 v4, 0x0

    .line 2895
    const-string v5, "[getOperatorByIccId]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2897
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2898
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "getOperatorByIccIdAdp"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2899
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 2900
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2907
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 2903
    :catch_0
    move-exception v1

    .line 2904
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getOperatorByIccIdAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2905
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    move-object v3, v4

    .line 2907
    goto :goto_0
.end method

.method public static getOperatorBySlot(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9
    .parameter "ctx"
    .parameter "slotId"

    .prologue
    const/4 v4, 0x0

    .line 2911
    const-string v5, "[getOperatorBySlot]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2913
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2914
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "getOperatorBySlotAdp"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2915
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 2916
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2923
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 2919
    :catch_0
    move-exception v1

    .line 2920
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getOperatorBySlotAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2921
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    move-object v3, v4

    .line 2923
    goto :goto_0
.end method

.method public static getSIMInfoByICCId(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$SIMInfo;
    .locals 9
    .parameter "ctx"
    .parameter "iccid"

    .prologue
    const/4 v4, 0x0

    .line 2776
    const-string v5, "[getSIMInfoByICCId]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2778
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2779
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "getSimInfoByIccIdAdp"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2780
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 2781
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2788
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 2784
    :catch_0
    move-exception v1

    .line 2785
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getSimInfoByIccIdAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2786
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    move-object v2, v4

    .line 2788
    goto :goto_0
.end method

.method public static getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;
    .locals 9
    .parameter "ctx"
    .parameter "SIMId"

    .prologue
    const/4 v4, 0x0

    .line 2712
    const-string v5, "[getSIMInfoById]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2714
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2715
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "getSimInfoByIdAdp"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2716
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 2717
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2724
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 2720
    :catch_0
    move-exception v1

    .line 2721
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getSimInfoByIdAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2722
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    move-object v2, v4

    .line 2724
    goto :goto_0
.end method

.method public static getSIMInfoByName(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$SIMInfo;
    .locals 9
    .parameter "ctx"
    .parameter "SIMName"

    .prologue
    const/4 v4, 0x0

    .line 2734
    const-string v5, "[getSIMInfoByName]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2736
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2737
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "getSimInfoByNameAdp"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2738
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 2739
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2746
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 2742
    :catch_0
    move-exception v1

    .line 2743
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getSimInfoByNameAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2744
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    move-object v2, v4

    .line 2746
    goto :goto_0
.end method

.method public static getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;
    .locals 9
    .parameter "ctx"
    .parameter "cardSlot"

    .prologue
    const/4 v4, 0x0

    .line 2755
    const-string v5, "[getSIMInfoBySlot]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2757
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2758
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "getSimInfoBySlotAdp"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2759
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 2760
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2767
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 2763
    :catch_0
    move-exception v1

    .line 2764
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getSimInfoBySlotAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2765
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    move-object v2, v4

    .line 2767
    goto :goto_0
.end method

.method public static getSIMInfoInstance()Landroid/provider/Telephony$SIMInfo;
    .locals 2

    .prologue
    .line 2679
    const-string v1, "[getSIMInfoInstance]"

    invoke-static {v1}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2680
    new-instance v0, Landroid/provider/Telephony$SIMInfo;

    invoke-direct {v0}, Landroid/provider/Telephony$SIMInfo;-><init>()V

    .line 2681
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    return-object v0
.end method

.method public static getSlotById(Landroid/content/Context;J)I
    .locals 8
    .parameter "ctx"
    .parameter "SIMId"

    .prologue
    .line 2797
    const-string v4, "[getSlotById]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2799
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2800
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "getSlotByIdAdp"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2801
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 2802
    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2803
    .local v3, slot:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2809
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #slot:Ljava/lang/Integer;
    :goto_0
    return v4

    .line 2805
    :catch_0
    move-exception v1

    .line 2806
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for getSlotByIdAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2807
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2809
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static getSlotByName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .parameter "ctx"
    .parameter "SIMName"

    .prologue
    .line 2839
    const-string v4, "[getSlotByName]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2841
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2842
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "getSlotByNameAdp"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2843
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 2844
    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2845
    .local v3, slot:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2851
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #slot:Ljava/lang/Integer;
    :goto_0
    return v4

    .line 2847
    :catch_0
    move-exception v1

    .line 2848
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for getSlotByNameAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2849
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2851
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 9
    .parameter "ctx"
    .parameter "ICCId"
    .parameter "slot"

    .prologue
    const/4 v4, 0x0

    .line 3088
    const-string v5, "[insertICCId]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3090
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3091
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "addSimInfoRecordAdp"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3092
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3093
    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3100
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 3096
    :catch_0
    move-exception v1

    .line 3097
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for insertIccIdAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3098
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    move-object v3, v4

    .line 3100
    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 3136
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMInfo]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    return-void
.end method

.method public static setColor(Landroid/content/Context;IJ)I
    .locals 8
    .parameter "ctx"
    .parameter "color"
    .parameter "SIMId"

    .prologue
    .line 3019
    const-string v4, "[setColor]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3021
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3022
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "setColorAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3023
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3024
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3025
    .local v3, result:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3031
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #result:Ljava/lang/Integer;
    :goto_0
    return v4

    .line 3027
    :catch_0
    move-exception v1

    .line 3028
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setColorAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3029
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3031
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setDataRoaming(Landroid/content/Context;IJ)I
    .locals 8
    .parameter "ctx"
    .parameter "roaming"
    .parameter "SIMId"

    .prologue
    .line 3065
    const-string v4, "[setDataRoaming]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3067
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3068
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "setDataRoamingAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3069
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3070
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3071
    .local v3, result:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3077
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #result:Ljava/lang/Integer;
    :goto_0
    return v4

    .line 3073
    :catch_0
    move-exception v1

    .line 3074
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setDataRoamingAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3075
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3077
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setDefaultName(Landroid/content/Context;JLjava/lang/String;)I
    .locals 8
    .parameter "ctx"
    .parameter "simId"
    .parameter "name"

    .prologue
    .line 3104
    const-string v4, "[setDefaultName]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3106
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3107
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "setDefaultNameAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3108
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3109
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3110
    .local v3, result:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3116
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #result:Ljava/lang/Integer;
    :goto_0
    return v4

    .line 3112
    :catch_0
    move-exception v1

    .line 3113
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setDefaultNameAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3114
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3116
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setDefaultNameEx(Landroid/content/Context;JLjava/lang/String;J)I
    .locals 8
    .parameter "ctx"
    .parameter "simId"
    .parameter "name"
    .parameter "nameSource"

    .prologue
    .line 3120
    const-string v4, "[setDefaultNameEx]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3122
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3123
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "setDefaultNameExAdp"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3124
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3125
    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3126
    .local v3, result:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3132
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #result:Ljava/lang/Integer;
    :goto_0
    return v4

    .line 3128
    :catch_0
    move-exception v1

    .line 3129
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setDefaultNameExAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3130
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3132
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setDispalyNumberFormat(Landroid/content/Context;IJ)I
    .locals 8
    .parameter "ctx"
    .parameter "format"
    .parameter "SIMId"

    .prologue
    .line 3042
    const-string v4, "[setDispalyNumberFormat]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3044
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3045
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "setDispalyNumberFormatAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3046
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3047
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3048
    .local v3, result:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3054
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #result:Ljava/lang/Integer;
    :goto_0
    return v4

    .line 3050
    :catch_0
    move-exception v1

    .line 3051
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setDispalyNumberFormatAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3052
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3054
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setDisplayName(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 8
    .parameter "ctx"
    .parameter "displayName"
    .parameter "SIMId"

    .prologue
    .line 2950
    const-string v4, "[setDisplayName]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2952
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2953
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "setDisplayNameAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2954
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 2955
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2956
    .local v3, result:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2962
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #result:Ljava/lang/Integer;
    :goto_0
    return v4

    .line 2958
    :catch_0
    move-exception v1

    .line 2959
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setDisplayNameAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2960
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2962
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setDisplayNameEx(Landroid/content/Context;Ljava/lang/String;JJ)I
    .locals 8
    .parameter "ctx"
    .parameter "displayName"
    .parameter "SIMId"
    .parameter "Source"

    .prologue
    .line 2974
    const-string v4, "[setDisplayNameEx]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2976
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2977
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "setDisplayNameExAdp"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2978
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 2979
    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2980
    .local v3, result:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2986
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #result:Ljava/lang/Integer;
    :goto_0
    return v4

    .line 2982
    :catch_0
    move-exception v1

    .line 2983
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setDisplayNameExAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2984
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2986
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setNumber(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 8
    .parameter "ctx"
    .parameter "number"
    .parameter "SIMId"

    .prologue
    .line 2996
    const-string v4, "[setNumber]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2998
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2999
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "setNumberAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3000
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3001
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3002
    .local v3, result:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3008
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #result:Ljava/lang/Integer;
    :goto_0
    return v4

    .line 3004
    :catch_0
    move-exception v1

    .line 3005
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setNumberAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3006
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3008
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setOperatorById(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 8
    .parameter "ctx"
    .parameter "operator"
    .parameter "simId"

    .prologue
    .line 2927
    const-string v4, "[setOperatorById]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2929
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2930
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "setOperatorByIdAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2931
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 2932
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2933
    .local v3, result:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2939
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #result:Ljava/lang/Integer;
    :goto_0
    return v4

    .line 2935
    :catch_0
    move-exception v1

    .line 2936
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setOperatorByIdAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2937
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2939
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method
