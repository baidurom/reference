.class public Lcom/baidu/internal/keyguard/slide/WeatherView$WeatherStatus;
.super Ljava/lang/Object;
.source "WeatherView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/WeatherView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeatherStatus"
.end annotation


# static fields
.field public static final WEATHER_STATUS_DATA_CONNECT_FAIL:I = 0x3

.field public static final WEATHER_STATUS_DATA_DISABLED:I = 0x2

.field public static final WEATHER_STATUS_LOCATION_FAIL:I = 0x1

.field public static final WEATHER_STATUS_NEVER_UPDATE:I = 0x4

.field public static final WEATHER_STATUS_OK:I = 0x0

.field public static final WEATHER_STATUS_SOFTWARE_INVALID:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
