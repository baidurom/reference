.class Lcom/android/internal/telephony/cat/CommandParamsFactory;
.super Landroid/os/Handler;
.source "CommandParamsFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CommandParamsFactory$1;
    }
.end annotation


# static fields
.field static final DTTZ_SETTING:I = 0x3

.field static final LANGUAGE_SETTING:I = 0x4

.field static final LOAD_MULTI_ICONS:I = 0x2

.field static final LOAD_NO_ICON:I = 0x0

.field static final LOAD_SINGLE_ICON:I = 0x1

.field static final MSG_ID_LOAD_ICON_DONE:I = 0x1

.field static final REFRESH_NAA_INIT:I = 0x3

.field static final REFRESH_NAA_INIT_AND_FILE_CHANGE:I = 0x2

.field static final REFRESH_NAA_INIT_AND_FULL_FILE_CHANGE:I = 0x0

.field static final REFRESH_UICC_RESET:I = 0x4

.field private static sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;


# instance fields
.field private mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

.field private mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

.field private mContext:Landroid/content/Context;

.field private mIconLoadState:I

.field private mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

.field tlvIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 2
    .parameter "caller"
    .parameter "fh"

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 79
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 81
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    .line 143
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 144
    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/IconLoader;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/cat/IconLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 145
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/IccFileHandler;Landroid/content/Context;)V
    .locals 2
    .parameter "caller"
    .parameter "fh"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 79
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 81
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    .line 135
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 136
    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/IconLoader;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/cat/IconLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 137
    iput-object p3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mContext:Landroid/content/Context;

    .line 138
    return-void
.end method

.method private getAddrIndex(Ljava/util/List;)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1761
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 1763
    .local v0, addrIndex:I
    const/4 v2, 0x0

    .line 1764
    .local v2, temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1765
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1766
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1767
    .restart local v2       #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1773
    .end local v0           #addrIndex:I
    :goto_1
    return v0

    .line 1770
    .restart local v0       #addrIndex:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1773
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getCallingAlphaId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 5
    .parameter
    .parameter "addrIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;I)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 1860
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 1862
    .local v0, alphaIndex:I
    const/4 v2, 0x0

    .line 1863
    .local v2, temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1864
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1865
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1866
    .restart local v2       #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v3, v4, :cond_0

    if-le v0, p2, :cond_0

    move-object v3, v2

    .line 1873
    :goto_1
    return-object v3

    .line 1870
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1873
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getCallingAlphaIdIndex(Ljava/util/List;I)I
    .locals 5
    .parameter
    .parameter "addrIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1810
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 1812
    .local v0, alphaIndex:I
    const/4 v2, 0x0

    .line 1813
    .local v2, temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1814
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1815
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1816
    .restart local v2       #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v3, v4, :cond_0

    if-le v0, p2, :cond_0

    .line 1823
    .end local v0           #alphaIndex:I
    :goto_1
    return v0

    .line 1820
    .restart local v0       #alphaIndex:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1823
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getCallingIconId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 6
    .parameter
    .parameter "alpha2Index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;I)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v3, 0x0

    .line 1917
    const/4 v4, -0x1

    if-ne v4, p2, :cond_1

    move-object v2, v3

    .line 1934
    :cond_0
    :goto_0
    return-object v2

    .line 1921
    :cond_1
    const/4 v0, 0x0

    .line 1923
    .local v0, iconIndex:I
    const/4 v2, 0x0

    .line 1924
    .local v2, temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1925
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1926
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1927
    .restart local v2       #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v4

    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    if-ne v4, v5, :cond_2

    if-gt v0, p2, :cond_0

    .line 1931
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 1934
    goto :goto_0
.end method

.method private getConfirmationAlphaId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 5
    .parameter
    .parameter "addrIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;I)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 1835
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 1837
    .local v0, alphaIndex:I
    const/4 v2, 0x0

    .line 1838
    .local v2, temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1839
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1840
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1841
    .restart local v2       #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v3, v4, :cond_0

    if-ge v0, p2, :cond_0

    move-object v3, v2

    .line 1848
    :goto_1
    return-object v3

    .line 1845
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1848
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getConfirmationAlphaIdIndex(Ljava/util/List;I)I
    .locals 5
    .parameter
    .parameter "addrIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1785
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 1787
    .local v0, alphaIndex:I
    const/4 v2, 0x0

    .line 1788
    .local v2, temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1789
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1790
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1791
    .restart local v2       #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v3, v4, :cond_0

    if-ge v0, p2, :cond_0

    .line 1798
    .end local v0           #alphaIndex:I
    :goto_1
    return v0

    .line 1795
    .restart local v0       #alphaIndex:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1798
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getConfirmationIconId(Ljava/util/List;II)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 7
    .parameter
    .parameter "alpha1Index"
    .parameter "alpha2Index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;II)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 1888
    if-ne v6, p2, :cond_1

    move-object v2, v3

    .line 1905
    :cond_0
    :goto_0
    return-object v2

    .line 1892
    :cond_1
    const/4 v0, 0x0

    .line 1894
    .local v0, iconIndex:I
    const/4 v2, 0x0

    .line 1895
    .local v2, temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1896
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1897
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1898
    .restart local v2       #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v4

    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    if-ne v4, v5, :cond_2

    if-eq v6, p3, :cond_0

    if-lt v0, p3, :cond_0

    .line 1902
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 1905
    goto :goto_0
.end method

.method static declared-synchronized getInstance(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/cat/CommandParamsFactory;
    .locals 2
    .parameter "caller"
    .parameter "fh"

    .prologue
    .line 109
    const-class v1, Lcom/android/internal/telephony/cat/CommandParamsFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :goto_0
    monitor-exit v1

    return-object v0

    .line 112
    :cond_0
    if-eqz p1, :cond_1

    .line 113
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/IccFileHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 115
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static declared-synchronized getInstance(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/IccFileHandler;Landroid/content/Context;)Lcom/android/internal/telephony/cat/CommandParamsFactory;
    .locals 2
    .parameter "caller"
    .parameter "fh"
    .parameter "context"

    .prologue
    .line 123
    const-class v1, Lcom/android/internal/telephony/cat/CommandParamsFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :goto_0
    monitor-exit v1

    return-object v0

    .line 127
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 128
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/IccFileHandler;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processCloseChannel(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 11
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1540
    const-string v8, "enter: process CloseChannel"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1542
    const/4 v3, 0x0

    .line 1544
    .local v3, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    new-instance v5, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v5}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 1545
    .local v5, textMsg:Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v4, 0x0

    .line 1547
    .local v4, iconId:Lcom/android/internal/telephony/cat/IconId;
    const/4 v1, 0x0

    .line 1549
    .local v1, channelId:I
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    .line 1550
    if-eqz v3, :cond_0

    .line 1551
    invoke-static {v3}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1554
    :cond_0
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    .line 1555
    if-eqz v3, :cond_1

    .line 1556
    invoke-static {v3}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v4

    .line 1557
    iget-boolean v8, v4, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v8, v5, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 1560
    :cond_1
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    .line 1561
    if-eqz v3, :cond_2

    .line 1562
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    aget-byte v2, v8, v9

    .line 1563
    .local v2, cidByte:B
    and-int/lit8 v1, v2, 0xf

    .line 1564
    const-string v8, "[BIP]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "To close channel "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    .end local v2           #cidByte:B
    :cond_2
    iget v8, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v8, v8, 0x1

    if-ne v6, v8, :cond_3

    move v0, v6

    .line 1568
    .local v0, backToTcpListen:Z
    :goto_0
    new-instance v8, Lcom/android/internal/telephony/cat/CloseChannelParams;

    invoke-direct {v8, p1, v1, v5, v0}, Lcom/android/internal/telephony/cat/CloseChannelParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;ILcom/android/internal/telephony/cat/TextMessage;Z)V

    iput-object v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1570
    if-eqz v4, :cond_4

    .line 1571
    iput v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 1572
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v8, v4, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 1577
    :goto_1
    return v6

    .end local v0           #backToTcpListen:Z
    :cond_3
    move v0, v7

    .line 1566
    goto :goto_0

    .restart local v0       #backToTcpListen:Z
    :cond_4
    move v6, v7

    .line 1577
    goto :goto_1
