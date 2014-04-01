.class public Lcom/mediatek/exceptionlog/ExceptionLog;
.super Ljava/lang/Object;
.source "ExceptionLog.java"


# static fields
.field public static final ACTION_VIEW:Ljava/lang/String; = "com.mediatek.exceptionlog.intent.action.VIEW"

.field private static final EXCEPTION_NOTIFICATION:I = 0x1

.field public static final TAG:Ljava/lang/String; = "AES"

.field private static sBootCompleted:Z

.field private static sCount:I

.field private static sExtException:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/exceptionlog/ExceptionLog;->sCount:I

    .line 74
    const-string v0, "AES"

    const-string v1, "load Exception Log jni"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string/jumbo v0, "mediatek_exceptionlog"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bootCompleted(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 165
    const-string v0, "AES"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sExtException = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/exceptionlog/ExceptionLog;->sExtException:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v0, "AES"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sBootCompleted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/exceptionlog/ExceptionLog;->sBootCompleted:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v0, "AES"

    const-string v1, "bootCompleted()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/exceptionlog/ExceptionLog;->sBootCompleted:Z

    .line 171
    const-string v0, "AES"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sExtException = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/exceptionlog/ExceptionLog;->sExtException:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v0, "AES"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sBootCompleted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/exceptionlog/ExceptionLog;->sBootCompleted:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget-boolean v0, Lcom/mediatek/exceptionlog/ExceptionLog;->sExtException:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mediatek/exceptionlog/ExceptionLog;->sBootCompleted:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-static {p0}, Lcom/mediatek/exceptionlog/ExceptionLog;->promptToShutdown(Landroid/content/Context;)V

    .line 175
    :cond_0
    return-void
.end method

.method private static getAllThreadStackTraces()Ljava/lang/String;
    .locals 15

    .prologue
    .line 193
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v9

    .line 194
    .local v9, st:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    new-instance v11, Ljava/io/StringWriter;

    invoke-direct {v11}, Ljava/io/StringWriter;-><init>()V

    .line 197
    .local v11, traces:Ljava/io/Writer;
    :try_start_0
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 198
    .local v2, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/StackTraceElement;

    .line 199
    .local v3, el:[Ljava/lang/StackTraceElement;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Thread;

    .line 201
    .local v10, th:Ljava/lang/Thread;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/Thread;->isDaemon()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "daemon"

    :goto_1
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " prio="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Thread;->getPriority()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Thread id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Thread;->getId()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 206
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_2
    if-ge v6, v7, :cond_1

    aget-object v8, v0, v6

    .line 207
    .local v8, line:Ljava/lang/StackTraceElement;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\t"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 206
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 201
    .end local v0           #arr$:[Ljava/lang/StackTraceElement;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #line:Ljava/lang/StackTraceElement;
    :cond_0
    const-string v12, ""

    goto :goto_1

    .line 209
    .restart local v0       #arr$:[Ljava/lang/StackTraceElement;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    :cond_1
    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 211
    .end local v0           #arr$:[Ljava/lang/StackTraceElement;
    .end local v2           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    .end local v3           #el:[Ljava/lang/StackTraceElement;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v10           #th:Ljava/lang/Thread;
    :catch_0
    move-exception v1

    .line 212
    .local v1, e:Ljava/io/IOException;
    const-string v12, ""

    .line 217
    .end local v1           #e:Ljava/io/IOException;
    :goto_3
    return-object v12

    .line 213
    :catch_1
    move-exception v4

    .line 214
    .local v4, err:Ljava/lang/OutOfMemoryError;
    const-string v12, ""

    goto :goto_3

    .line 217
    .end local v4           #err:Ljava/lang/OutOfMemoryError;
    :cond_2
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_3
.end method

.method public static handle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .parameter "type"
    .parameter "info"
    .parameter "pid"

    .prologue
    .line 79
    const-string v3, "AES"

    const-string v5, "Exception Log handling..."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v1, ""

    .line 82
    .local v1, proc:Ljava/lang/String;
    const-string v2, ""

    .line 83
    .local v2, pkgs:Ljava/lang/String;
    const-string v19, ""

    .line 84
    .local v19, traceback:Ljava/lang/String;
    const-string v11, ""

    .line 85
    .local v11, cause:Ljava/lang/String;
    const-string v4, ""

    .line 86
    .local v4, detail:Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 88
    .local v6, lpid:J
    const-string v3, "\n+"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 89
    .local v18, splitInfo:[Ljava/lang/String;
    const-string v9, "^Process:\\s+(.*)"

    .line 90
    .local v9, PROC_REGEX:Ljava/lang/String;
    const-string v8, "^Package:\\s+(.*)"

    .line 91
    .local v8, PKG_REGEX:Ljava/lang/String;
    const-string v3, "^Process:\\s+(.*)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v16

    .line 92
    .local v16, procMatcher:Ljava/util/regex/Pattern;
    const-string v3, "^Package:\\s+(.*)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 95
    .local v15, pkgMatcher:Ljava/util/regex/Pattern;
    move-object/from16 v10, v18

    .local v10, arr$:[Ljava/lang/String;
    array-length v13, v10

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    if-ge v12, v13, :cond_2

    aget-object v17, v10, v12

    .line 96
    .local v17, s:Ljava/lang/String;
    invoke-virtual/range {v16 .. v17}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 97
    .local v14, m:Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    :cond_0
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 99
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 102
    .end local v14           #m:Ljava/util/regex/Matcher;
    .end local v17           #s:Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Backtrace of all threads:\n\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/exceptionlog/ExceptionLog;->getAllThreadStackTraces()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 103
    const-string v3, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 104
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    :cond_3
    move-object/from16 v3, p1

    move-object/from16 v5, p0

    .line 106
    invoke-static/range {v1 .. v7}, Lcom/mediatek/exceptionlog/ExceptionLog;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 107
    return-void
.end method

.method public static notify(Landroid/content/Context;Lcom/mediatek/exceptionlog/Message;)V
    .locals 20
    .parameter "context"
    .parameter "msg"

    .prologue
    .line 110
    const-string v17, "AES"

    const-string/jumbo v18, "notify()"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v17, "AES"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "sExtException = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-boolean v19, Lcom/mediatek/exceptionlog/ExceptionLog;->sExtException:Z

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v17, "AES"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "sBootCompleted = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-boolean v19, Lcom/mediatek/exceptionlog/ExceptionLog;->sBootCompleted:Z

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/exceptionlog/Message;->getExceptionClass()Ljava/lang/String;

    move-result-object v7

    .line 115
    .local v7, expClass:Ljava/lang/CharSequence;
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, ex:Ljava/lang/String;
    const-string v17, "AES"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Encounter "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v17, "External Exception"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 120
    const/16 v17, 0x1

    sput-boolean v17, Lcom/mediatek/exceptionlog/ExceptionLog;->sExtException:Z

    .line 121
    const-string v17, "AES"

    const-string v18, "Received External Exception"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    const-string v17, "AES"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "sExtException = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-boolean v19, Lcom/mediatek/exceptionlog/ExceptionLog;->sExtException:Z

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v17, "AES"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "sBootCompleted = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-boolean v19, Lcom/mediatek/exceptionlog/ExceptionLog;->sBootCompleted:Z

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sget-boolean v17, Lcom/mediatek/exceptionlog/ExceptionLog;->sBootCompleted:Z

    if-nez v17, :cond_2

    .line 128
    const-string v17, "AES"

    const-string v18, "Boot up not ready, skip this notification."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1
    :goto_0
    return-void

    .line 132
    :cond_2
    sget v17, Lcom/mediatek/exceptionlog/ExceptionLog;->sCount:I

    add-int/lit8 v17, v17, 0x1

    sput v17, Lcom/mediatek/exceptionlog/ExceptionLog;->sCount:I

    .line 133
    const-string/jumbo v12, "notification"

    .line 134
    .local v12, ns:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 136
    .local v9, mNotificationManager:Landroid/app/NotificationManager;
    const v8, #drawable@indicator_code_lock_point_area_green_holo#t

    .line 137
    .local v8, icon:I
    const-string v13, "Encounter Exception"

    .line 138
    .local v13, tickerText:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 139
    .local v15, when:J
    new-instance v10, Landroid/app/Notification;

    move-wide v0, v15

    invoke-direct {v10, v8, v13, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 140
    .local v10, notification:Landroid/app/Notification;
    iget v0, v10, Landroid/app/Notification;->flags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x10

    move/from16 v0, v17

    iput v0, v10, Landroid/app/Notification;->flags:I

    .line 141
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v14, v0, [J

    fill-array-data v14, :array_0

    .line 142
    .local v14, vibrate:[J
    iput-object v14, v10, Landroid/app/Notification;->vibrate:[J

    .line 143
    sget v17, Lcom/mediatek/exceptionlog/ExceptionLog;->sCount:I

    move/from16 v0, v17

    iput v0, v10, Landroid/app/Notification;->number:I

    .line 144
    move-object v5, v7

    .line 145
    .local v5, contentTitle:Ljava/lang/CharSequence;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Check exception index "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Lcom/mediatek/exceptionlog/Message;->mSeq:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, contentText:Ljava/lang/CharSequence;
    new-instance v11, Landroid/content/Intent;

    const-string v17, "com.mediatek.exceptionlog.intent.action.VIEW"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v11, notificationIntent:Landroid/content/Intent;
    const-string v17, "index"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/mediatek/exceptionlog/Message;->mSeq:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 151
    .local v3, contentIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v5, v4, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 152
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 153
    const-string v17, "Encounter Exception"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/mediatek/exceptionlog/ExceptionLog;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 155
    sget-boolean v17, Lcom/mediatek/exceptionlog/ExceptionLog;->sExtException:Z

    if-eqz v17, :cond_1

    sget-boolean v17, Lcom/mediatek/exceptionlog/ExceptionLog;->sBootCompleted:Z

    if-eqz v17, :cond_1

    .line 156
    invoke-static/range {p0 .. p0}, Lcom/mediatek/exceptionlog/ExceptionLog;->promptToShutdown(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 141
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static promptToShutdown(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 179
    const-string v1, "AES"

    const-string/jumbo v2, "promptToShutdown()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v1, "AES"

    const-string v2, "Process External Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v0, it:Landroid/content/Intent;
    const-string v1, "com.mediatek.exceptionlog.intent.action.EXCEPTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 186
    return-void
.end method

.method public static native report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "context"
    .parameter "text"

    .prologue
    .line 160
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 161
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 162
    return-void
.end method
