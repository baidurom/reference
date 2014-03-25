.class public interface abstract Lcom/android/internal/telephony/cat/AppInterface;
.super Ljava/lang/Object;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    }
.end annotation


# static fields
.field public static final CAT_CMD_ACTION:Ljava/lang/String; = "android.intent.action.stk.command"

.field public static final CAT_CMD_ACTION_2:Ljava/lang/String; = "android.intent.action.stk.command_2"

.field public static final CAT_CMD_ACTION_3:Ljava/lang/String; = "android.intent.action.stk.command_3"

.field public static final CAT_CMD_ACTION_4:Ljava/lang/String; = "android.intent.action.stk.command_4"

.field public static final CAT_SESSION_END_ACTION:Ljava/lang/String; = "android.intent.action.stk.session_end"

.field public static final CAT_SESSION_END_ACTION_2:Ljava/lang/String; = "android.intent.action.stk.session_end_2"

.field public static final CAT_SESSION_END_ACTION_3:Ljava/lang/String; = "android.intent.action.stk.session_end_3"

.field public static final CAT_SESSION_END_ACTION_4:Ljava/lang/String; = "android.intent.action.stk.session_end_4"

.field public static final CLEAR_DISPLAY_TEXT_CMD:Ljava/lang/String; = "android.intent.action.stk.clear_display_text"


# virtual methods
.method public abstract isCallDisConnReceived()Z
.end method

.method public abstract onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
.end method

.method public abstract onDBHandler(I)V
.end method

.method public abstract onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
.end method

.method public abstract setAllCallDisConn(Z)V
.end method