.end method

.method private processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/CommandDetails;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 150
    .local p1, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 152
    .local v0, cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    if-eqz p1, :cond_0

    .line 154
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 156
    .local v1, ctlvCmdDet:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v1, :cond_0

    .line 158
    :try_start_0
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveCommandDetails(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/CommandDetails;
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 165
    .end local v1           #ctlvCmdDet:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_0
    return-object v0

    .line 159
    .restart local v1       #ctlvCmdDet:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :catch_0
    move-exception v2

    .line 160
    .local v2, e:Lcom/android/internal/telephony/cat/ResultException;
    const-string v3, "Failed to procees command details"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    new-instance v3, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v3
.end method

.method private processDisplayText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 9
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 453
    const-string v5, "process DisplayText"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    new-instance v4, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v4}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 456
    .local v4, textMsg:Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v2, 0x0

    .line 458
    .local v2, iconId:Lcom/android/internal/telephony/cat/IconId;
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 460
    .local v0, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 461
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 465
    :cond_0
    iget-object v5, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 466
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v5

    .line 469
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 470
    if-eqz v0, :cond_2

    .line 471
    iput-boolean v7, v4, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 474
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_3

    .line 477
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 482
    :goto_0
    :try_start_1
    iget-boolean v5, v2, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v5, v4, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 488
    :cond_3
    :goto_1
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 489
    if-eqz v0, :cond_4

    .line 491
    :try_start_2
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;
    :try_end_2
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_2 .. :try_end_2} :catch_2

    .line 498
    :cond_4
    :goto_2
    iget v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    move v5, v6

    :goto_3
    iput-boolean v5, v4, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    .line 499
    iget v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_6

    move v5, v6

    :goto_4
    iput-boolean v5, v4, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    .line 501
    new-instance v5, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {v5, p1, v4}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 503
    if-eqz v2, :cond_7

    .line 504
    iput v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 505
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v7, v2, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 509
    :goto_5
    return v6

    .line 478
    :catch_0
    move-exception v1

    .line 479
    .local v1, e:Lcom/android/internal/telephony/cat/ResultException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retrieveIconId ResultException: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 483
    .end local v1           #e:Lcom/android/internal/telephony/cat/ResultException;
    :catch_1
    move-exception v3

    .line 484
    .local v3, ne:Ljava/lang/NullPointerException;
    const-string v5, "iconId is null."

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 492
    .end local v3           #ne:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v1

    .line 493
    .restart local v1       #e:Lcom/android/internal/telephony/cat/ResultException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retrieveDuration ResultException: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .end local v1           #e:Lcom/android/internal/telephony/cat/ResultException;
    :cond_5
    move v5, v7

    .line 498
    goto :goto_3

    :cond_6
    move v5, v7

    .line 499
    goto :goto_4

    :cond_7
    move v6, v7

    .line 509
    goto :goto_5
.end method

