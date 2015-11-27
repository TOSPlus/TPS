.class public Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyGetFrameRateEvent.java"


# static fields
.field private static final LOG_FILE:Ljava/lang/String; = "/sdcard/avgFrameRateOut.txt"

.field private static final NO_OF_FRAMES_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "MonkeyGetFrameRateEvent"

.field private static mDuration:F

.field private static mEndFrameNo:I

.field private static mEndTime:J

.field private static mStartFrameNo:I

.field private static mStartTime:J

.field private static mTestCaseName:Ljava/lang/String;


# instance fields
.field private GET_FRAMERATE_CMD:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mTestCaseName:Ljava/lang/String;

    .line 52
    const-string v0, ".*\\(([a-f[A-F][0-9]].*?)\\s.*\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->NO_OF_FRAMES_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 62
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 40
    const-string v0, "service call SurfaceFlinger 1013"

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->GET_FRAMERATE_CMD:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStatus:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "testCaseName"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 40
    const-string v0, "service call SurfaceFlinger 1013"

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->GET_FRAMERATE_CMD:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStatus:Ljava/lang/String;

    .line 58
    sput-object p2, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mTestCaseName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private getAverageFrameRate(IF)F
    .registers 5
    .param p1, "totalNumberOfFrame"    # I
    .param p2, "duration"    # F

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "avgFrameRate":F
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_9

    .line 70
    int-to-float v1, p1

    div-float v0, v1, p2

    .line 72
    :cond_9
    return v0
.end method

