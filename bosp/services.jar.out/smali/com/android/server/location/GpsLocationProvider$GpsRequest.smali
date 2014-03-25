.class Lcom/android/server/location/GpsLocationProvider$GpsRequest;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GpsRequest"
.end annotation


# instance fields
.field public request:Lcom/android/internal/location/ProviderRequest;

.field public source:Landroid/os/WorkSource;


# direct methods
.method public constructor <init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0
    .parameter "request"
    .parameter "source"

    .prologue
    .line 195
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$GpsRequest;->request:Lcom/android/internal/location/ProviderRequest;

    .line 197
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider$GpsRequest;->source:Landroid/os/WorkSource;

    .line 198
    return-void
.end method