.method private processEventNotify(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 958
    const-string v5, "process EventNotify"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 960
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 961
    .local v2, textMsg:Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v1, 0x0

    .line 963
    .local v1, iconId:Lcom/android/internal/telephony/cat/IconId;
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 965
    .local v0, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_1

    .line 966
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 972
    :goto_0
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 973
    if-eqz v0, :cond_0

    .line 974
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 975
    iget-boolean v5, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 978
    :cond_0
    iput-boolean v4, v2, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 979
    new-instance v5, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {v5, p1, v2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 981
    if-eqz v1, :cond_2

    .line 982
    iput v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 983
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 987
    :goto_1
    return v3

    .line 969
    :cond_1
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v3, v4

    .line 987
    goto :goto_1
.end method

.method private processGetChannelStatus(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v3, 0x1

    .line 1724
    const-string v4, "enter: process GetChannelStatus"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1726
    const/4 v0, 0x0

    .line 1728
    .local v0, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 1729
    .local v2, textMsg:Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v1, 0x0

    .line 1731
    .local v1, iconId:Lcom/android/internal/telephony/cat/IconId;
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 1732
    if-eqz v0, :cond_0

    .line 1733
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1736
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 1737
    if-eqz v0, :cond_1

    .line 1738
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 1739
    iget-boolean v4, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v4, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 1742
    :cond_1
    new-instance v4, Lcom/android/internal/telephony/cat/GetChannelStatusParams;

    invoke-direct {v4, p1, v2}, Lcom/android/internal/telephony/cat/GetChannelStatusParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1744
    if-eqz v1, :cond_2

    .line 1745
    iput v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 1746
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 1751
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private processGetInkey(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 9
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 574
    const-string v5, "process GetInkey"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    new-instance v3, Lcom/android/internal/telephony/cat/Input;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/Input;-><init>()V

    .line 577
    .local v3, input:Lcom/android/internal/telephony/cat/Input;
    const/4 v2, 0x0

    .line 579
    .local v2, iconId:Lcom/android/internal/telephony/cat/IconId;
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 581
    .local v0, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_2

    .line 582
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    .line 587
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 588
    if-eqz v0, :cond_0

    .line 590
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 597
    :goto_0
    :try_start_1
    iget-boolean v5, v2, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v5, v3, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 605
    :cond_0
    :goto_1
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 606
    if-eqz v0, :cond_1

    .line 608
    :try_start_2
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;
    :try_end_2
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_2 .. :try_end_2} :catch_2

    .line 614
    :cond_1
    :goto_2
    iput v6, v3, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 615
    iput v6, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 617
    iget v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_3

    move v5, v6

    :goto_3
    iput-boolean v5, v3, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    .line 618
    iget v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    move v5, v6

    :goto_4
    iput-boolean v5, v3, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    .line 619
    iget v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_5

    move v5, v6

    :goto_5
    iput-boolean v5, v3, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    .line 620
    iget v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_6

    move v5, v6

    :goto_6
    iput-boolean v5, v3, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    .line 621
    iput-boolean v6, v3, Lcom/android/internal/telephony/cat/Input;->echo:Z

    .line 623
    new-instance v5, Lcom/android/internal/telephony/cat/GetInputParams;

    invoke-direct {v5, p1, v3}, Lcom/android/internal/telephony/cat/GetInputParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Input;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 625
    if-eqz v2, :cond_7

    .line 626
    iput v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 627
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v7, v2, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 631
    :goto_7
    return v6

    .line 584
    :cond_2
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v5

    .line 591
    :catch_0
    move-exception v1

    .line 592
    .local v1, e:Lcom/android/internal/telephony/cat/ResultException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retrieveIconId ResultException: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 598
    .end local v1           #e:Lcom/android/internal/telephony/cat/ResultException;
    :catch_1
    move-exception v4

    .line 599
    .local v4, ne:Ljava/lang/NullPointerException;
    const-string v5, "iconId is null."

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 609
    .end local v4           #ne:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v1

    .line 610
    .restart local v1       #e:Lcom/android/internal/telephony/cat/ResultException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retrieveDuration ResultException: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v1           #e:Lcom/android/internal/telephony/cat/ResultException;
    :cond_3
    move v5, v7

    .line 617
    goto :goto_3

    :cond_4
    move v5, v7

    .line 618
    goto :goto_4

    :cond_5
    move v5, v7

    .line 619
    goto :goto_5

    :cond_6
    move v5, v7

    .line 620
    goto :goto_6

    :cond_7
    move v6, v7

    .line 631
    goto :goto_7
.end method

.method private processGetInput(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 11
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/16 v10, 0xef

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 648
    const-string v7, "process GetInput"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 650
    new-instance v3, Lcom/android/internal/telephony/cat/Input;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/Input;-><init>()V

    .line 651
    .local v3, input:Lcom/android/internal/telephony/cat/Input;
    const/4 v2, 0x0

    .line 653
    .local v2, iconId:Lcom/android/internal/telephony/cat/IconId;
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 655
    .local v0, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_4

    .line 656
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    .line 661
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 662
    if-eqz v0, :cond_5

    .line 664
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 665
    .local v5, rawValue:[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 668
    .local v6, valueIndex:I
    aget-byte v7, v5, v6

    and-int/lit16 v7, v7, 0xff

    iput v7, v3, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 671
    iget v7, v3, Lcom/android/internal/telephony/cat/Input;->minLen:I

    if-le v7, v10, :cond_0

    .line 672
    const/16 v7, 0xef

    iput v7, v3, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 676
    :cond_0
    add-int/lit8 v7, v6, 0x1

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    iput v7, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 679
    iget v7, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    if-le v7, v10, :cond_1

    .line 680
    const/16 v7, 0xef

    iput v7, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :cond_1
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 691
    if-eqz v0, :cond_2

    .line 693
    :try_start_1
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1 .. :try_end_1} :catch_1

    .line 699
    :cond_2
    :goto_0
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 700
    if-eqz v0, :cond_3

    .line 702
    :try_start_2
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;
    :try_end_2
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 710
    :goto_1
    :try_start_3
    iget-boolean v7, v2, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v7, v3, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    .line 718
    :cond_3
    :goto_2
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_6

    move v7, v8

    :goto_3
    iput-boolean v7, v3, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    .line 719
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_7

    move v7, v8

    :goto_4
    iput-boolean v7, v3, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    .line 720
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_8

    move v7, v8

    :goto_5
    iput-boolean v7, v3, Lcom/android/internal/telephony/cat/Input;->echo:Z

    .line 721
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_9

    move v7, v8

    :goto_6
    iput-boolean v7, v3, Lcom/android/internal/telephony/cat/Input;->packed:Z

    .line 722
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_a

    move v7, v8

    :goto_7
    iput-boolean v7, v3, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    .line 736
    new-instance v7, Lcom/android/internal/telephony/cat/GetInputParams;

    invoke-direct {v7, p1, v3}, Lcom/android/internal/telephony/cat/GetInputParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Input;)V

    iput-object v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 738
    if-eqz v2, :cond_b

    .line 739
    iput v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 740
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v9, v2, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 744
    :goto_8
    return v8

    .line 658
    .end local v5           #rawValue:[B
    .end local v6           #valueIndex:I
    :cond_4
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7

    .line 683
    :catch_0
    move-exception v1

    .line 684
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7

    .line 687
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_5
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7

    .line 694
    .restart local v5       #rawValue:[B
    .restart local v6       #valueIndex:I
    :catch_1
    move-exception v1

    .line 695
    .local v1, e:Lcom/android/internal/telephony/cat/ResultException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "retrieveTextString ResultException: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 703
    .end local v1           #e:Lcom/android/internal/telephony/cat/ResultException;
    :catch_2
    move-exception v1

    .line 704
    .restart local v1       #e:Lcom/android/internal/telephony/cat/ResultException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "retrieveIconId ResultException: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 711
    .end local v1           #e:Lcom/android/internal/telephony/cat/ResultException;
    :catch_3
    move-exception v4

    .line 712
    .local v4, ne:Ljava/lang/NullPointerException;
    const-string v7, "iconId is null."

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v4           #ne:Ljava/lang/NullPointerException;
    :cond_6
    move v7, v9

    .line 718
    goto/16 :goto_3

    :cond_7
    move v7, v9

    .line 719
    goto/16 :goto_4

    :cond_8
    move v7, v9

    .line 720
    goto/16 :goto_5

    :cond_9
    move v7, v9

    .line 721
    goto/16 :goto_6

    :cond_a
    move v7, v9

    .line 722
    goto/16 :goto_7

    :cond_b
    move v8, v9

    .line 744
    goto :goto_8
.end method

.method private processLaunchBrowser(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 13
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v9, 0x1

    .line 1077
    const-string v10, "process LaunchBrowser"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1079
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 1080
    .local v0, confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v3, 0x0

    .line 1081
    .local v3, iconId:Lcom/android/internal/telephony/cat/IconId;
    const/4 v6, 0x0

    .line 1083
    .local v6, url:Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v10, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 1084
    .local v1, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v1, :cond_0

    .line 1086
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 1087
    .local v5, rawValue:[B
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 1088
    .local v7, valueIndex:I
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v8

    .line 1089
    .local v8, valueLen:I
    if-lez v8, :cond_3

    .line 1090
    invoke-static {v5, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1101
    .end local v5           #rawValue:[B
    .end local v7           #valueIndex:I
    .end local v8           #valueLen:I
    :cond_0
    :goto_0
    sget-object v10, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v10, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 1102
    if-eqz v1, :cond_1

    .line 1103
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1106
    :cond_1
    sget-object v10, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v10, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 1107
    if-eqz v1, :cond_2

    .line 1108
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v3

    .line 1109
    iget-boolean v10, v3, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v10, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 1114
    :cond_2
    iget v10, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    packed-switch v10, :pswitch_data_0

    .line 1117
    sget-object v4, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    .line 1127
    .local v4, mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    :goto_1
    new-instance v10, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    invoke-direct {v10, p1, v0, v6, v4}, Lcom/android/internal/telephony/cat/LaunchBrowserParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;Lcom/android/internal/telephony/cat/LaunchBrowserMode;)V

    iput-object v10, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1129
    if-eqz v3, :cond_4

    .line 1130
    iput v9, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 1131
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v11, v3, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 1135
    :goto_2
    return v9

    .line 1093
    .end local v4           #mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    .restart local v5       #rawValue:[B
    .restart local v7       #valueIndex:I
    .restart local v8       #valueLen:I
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 1095
    .end local v5           #rawValue:[B
    .end local v7           #valueIndex:I
    .end local v8           #valueLen:I
    :catch_0
    move-exception v2

    .line 1096
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v9, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v9

    .line 1120
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :pswitch_0
    sget-object v4, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->USE_EXISTING_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    .line 1121
    .restart local v4       #mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    goto :goto_1

    .line 1123
    .end local v4           #mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    :pswitch_1
    sget-object v4, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_NEW_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    .restart local v4       #mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    goto :goto_1

    .line 1135
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 1114
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processOpenChannel(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 20
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 1324
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v2, "enter: process OpenChannel"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1327
    const/16 v17, 0x0

    .line 1328
    .local v17, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v14, 0x0

    .line 1331
    .local v14, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    const/4 v4, 0x0

    .line 1332
    .local v4, bearerDesc:Lcom/mediatek/common/telephony/BearerDesc;
    const/4 v5, 0x0

    .line 1333
    .local v5, bufferSize:I
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const/16 v18, 0x0

    .line 1336
    .local v18, linkMode:I
    :goto_0
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_7

    const/16 v16, 0x0

    .line 1338
    .local v16, isAutoReconnect:Z
    :goto_1
    const/4 v9, 0x0

    .line 1339
    .local v9, accessPointName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1340
    .local v6, localAddress:Lcom/mediatek/common/telephony/OtherAddress;
    const/4 v10, 0x0

    .line 1341
    .local v10, userLogin:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1343
    .local v11, userPwd:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1344
    .local v7, transportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;
    const/4 v8, 0x0

    .line 1346
    .local v8, dataDestinationAddress:Lcom/mediatek/common/telephony/OtherAddress;
    new-instance v12, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v12}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 1347
    .local v12, confirmText:Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v13, 0x0

    .line 1356
    .local v13, confirmIcon:Lcom/android/internal/telephony/cat/IconId;
    const/4 v15, -0x1

    .line 1358
    .local v15, indexTransportProtocol:I
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 1360
    if-eqz v14, :cond_0

    .line 1361
    invoke-static {v14}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1364
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 1365
    if-eqz v14, :cond_1

    .line 1366
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 1367
    invoke-static {v14}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v13

    .line 1368
    iget-boolean v2, v13, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v2, v12, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 1372
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BEARER_DESCRIPTION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 1373
    if-eqz v14, :cond_8

    .line 1374
    invoke-static {v14}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveBearerDesc(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/mediatek/common/telephony/BearerDesc;

    move-result-object v4

    .line 1375
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "bearerDesc  \nbearer type: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v4, Lcom/mediatek/common/telephony/BearerDesc;->bearerType:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, "\nprecedence: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v4, Lcom/mediatek/common/telephony/BearerDesc;->precedence:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, "\ndelay: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v4, Lcom/mediatek/common/telephony/BearerDesc;->delay:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, "\nreliability: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v4, Lcom/mediatek/common/telephony/BearerDesc;->reliability:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, "\npeak: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v4, Lcom/mediatek/common/telephony/BearerDesc;->peak:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, "\nmean: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v4, Lcom/mediatek/common/telephony/BearerDesc;->mean:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, "\npdp type: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v4, Lcom/mediatek/common/telephony/BearerDesc;->pdpType:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    :goto_2
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 1389
    if-eqz v14, :cond_9

    .line 1390
    invoke-static {v14}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveBufferSize(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I

    move-result v5

    .line 1391
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "buffer size: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->NETWORK_ACCESS_NAME:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 1399
    if-eqz v14, :cond_2

    .line 1400
    invoke-static {v14}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveNetworkAccessName(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    .line 1401
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "access point name: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 1406
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 1407
    if-eqz v14, :cond_3

    .line 1408
    invoke-static {v14}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v10

    .line 1409
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "user login: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 1412
    if-eqz v14, :cond_4

    .line 1413
    invoke-static {v14}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v11

    .line 1414
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "user password: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->SIM_ME_INTERFACE_TRANSPORT_LEVEL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 1419
    if-eqz v14, :cond_a

    .line 1420
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    .line 1421
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CPF-processOpenChannel: indexTransportProtocol = "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    invoke-static {v14}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTransportProtocol(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/mediatek/common/telephony/TransportProtocol;

    move-result-object v7

    .line 1424
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CPF-processOpenChannel: transport protocol(type/port): "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v7, Lcom/mediatek/common/telephony/TransportProtocol;->protocolType:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, "/"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v7, Lcom/mediatek/common/telephony/TransportProtocol;->portNumber:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    const/4 v2, 0x1

    iget v3, v7, Lcom/mediatek/common/telephony/TransportProtocol;->protocolType:I

    if-eq v2, v3, :cond_5

    const/4 v2, 0x2

    iget v3, v7, Lcom/mediatek/common/telephony/TransportProtocol;->protocolType:I

    if-ne v2, v3, :cond_c

    .line 1428
    :cond_5
    if-nez v4, :cond_c

    .line 1429
    const-string v2, "[BIP]"

    const-string v3, "Need BearerDescription object"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    new-instance v2, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v2

    .line 1333
    .end local v6           #localAddress:Lcom/mediatek/common/telephony/OtherAddress;
    .end local v7           #transportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;
    .end local v8           #dataDestinationAddress:Lcom/mediatek/common/telephony/OtherAddress;
    .end local v9           #accessPointName:Ljava/lang/String;
    .end local v10           #userLogin:Ljava/lang/String;
    .end local v11           #userPwd:Ljava/lang/String;
    .end local v12           #confirmText:Lcom/android/internal/telephony/cat/TextMessage;
    .end local v13           #confirmIcon:Lcom/android/internal/telephony/cat/IconId;
    .end local v15           #indexTransportProtocol:I
    .end local v16           #isAutoReconnect:Z
    .end local v18           #linkMode:I
    :cond_6
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1336
    .restart local v18       #linkMode:I
    :cond_7
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 1383
    .restart local v6       #localAddress:Lcom/mediatek/common/telephony/OtherAddress;
    .restart local v7       #transportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;
    .restart local v8       #dataDestinationAddress:Lcom/mediatek/common/telephony/OtherAddress;
    .restart local v9       #accessPointName:Ljava/lang/String;
    .restart local v10       #userLogin:Ljava/lang/String;
    .restart local v11       #userPwd:Ljava/lang/String;
    .restart local v12       #confirmText:Lcom/android/internal/telephony/cat/TextMessage;
    .restart local v13       #confirmIcon:Lcom/android/internal/telephony/cat/IconId;
    .restart local v15       #indexTransportProtocol:I
    .restart local v16       #isAutoReconnect:Z
    :cond_8
    const-string v2, "[BIP]"

    const-string v3, "May Need BearerDescription object"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1393
    :cond_9
    const-string v2, "[BIP]"

    const-string v3, "Need BufferSize object"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    new-instance v2, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v2

    .line 1434
    :cond_a
    if-nez v4, :cond_b

    .line 1435
    const-string v2, "[BIP]"

    const-string v3, "BearerDescription & transportProtocol object are null"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    new-instance v2, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v2

    .line 1438
    :cond_b
    const-string v2, "[BIP]"

    const-string v3, "transportProtocol object is null"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    new-instance v2, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-direct {v2, v3, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;I)V

    throw v2

    .line 1444
    :cond_c
    if-eqz v7, :cond_12

    .line 1445
    const-string v2, "[BIP]"

    const-string v3, "CPF-processOpenChannel: transport protocol is existed"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 1447
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->resetTlvIndex()V

    .line 1448
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->OTHER_ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 1449
    if-eqz v14, :cond_11

    .line 1450
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    if-ge v2, v15, :cond_f

    .line 1452
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CPF-processOpenChannel: get local address, index is "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    invoke-static {v14}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveOtherAddress(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/mediatek/common/telephony/OtherAddress;

    move-result-object v6

    .line 1458
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->OTHER_ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 1459
    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    if-le v2, v15, :cond_e

    .line 1460
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CPF-processOpenChannel: get dest address, index is "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    invoke-static {v14}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveOtherAddress(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/mediatek/common/telephony/OtherAddress;

    move-result-object v8

    .line 1479
    :goto_3
    if-nez v8, :cond_13

    .line 1480
    const/4 v2, 0x2

    iget v3, v7, Lcom/mediatek/common/telephony/TransportProtocol;->protocolType:I

    if-eq v2, v3, :cond_d

    const/4 v2, 0x1

    iget v3, v7, Lcom/mediatek/common/telephony/TransportProtocol;->protocolType:I

    if-ne v2, v3, :cond_13

    .line 1482
    :cond_d
    const-string v2, "[BIP]"

    const-string v3, "BM-openChannel: dataDestinationAddress is null."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    new-instance v2, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v2

    .line 1464
    :cond_e
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CPF-processOpenChannel: missing dest address "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, "/"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    new-instance v2, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v2

    .line 1469
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    if-le v2, v15, :cond_10

    .line 1470
    const-string v2, "[BIP]"

    const-string v3, "CPF-processOpenChannel: get dest address, but no local address"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    invoke-static {v14}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveOtherAddress(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/mediatek/common/telephony/OtherAddress;

    move-result-object v8

    goto :goto_3

    .line 1474
    :cond_10
    const-string v2, "[BIP]"

    const-string v3, "CPF-processOpenChannel: Incorrect index"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1477
    :cond_11
    const-string v2, "[BIP]"

    const-string v3, "CPF-processOpenChannel: No other address object"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1488
    :cond_12
    const-string v2, "[BIP]"

    const-string v3, "CPF-processOpenChannel: No transport protocol object"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    new-instance v2, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-direct {v2, v3, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;I)V

    throw v2

    .line 1501
    :cond_13
    if-eqz v4, :cond_14

    .line 1502
    iget v2, v4, Lcom/mediatek/common/telephony/BearerDesc;->bearerType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_15

    .line 1503
    new-instance v2, Lcom/android/internal/telephony/cat/OpenChannelParams;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v12}, Lcom/android/internal/telephony/cat/OpenChannelParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/mediatek/common/telephony/BearerDesc;ILcom/mediatek/common/telephony/OtherAddress;Lcom/mediatek/common/telephony/TransportProtocol;Lcom/mediatek/common/telephony/OtherAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/cat/TextMessage;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1511
    :cond_14
    :goto_4
    new-instance v2, Lcom/android/internal/telephony/cat/OpenChannelParams;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v12}, Lcom/android/internal/telephony/cat/OpenChannelParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/mediatek/common/telephony/BearerDesc;ILcom/mediatek/common/telephony/OtherAddress;Lcom/mediatek/common/telephony/TransportProtocol;Lcom/mediatek/common/telephony/OtherAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/cat/TextMessage;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1515
    if-eqz v13, :cond_16

    .line 1516
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 1517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v3, v13, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 1519
    const/4 v2, 0x1

    .line 1522
    :goto_5
    return v2

    .line 1507
    :cond_15
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unsupport bearerType: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v4, Lcom/mediatek/common/telephony/BearerDesc;->bearerType:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1522
    :cond_16
    const/4 v2, 0x0

    goto :goto_5
.end method

.method private processPlayTone(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 13
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 1152
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v0, "process PlayTone"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1154
    const/4 v3, 0x0

    .line 1155
    .local v3, tone:Lcom/android/internal/telephony/cat/Tone;
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 1156
    .local v2, textMsg:Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v4, 0x0

    .line 1157
    .local v4, duration:Lcom/android/internal/telephony/cat/Duration;
    const/4 v8, 0x0

    .line 1159
    .local v8, iconId:Lcom/android/internal/telephony/cat/IconId;
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v6

    .line 1160
    .local v6, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v6, :cond_0

    .line 1162
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 1164
    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v9

    .line 1165
    .local v9, rawValue:[B
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v11

    .line 1166
    .local v11, valueIndex:I
    aget-byte v10, v9, v11

    .line 1167
    .local v10, toneVal:I
    invoke-static {v10}, Lcom/android/internal/telephony/cat/Tone;->fromInt(I)Lcom/android/internal/telephony/cat/Tone;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1175
    .end local v9           #rawValue:[B
    .end local v10           #toneVal:I
    .end local v11           #valueIndex:I
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v6

    .line 1176
    if-eqz v6, :cond_1

    .line 1178
    :try_start_1
    invoke-static {v6}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1184
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v6

    .line 1185
    if-eqz v6, :cond_2

    .line 1187
    :try_start_2
    invoke-static {v6}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;
    :try_end_2
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 1193
    :cond_2
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v6

    .line 1194
    if-eqz v6, :cond_3

    .line 1195
    invoke-static {v6}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v8

    .line 1196
    iget-boolean v0, v8, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 1199
    :cond_3
    iget v0, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    .line 1201
    .local v5, vibrate:Z
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 1202
    new-instance v0, Lcom/android/internal/telephony/cat/PlayToneParams;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/PlayToneParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/Tone;Lcom/android/internal/telephony/cat/Duration;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1204
    if-eqz v8, :cond_5

    .line 1205
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 1206
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v1, v8, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 1208
    const/4 v0, 0x1

    .line 1210
    :goto_3
    return v0

    .line 1168
    .end local v5           #vibrate:Z
    :catch_0
    move-exception v7

    .line 1169
    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0

    .line 1179
    .end local v7           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v7

    .line 1180
    .local v7, e:Lcom/android/internal/telephony/cat/ResultException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retrieveAlphaId ResultException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1188
    .end local v7           #e:Lcom/android/internal/telephony/cat/ResultException;
    :catch_2
    move-exception v7

    .line 1189
    .restart local v7       #e:Lcom/android/internal/telephony/cat/ResultException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retrieveDuration ResultException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1199
    .end local v7           #e:Lcom/android/internal/telephony/cat/ResultException;
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 1210
    .restart local v5       #vibrate:Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private processProvideLocalInfo(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 2
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 1291
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v0, "process ProvideLocalInfo"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1292
    iget v0, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    packed-switch v0, :pswitch_data_0

    .line 1302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PLI["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Command Not Supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1303
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1304
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0

    .line 1294
    :pswitch_0
    const-string v0, "PLI [DTTZ_SETTING]"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1295
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1306
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1298
    :pswitch_1
    const-string v0, "PLI [LANGUAGE_SETTING]"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1299
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    goto :goto_0

    .line 1292
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processReceiveData(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 10
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v6, 0x1

    .line 1595
    const-string v7, "enter: process ReceiveData"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1597
    const/4 v3, 0x0

    .line 1599
    .local v3, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    const/4 v0, 0x0

    .line 1601
    .local v0, channelDataLength:I
    new-instance v5, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v5}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 1602
    .local v5, textMsg:Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v4, 0x0

    .line 1603
    .local v4, iconId:Lcom/android/internal/telephony/cat/IconId;
    const/4 v1, 0x0

    .line 1605
    .local v1, channelId:I
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    .line 1606
    if-eqz v3, :cond_0

    .line 1607
    invoke-static {v3}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveChannelDataLength(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I

    move-result v0

    .line 1608
    const-string v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Channel data length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    :cond_0
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    .line 1615
    if-eqz v3, :cond_1

    .line 1616
    invoke-static {v3}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1619
    :cond_1
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    .line 1620
    if-eqz v3, :cond_2

    .line 1621
    invoke-static {v3}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v4

    .line 1622
    iget-boolean v7, v4, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v7, v5, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 1625
    :cond_2
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    .line 1626
    if-eqz v3, :cond_3

    .line 1627
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    aget-byte v2, v7, v8

    .line 1628
    .local v2, cidByte:B
    and-int/lit8 v1, v2, 0xf

    .line 1629
    const-string v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "To Receive data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    .end local v2           #cidByte:B
    :cond_3
    new-instance v7, Lcom/android/internal/telephony/cat/ReceiveDataParams;

    invoke-direct {v7, p1, v0, v1, v5}, Lcom/android/internal/telephony/cat/ReceiveDataParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;IILcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1634
    if-eqz v4, :cond_4

    .line 1635
    iput v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 1636
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v8, v4, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 1641
    :goto_0
    return v6

    :cond_4
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private processRefresh(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 2
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 758
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v1, "process Refresh"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 761
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 768
    .local v0, textMsg:Lcom/android/internal/telephony/cat/TextMessage;
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    packed-switch v1, :pswitch_data_0

    .line 780
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 775
    :pswitch_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 777
    new-instance v1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {v1, p1, v0}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    goto :goto_0

    .line 768
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private processSelectItem(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 15
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 797
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v11, "process SelectItem"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 799
    new-instance v6, Lcom/android/internal/telephony/cat/Menu;

    invoke-direct {v6}, Lcom/android/internal/telephony/cat/Menu;-><init>()V

    .line 800
    .local v6, menu:Lcom/android/internal/telephony/cat/Menu;
    const/4 v10, 0x0

    .line 801
    .local v10, titleIconId:Lcom/android/internal/telephony/cat/IconId;
    const/4 v4, 0x0

    .line 802
    .local v4, itemsIconId:Lcom/android/internal/telephony/cat/ItemsIconId;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 804
    .local v5, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    sget-object v11, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p2

    invoke-direct {p0, v11, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 806
    .local v1, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v1, :cond_0

    .line 808
    :try_start_0
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "add AlphaId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 816
    :cond_0
    :goto_1
    sget-object v11, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v11, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 817
    if-eqz v1, :cond_2

    .line 818
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItem(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Item;

    move-result-object v3

    .line 819
    .local v3, item:Lcom/android/internal/telephony/cat/Item;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "add menu item: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v3, :cond_1

    const-string v11, ""

    :goto_2
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 820
    iget-object v11, v6, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 809
    .end local v3           #item:Lcom/android/internal/telephony/cat/Item;
    :catch_0
    move-exception v2

    .line 810
    .local v2, e:Lcom/android/internal/telephony/cat/ResultException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "retrieveAlphaId ResultException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 819
    .end local v2           #e:Lcom/android/internal/telephony/cat/ResultException;
    .restart local v3       #item:Lcom/android/internal/telephony/cat/Item;
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/Item;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 827
    .end local v3           #item:Lcom/android/internal/telephony/cat/Item;
    :cond_2
    iget-object v11, v6, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_3

    .line 828
    const-string v11, "no menu item"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 829
    new-instance v11, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v12, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v11, v12}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v11

    .line 834
    :cond_3
    sget-object v11, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->NEXT_ACTION_INDICATOR:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p2

    invoke-direct {p0, v11, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 835
    if-eqz v1, :cond_4

    .line 837
    :try_start_1
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveNextActionIndicator(Lcom/android/internal/telephony/cat/ComprehensionTlv;)[B

    move-result-object v11

    iput-object v11, v6, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B
    :try_end_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1 .. :try_end_1} :catch_1

    .line 842
    :goto_3
    :try_start_2
    iget-object v11, v6, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B

    array-length v11, v11

    iget-object v12, v6, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-eq v11, v12, :cond_4

    .line 843
    const-string v11, "nextActionIndicator.length != number of menu items"

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 844
    const/4 v11, 0x0

    iput-object v11, v6, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 852
    :cond_4
    :goto_4
    sget-object v11, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p2

    invoke-direct {p0, v11, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 853
    if-eqz v1, :cond_5

    .line 857
    :try_start_3
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItemId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    iput v11, v6, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I
    :try_end_3
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_3 .. :try_end_3} :catch_3

    .line 861
    :goto_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "default item: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v6, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 864
    :cond_5
    sget-object v11, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p2

    invoke-direct {p0, v11, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 865
    if-eqz v1, :cond_6

    .line 866
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 868
    :try_start_4
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;
    :try_end_4
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v10

    .line 873
    :goto_6
    :try_start_5
    iget-boolean v11, v10, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v11, v6, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_5

    .line 879
    :cond_6
    :goto_7
    sget-object v11, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p2

    invoke-direct {p0, v11, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 880
    if-eqz v1, :cond_7

    .line 881
    const/4 v11, 0x2

    iput v11, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 883
    :try_start_6
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItemsIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/ItemsIconId;
    :try_end_6
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v4

    .line 888
    :goto_8
    :try_start_7
    iget-boolean v11, v4, Lcom/android/internal/telephony/cat/ItemsIconId;->selfExplanatory:Z

    iput-boolean v11, v6, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_7

    .line 894
    :cond_7
    :goto_9
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_9

    const/4 v8, 0x1

    .line 895
    .local v8, presentTypeSpecified:Z
    :goto_a
    if-eqz v8, :cond_8

    .line 896
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_a

    .line 897
    sget-object v11, Lcom/android/internal/telephony/cat/PresentationType;->DATA_VALUES:Lcom/android/internal/telephony/cat/PresentationType;

    iput-object v11, v6, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    .line 902
    :cond_8
    :goto_b
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v11, v11, 0x4

    if-eqz v11, :cond_b

    const/4 v11, 0x1

    :goto_c
    iput-boolean v11, v6, Lcom/android/internal/telephony/cat/Menu;->softKeyPreferred:Z

    .line 903
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 v11, v11, 0x80

    if-eqz v11, :cond_c

    const/4 v11, 0x1

    :goto_d
    iput-boolean v11, v6, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    .line 905
    new-instance v12, Lcom/android/internal/telephony/cat/SelectItemParams;

    if-eqz v10, :cond_d

    const/4 v11, 0x1

    :goto_e
    move-object/from16 v0, p1

    invoke-direct {v12, v0, v6, v11}, Lcom/android/internal/telephony/cat/SelectItemParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Menu;Z)V

    iput-object v12, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 908
    iget v11, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    packed-switch v11, :pswitch_data_0

    .line 942
    :goto_f
    const/4 v11, 0x1

    :goto_10
    return v11

    .line 838
    .end local v8           #presentTypeSpecified:Z
    :catch_1
    move-exception v2

    .line 839
    .restart local v2       #e:Lcom/android/internal/telephony/cat/ResultException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "retrieveNextActionIndicator ResultException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 846
    .end local v2           #e:Lcom/android/internal/telephony/cat/ResultException;
    :catch_2
    move-exception v7

    .line 847
    .local v7, ne:Ljava/lang/NullPointerException;
    const-string v11, "nextActionIndicator is null."

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 858
    .end local v7           #ne:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v2

    .line 859
    .restart local v2       #e:Lcom/android/internal/telephony/cat/ResultException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "retrieveItemId ResultException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 869
    .end local v2           #e:Lcom/android/internal/telephony/cat/ResultException;
    :catch_4
    move-exception v2

    .line 870
    .restart local v2       #e:Lcom/android/internal/telephony/cat/ResultException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "retrieveIconId ResultException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 874
    .end local v2           #e:Lcom/android/internal/telephony/cat/ResultException;
    :catch_5
    move-exception v7

    .line 875
    .restart local v7       #ne:Ljava/lang/NullPointerException;
    const-string v11, "titleIconId is null."

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 884
    .end local v7           #ne:Ljava/lang/NullPointerException;
    :catch_6
    move-exception v2

    .line 885
    .restart local v2       #e:Lcom/android/internal/telephony/cat/ResultException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "retrieveItemsIconId ResultException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 889
    .end local v2           #e:Lcom/android/internal/telephony/cat/ResultException;
    :catch_7
    move-exception v7

    .line 890
    .restart local v7       #ne:Ljava/lang/NullPointerException;
    const-string v11, "itemsIconId is null."

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 894
    .end local v7           #ne:Ljava/lang/NullPointerException;
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 899
    .restart local v8       #presentTypeSpecified:Z
    :cond_a
    sget-object v11, Lcom/android/internal/telephony/cat/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/cat/PresentationType;

    iput-object v11, v6, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    goto/16 :goto_b

    .line 902
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_c

    .line 903
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_d

    .line 905
    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_e

    .line 910
    :pswitch_0
    const/4 v11, 0x0

    goto/16 :goto_10

    .line 914
    :pswitch_1
    if-eqz v10, :cond_e

    iget v11, v10, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    if-lez v11, :cond_e

    .line 915
    iget-object v11, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v12, v10, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    const/4 v13, 0x1

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    goto/16 :goto_f

    .line 919
    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_10

    .line 925
    :pswitch_2
    if-eqz v4, :cond_10

    .line 926
    iget-object v9, v4, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    .line 928
    .local v9, recordNumbers:[I
    iget-object v11, v4, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    new-array v9, v11, [I

    .line 929
    if-eqz v10, :cond_f

    .line 930
    const/4 v11, 0x0

    iget v12, v10, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    aput v12, v9, v11

    .line 932
    :cond_f
    iget-object v11, v4, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    const/4 v12, 0x0

    const/4 v13, 0x1

    iget-object v14, v4, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    array-length v14, v14

    invoke-static {v11, v12, v9, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 934
    iget-object v11, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v9, v12}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcons([ILandroid/os/Message;)V

    goto/16 :goto_f

    .line 938
    .end local v9           #recordNumbers:[I
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_10

    .line 908
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processSendData(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 12
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1659
    const-string v0, "enter: process SendData"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1661
    const/4 v7, 0x0

    .line 1663
    .local v7, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    const/4 v2, 0x0

    .line 1665
    .local v2, channelData:[B
    new-instance v4, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v4}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 1666
    .local v4, textMsg:Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v8, 0x0

    .line 1667
    .local v8, iconId:Lcom/android/internal/telephony/cat/IconId;
    const/4 v3, 0x0

    .line 1669
    .local v3, channelId:I
    iget v0, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v9, :cond_4

    move v5, v9

    .line 1672
    .local v5, sendMode:I
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v7

    .line 1673
    if-eqz v7, :cond_0

    .line 1674
    invoke-static {v7}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveChannelData(Lcom/android/internal/telephony/cat/ComprehensionTlv;)[B

    move-result-object v2

    .line 1679
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v7

    .line 1680
    if-eqz v7, :cond_1

    .line 1681
    invoke-static {v7}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1684
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v7

    .line 1685
    if-eqz v7, :cond_2

    .line 1686
    invoke-static {v7}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v8

    .line 1687
    iget-boolean v0, v8, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v0, v4, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 1690
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v7

    .line 1691
    if-eqz v7, :cond_3

    .line 1692
    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v6, v0, v1

    .line 1693
    .local v6, cidByte:B
    and-int/lit8 v3, v6, 0xf

    .line 1694
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "To send data: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    .end local v6           #cidByte:B
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/cat/SendDataParams;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/SendDataParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;[BILcom/android/internal/telephony/cat/TextMessage;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1699
    if-eqz v8, :cond_5

    .line 1700
    iput v9, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 1701
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v1, v8, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 1706
    :goto_1
    return v9

    .end local v5           #sendMode:I
    :cond_4
    move v5, v10

    .line 1669
    goto :goto_0

    .restart local v5       #sendMode:I
    :cond_5
    move v9, v10

    .line 1706
    goto :goto_1
.end method

.method private processSetUpEventList(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 10
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 1015
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v8, "process SetUpEventList"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1019
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 1020
    .local v0, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_3

    .line 1022
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 1023
    .local v5, rawValue:[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 1024
    .local v6, valueIndex:I
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v7

    .line 1026
    .local v7, valueLen:I
    new-array v2, v7, [B

    .line 1027
    .local v2, eventList:[B
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    if-ge v3, v7, :cond_2

    .line 1028
    aget-byte v8, v5, v6

    aput-byte v8, v2, v3

    .line 1029
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CPF-processSetUpEventList: eventList["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v9, v2, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1031
    aget-byte v8, v5, v6

    const/4 v9, 0x5

    if-ne v8, v9, :cond_1

    .line 1032
    const-string v8, "CPF-processSetUpEventList: sent intent with idle = true"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1033
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.IDLE_SCREEN_NEEDED"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1034
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "_enable"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1035
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1051
    .end local v4           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 1052
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1045
    :cond_1
    aget-byte v8, v5, v6

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    .line 1046
    const-string v8, "CPF-processSetUpEventList: sent intent for user activity"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1047
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.stk.USER_ACTIVITY.enable"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1048
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v8, "state"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1049
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1055
    .end local v2           #eventList:[B
    .end local v3           #index:I
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #rawValue:[B
    .end local v6           #valueIndex:I
    .end local v7           #valueLen:I
    :catch_0
    move-exception v1

    .line 1056
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8

    .line 1054
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v2       #eventList:[B
    .restart local v3       #index:I
    .restart local v5       #rawValue:[B
    .restart local v6       #valueIndex:I
    .restart local v7       #valueLen:I
    :cond_2
    :try_start_1
    new-instance v8, Lcom/android/internal/telephony/cat/SetupEventListParams;

    invoke-direct {v8, p1, v2}, Lcom/android/internal/telephony/cat/SetupEventListParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;[B)V

    iput-object v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1060
    .end local v2           #eventList:[B
    .end local v3           #index:I
    .end local v5           #rawValue:[B
    .end local v6           #valueIndex:I
    .end local v7           #valueLen:I
    :cond_3
    const/4 v8, 0x0

    return v8
.end method

.method private processSetUpIdleModeText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v3, 0x1

    .line 526
    const-string v4, "process SetUpIdleModeText"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 529
    .local v2, textMsg:Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v1, 0x0

    .line 531
    .local v1, iconId:Lcom/android/internal/telephony/cat/IconId;
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 533
    .local v0, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 534
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 541
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 542
    if-eqz v0, :cond_1

    .line 543
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 544
    iget-boolean v4, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v4, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 549
    :cond_1
    new-instance v4, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {v4, p1, v2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 551
    if-eqz v1, :cond_2

    .line 552
    iput v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 553
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 557
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private processSetupCall(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 12
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 1226
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v10, "process SetupCall"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1228
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1229
    .local v8, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v7, 0x0

    .line 1231
    .local v7, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    new-instance v6, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v6}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 1233
    .local v6, confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;
    new-instance v4, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v4}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 1234
    .local v4, callMsg:Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v5, 0x0

    .line 1235
    .local v5, confirmIconId:Lcom/android/internal/telephony/cat/IconId;
    const/4 v3, 0x0

    .line 1241
    .local v3, callIconId:Lcom/android/internal/telephony/cat/IconId;
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->getAddrIndex(Ljava/util/List;)I

    move-result v0

    .line 1242
    .local v0, addrIndex:I
    const/4 v10, -0x1

    if-ne v10, v0, :cond_0

    .line 1243
    const-string v10, "fail to get ADDRESS data object"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1244
    const/4 v10, 0x0

    .line 1286
    :goto_0
    return v10

    .line 1247
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->getConfirmationAlphaIdIndex(Ljava/util/List;I)I

    move-result v1

    .line 1248
    .local v1, alpha1Index:I
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->getCallingAlphaIdIndex(Ljava/util/List;I)I

    move-result v2

    .line 1250
    .local v2, alpha2Index:I
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->getConfirmationAlphaId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v7

    .line 1251
    if-eqz v7, :cond_1

    .line 1252
    invoke-static {v7}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1255
    :cond_1
    invoke-direct {p0, p2, v1, v2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->getConfirmationIconId(Ljava/util/List;II)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v7

    .line 1256
    if-eqz v7, :cond_2

    .line 1257
    invoke-static {v7}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v5

    .line 1258
    iget-boolean v10, v5, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v10, v6, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 1261
    :cond_2
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->getCallingAlphaId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v7

    .line 1262
    if-eqz v7, :cond_3

    .line 1263
    invoke-static {v7}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1266
    :cond_3
    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->getCallingIconId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v7

    .line 1267
    if-eqz v7, :cond_4

    .line 1268
    invoke-static {v7}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v3

    .line 1269
    iget-boolean v10, v3, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v10, v4, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 1272
    :cond_4
    new-instance v10, Lcom/android/internal/telephony/cat/CallSetupParams;

    invoke-direct {v10, p1, v6, v4}, Lcom/android/internal/telephony/cat/CallSetupParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v10, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1274
    if-nez v5, :cond_5

    if-eqz v3, :cond_8

    .line 1275
    :cond_5
    const/4 v10, 0x2

    iput v10, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 1276
    const/4 v10, 0x2

    new-array v9, v10, [I

    .line 1277
    .local v9, recordNumbers:[I
    const/4 v11, 0x0

    if-eqz v5, :cond_6

    iget v10, v5, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    :goto_1
    aput v10, v9, v11

    .line 1279
    const/4 v11, 0x1

    if-eqz v3, :cond_7

    iget v10, v3, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    :goto_2
    aput v10, v9, v11

    .line 1282
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcons([ILandroid/os/Message;)V

    .line 1284
    const/4 v10, 0x1

    goto :goto_0

    .line 1277
    :cond_6
    const/4 v10, -0x1

    goto :goto_1

    .line 1279
    :cond_7
    const/4 v10, -0x1

    goto :goto_2

    .line 1286
    .end local v9           #recordNumbers:[I
    :cond_8
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private resetTlvIndex()V
    .locals 1

    .prologue
    .line 382
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    .line 383
    return-void
.end method

.method private searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 3
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 369
    .local p2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 370
    .local v1, tagValue:I
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 371
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 372
    .local v0, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 376
    .end local v0           #ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private searchForNextTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 4
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .local p2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v2, 0x0

    .line 400
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 401
    :cond_0
    const-string v3, "CPF-searchForNextTagAndIndex: Invalid params"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    .line 416
    :goto_0
    return-object v0

    .line 405
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 407
    .local v1, tagValue:I
    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 408
    iget v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    .line 409
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 410
    .local v0, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    if-ne v3, v1, :cond_2

    goto :goto_0

    .end local v0           #ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_3
    move-object v0, v2

    .line 416
    goto :goto_0
.end method

.method private searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 2
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 352
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 353
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    return-object v1
.end method

.method private searchForTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 2
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 431
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->resetTlvIndex()V

    .line 432
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 433
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    return-object v1
.end method

.method private sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V
    .locals 2
    .parameter "resCode"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendMsgParamsDecoded(Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 340
    return-void
.end method

.method private setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/cat/ResultCode;
    .locals 7
    .parameter "data"

    .prologue
    .line 317
    const/4 v4, 0x0

    .line 318
    .local v4, icons:[Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 320
    .local v3, iconIndex:I
    if-nez p1, :cond_0

    .line 321
    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    .line 335
    .end local p1
    :goto_0
    return-object v6

    .line 323
    .restart local p1
    :cond_0
    iget v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    packed-switch v6, :pswitch_data_0

    .line 335
    .end local p1
    :cond_1
    :goto_1
    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_0

    .line 325
    .restart local p1
    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/cat/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    goto :goto_1

    .line 328
    .restart local p1
    :pswitch_1
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1
    move-object v4, p1

    check-cast v4, [Landroid/graphics/Bitmap;

    .line 330
    move-object v0, v4

    .local v0, arr$:[Landroid/graphics/Bitmap;
    array-length v5, v0

    .local v5, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2
    if-ge v1, v5, :cond_1

    aget-object v2, v0, v1

    .line 331
    .local v2, icon:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/cat/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 309
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 314
    :goto_0
    return-void

    .line 311
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method make(Lcom/android/internal/telephony/cat/BerTlv;)V
    .locals 7
    .parameter "berTlv"

    .prologue
    .line 169
    if-nez p1, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 174
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 176
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->getTag()I

    move-result v5

    const/16 v6, 0xd0

    if-eq v5, v6, :cond_2

    .line 177
    const-string v5, "CPF-make: Ununderstood proactive command tag"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_0

    .line 181
    :cond_2
    const/4 v1, 0x0

    .line 182
    .local v1, cmdPending:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->getComprehensionTlvs()Ljava/util/List;

    move-result-object v3

    .line 184
    .local v3, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 186
    .local v0, cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/cat/CommandDetails;
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 192
    if-nez v0, :cond_3

    .line 193
    const-string v5, "CPF-make: No CommandDetails object"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_0

    .line 187
    :catch_0
    move-exception v4

    .line 188
    .local v4, e:Lcom/android/internal/telephony/cat/ResultException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CPF-make: Except to procees command details : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_0

    .line 200
    .end local v4           #e:Lcom/android/internal/telephony/cat/ResultException;
    :cond_3
    iget v5, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    .line 202
    .local v2, cmdType:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-nez v2, :cond_4

    .line 203
    const-string v5, "CPF-make: Command type can\'t be found"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    new-instance v5, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 209
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_0

    .line 214
    :cond_4
    :try_start_1
    sget-object v5, Lcom/android/internal/telephony/cat/CommandParamsFactory$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 290
    new-instance v5, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 291
    const-string v5, "CPF-make: default case"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 296
    :catch_1
    move-exception v4

    .line 297
    .restart local v4       #e:Lcom/android/internal/telephony/cat/ResultException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "throw ResultException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    new-instance v5, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 299
    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_0

    .line 216
    .end local v4           #e:Lcom/android/internal/telephony/cat/ResultException;
    :pswitch_0
    :try_start_2
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    :try_end_2
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    .line 302
    :goto_1
    if-nez v1, :cond_0

    .line 303
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_0

    .line 219
    :pswitch_1
    :try_start_3
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 220
    goto :goto_1

    .line 222
    :pswitch_2
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processDisplayText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 223
    goto :goto_1

    .line 225
    :pswitch_3
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSetUpIdleModeText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 226
    goto :goto_1

    .line 228
    :pswitch_4
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processGetInkey(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 229
    goto :goto_1

    .line 231
    :pswitch_5
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processGetInput(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 232
    goto :goto_1

    .line 237
    :pswitch_6
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processEventNotify(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 238
    goto :goto_1

    .line 240
    :pswitch_7
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSetupCall(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 241
    goto :goto_1

    .line 243
    :pswitch_8
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processRefresh(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    .line 244
    const/4 v1, 0x0

    .line 245
    goto :goto_1

    .line 247
    :pswitch_9
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processLaunchBrowser(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 248
    goto :goto_1

    .line 250
    :pswitch_a
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processPlayTone(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 251
    goto :goto_1

    .line 255
    :pswitch_b
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSetUpEventList(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 256
    goto :goto_1

    .line 263
    :pswitch_c
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processOpenChannel(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 264
    const-string v5, "process OpenChannel"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 267
    :pswitch_d
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processCloseChannel(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 268
    const-string v5, "process CloseChannel"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 271
    :pswitch_e
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSendData(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 272
    const-string v5, "process SendData"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 275
    :pswitch_f
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processReceiveData(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 276
    const-string v5, "process ReceiveData"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 279
    :pswitch_10
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processGetChannelStatus(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 280
    const-string v5, "process GetChannelStatus"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 285
    :pswitch_11
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processProvideLocalInfo(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 286
    const-string v5, "process ProvideLocalInformation"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