.method private getNumberOfFrames(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, "noOfFrames":Ljava/lang/String;
    sget-object v2, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->NO_OF_FRAMES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 103
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 104
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    :cond_12
    return-object v1
.end method

.method private writeAverageFrameRate()V
    .registers 10

    .prologue
    .line 79
    const/4 v3, 0x0

    .line 81
    .local v3, "writer":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 83
    .local v2, "totalNumberOfFrame":I
    :try_start_2
    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/sdcard/avgFrameRateOut.txt"

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_57
    .catchall {:try_start_2 .. :try_end_a} :catchall_83

    .line 84
    .end local v3    # "writer":Ljava/io/FileWriter;
    .local v4, "writer":Ljava/io/FileWriter;
    :try_start_a
    sget v5, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mEndFrameNo:I

    sget v6, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStartFrameNo:I

    sub-int v2, v5, v6

    .line 85
    sget v5, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mDuration:F

    invoke-direct {p0, v2, v5}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->getAverageFrameRate(IF)F

    move-result v0

    .line 86
    .local v0, "avgFrameRate":F
    const-string v5, "%s:%.2f\n"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mTestCaseName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_31} :catch_ab
    .catchall {:try_start_a .. :try_end_31} :catchall_a8

    .line 92
    if-eqz v4, :cond_36

    :try_start_33
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_38

    :cond_36
    move-object v3, v4

    .line 97
    .end local v0    # "avgFrameRate":F
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :cond_37
    :goto_37
    return-void

    .line 93
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v0    # "avgFrameRate":F
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_38
    move-exception v1

    .line 94
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "MonkeyGetFrameRateEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 96
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_37

    .line 88
    .end local v0    # "avgFrameRate":F
    .end local v1    # "e":Ljava/io/IOException;
    :catch_57
    move-exception v1

    .line 89
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_58
    :try_start_58
    const-string v5, "MonkeyGetFrameRateEvent"

    const-string v6, "Can\'t write sdcard log file"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_83

    .line 92
    if-eqz v3, :cond_37

    :try_start_61
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_37

    .line 93
    :catch_65
    move-exception v1

    .line 94
    const-string v5, "MonkeyGetFrameRateEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 91
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_83
    move-exception v5

    .line 92
    :goto_84
    if-eqz v3, :cond_89

    :try_start_86
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    .line 95
    :cond_89
    :goto_89
    throw v5

    .line 93
    :catch_8a
    move-exception v1

    .line 94
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "MonkeyGetFrameRateEvent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 91
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catchall_a8
    move-exception v5

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_84

    .line 88
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_ab
    move-exception v1

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_58
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .registers 17
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .prologue
    .line 111
    const/4 v4, 0x0

    .line 112
    .local v4, "p":Ljava/lang/Process;
    const/4 v5, 0x0

    .line 114
    .local v5, "result":Ljava/io/BufferedReader;
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    iget-object v9, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->GET_FRAMERATE_CMD:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 115
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    move-result v7

    .line 116
    .local v7, "status":I
    if-eqz v7, :cond_2c

    .line 117
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "// Shell command %s status was %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->GET_FRAMERATE_CMD:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    :cond_2c
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_f8
    .catchall {:try_start_2 .. :try_end_3a} :catchall_de

    .line 123
    .end local v5    # "result":Ljava/io/BufferedReader;
    .local v6, "result":Ljava/io/BufferedReader;
    :try_start_3a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "output":Ljava/lang/String;
    if-eqz v3, :cond_58

    .line 126
    iget-object v8, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStatus:Ljava/lang/String;

    const-string v9, "start"

    if-ne v8, v9, :cond_65

    .line 127
    invoke-direct {p0, v3}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->getNumberOfFrames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStartFrameNo:I

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sput-wide v8, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStartTime:J
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_58} :catch_91
    .catchall {:try_start_3a .. :try_end_58} :catchall_f5

    .line 142
    :cond_58
    :goto_58
    if-eqz v6, :cond_5d

    .line 143
    :try_start_5a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 145
    :cond_5d
    if-eqz v4, :cond_62

    .line 146
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_62} :catch_d2

    :cond_62
    move-object v5, v6

    .line 152
    .end local v3    # "output":Ljava/lang/String;
    .end local v6    # "result":Ljava/io/BufferedReader;
    .end local v7    # "status":I
    .restart local v5    # "result":Ljava/io/BufferedReader;
    :cond_63
    :goto_63
    const/4 v8, 0x1

    return v8

    .line 129
    .end local v5    # "result":Ljava/io/BufferedReader;
    .restart local v3    # "output":Ljava/lang/String;
    .restart local v6    # "result":Ljava/io/BufferedReader;
    .restart local v7    # "status":I
    :cond_65
    :try_start_65
    iget-object v8, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStatus:Ljava/lang/String;

    const-string v9, "end"

    if-ne v8, v9, :cond_58

    .line 130
    invoke-direct {p0, v3}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->getNumberOfFrames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mEndFrameNo:I

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sput-wide v8, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mEndTime:J

    .line 132
    sget-wide v8, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mEndTime:J

    sget-wide v10, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStartTime:J

    sub-long v0, v8, v10

    .line 133
    .local v0, "diff":J
    long-to-double v8, v0

    const-wide v10, 0x408f400000000000L

    div-double/2addr v8, v10

    double-to-float v8, v8

    sput v8, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mDuration:F

    .line 134
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->writeAverageFrameRate()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_90} :catch_91
    .catchall {:try_start_65 .. :try_end_90} :catchall_f5

    goto :goto_58

    .line 137
    .end local v0    # "diff":J
    .end local v3    # "output":Ljava/lang/String;
    :catch_91
    move-exception v2

    move-object v5, v6

    .line 138
    .end local v6    # "result":Ljava/io/BufferedReader;
    .end local v7    # "status":I
    .local v2, "e":Ljava/lang/Exception;
    .restart local v5    # "result":Ljava/io/BufferedReader;
    :goto_93
    :try_start_93
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "// Exception from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->GET_FRAMERATE_CMD:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_bc
    .catchall {:try_start_93 .. :try_end_bc} :catchall_de

    .line 142
    if-eqz v5, :cond_c1

    .line 143
    :try_start_be
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 145
    :cond_c1
    if-eqz v4, :cond_63

    .line 146
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c6} :catch_c7

    goto :goto_63

    .line 148
    :catch_c7
    move-exception v2

    .line 149
    .local v2, "e":Ljava/io/IOException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_63

    .line 148
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "result":Ljava/io/BufferedReader;
    .restart local v3    # "output":Ljava/lang/String;
    .restart local v6    # "result":Ljava/io/BufferedReader;
    .restart local v7    # "status":I
    :catch_d2
    move-exception v2

    .line 149
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v5, v6

    .line 151
    .end local v6    # "result":Ljava/io/BufferedReader;
    .restart local v5    # "result":Ljava/io/BufferedReader;
    goto :goto_63

    .line 141
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "output":Ljava/lang/String;
    .end local v7    # "status":I
    :catchall_de
    move-exception v8

    .line 142
    :goto_df
    if-eqz v5, :cond_e4

    .line 143
    :try_start_e1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 145
    :cond_e4
    if-eqz v4, :cond_e9

    .line 146
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e9} :catch_ea

    .line 150
    :cond_e9
    :goto_e9
    throw v8

    .line 148
    :catch_ea
    move-exception v2

    .line 149
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_e9

    .line 141
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "result":Ljava/io/BufferedReader;
    .restart local v6    # "result":Ljava/io/BufferedReader;
    .restart local v7    # "status":I
    :catchall_f5
    move-exception v8

    move-object v5, v6

    .end local v6    # "result":Ljava/io/BufferedReader;
    .restart local v5    # "result":Ljava/io/BufferedReader;
    goto :goto_df

    .line 137
    .end local v7    # "status":I
    :catch_f8
    move-exception v2

    goto :goto_93
.end method
