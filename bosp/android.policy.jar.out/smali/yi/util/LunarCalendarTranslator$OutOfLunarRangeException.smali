.class public Lyi/util/LunarCalendarTranslator$OutOfLunarRangeException;
.super Ljava/lang/IllegalStateException;
.source "LunarCalendarTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/util/LunarCalendarTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutOfLunarRangeException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lyi/util/LunarCalendarTranslator;


# direct methods
.method public constructor <init>(Lyi/util/LunarCalendarTranslator;)V
    .locals 1
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lyi/util/LunarCalendarTranslator$OutOfLunarRangeException;->this$0:Lyi/util/LunarCalendarTranslator;

    .line 360
    const-string v0, "The year is out of range (1901-2050)."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 361
    return-void
.end method
