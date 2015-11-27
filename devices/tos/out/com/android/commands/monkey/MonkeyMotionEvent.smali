.class public abstract Lcom/android/commands/monkey/MonkeyMotionEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyMotionEvent.java"


# instance fields
.field private mAction:I

.field private mDeviceId:I

.field private mDownTime:J

.field private mEdgeFlags:I

.field private mEventTime:J

.field private mFlags:I

.field private mIntermediateNote:Z

.field private mMetaState:I

.field private mPointers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/MotionEvent$PointerCoords;",
            ">;"
        }
    .end annotation
.end field

.field private mSource:I

.field private mXPrecision:F

.field private mYPrecision:F


# direct methods
.method protected constructor <init>(III)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "source"    # I
    .param p3, "action"    # I

    .prologue
    const-wide/16 v2, -0x1

    const/high16 v1, 0x3f800000

    .line 47
    invoke-direct {p0, p1}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 48
    iput p2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mSource:I

    .line 49
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    .line 50
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    .line 51
    iput p3, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mAction:I

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    .line 53
    iput v1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mXPrecision:F

    .line 54
    iput v1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mYPrecision:F

    .line 55
    return-void
.end method

.method private getEvent()Landroid/view/MotionEvent;
    .registers 19

    .prologue
    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 130
    .local v6, "pointerCount":I
    new-array v7, v6, [I

    .line 131
    .local v7, "pointerIds":[I
    new-array v8, v6, [Landroid/view/MotionEvent$PointerCoords;

    .line 132
    .local v8, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_e
    move/from16 v0, v17

    if-ge v0, v6, :cond_2f

    .line 133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    aput v1, v7, v17

    .line 134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent$PointerCoords;

    aput-object v1, v8, v17

    .line 132
    add-int/lit8 v17, v17, 0x1

    goto :goto_e

    .line 137
    :cond_2f
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    const-wide/16 v9, 0x0

    cmp-long v3, v3, v9

    if-gez v3, :cond_66

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    :goto_41
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mAction:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mMetaState:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mXPrecision:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mYPrecision:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDeviceId:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEdgeFlags:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mSource:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mFlags:I

    invoke-static/range {v1 .. v15}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v16

    .line 141
    .local v16, "ev":Landroid/view/MotionEvent;
    return-object v16

    .line 137
    .end local v16    # "ev":Landroid/view/MotionEvent;
    :cond_66
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    goto :goto_41
.end method


# virtual methods
.method public addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .registers 10
    .param p1, "id"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v4, 0x0

    .line 58
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .registers 8
    .param p1, "id"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pressure"    # F
    .param p5, "size"    # F

    .prologue
    .line 63
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 64
    .local v0, "c":Landroid/view/MotionEvent$PointerCoords;
    iput p2, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 65
    iput p3, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 66
    iput p4, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 67
    iput p5, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 68
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 69
    return-object p0
.end method

.method public getAction()I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mAction:I

    return v0
.end method

.method public getDownTime()J
    .registers 3

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    return-wide v0
.end method

.method public getEventTime()J
    .registers 3

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    return-wide v0
.end method

.method public getIntermediateNote()Z
    .registers 2

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mIntermediateNote:Z

    return v0
.end method

.method protected abstract getTypeLabel()Ljava/lang/String;
.end method

.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .registers 11
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .prologue
    const/4 v4, 0x1

    .line 151
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getEvent()Landroid/view/MotionEvent;

    move-result-object v1

    .line 152
    .local v1, "me":Landroid/view/MotionEvent;
    if-lez p3, :cond_b

    iget-boolean v5, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mIntermediateNote:Z

    if-eqz v5, :cond_d

    :cond_b
    if-le p3, v4, :cond_b1

    .line 153
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, ":Sending "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .local v2, "msg":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getTypeLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_ca

    .line 175
    :pswitch_28
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    :goto_2f
    const-string v5, "):"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 181
    .local v3, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_39
    if-ge v0, v3, :cond_a8

    .line 182
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    const-string v5, ":("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 157
    .end local v0    # "i":I
    .end local v3    # "pointerCount":I
    :pswitch_6c
    const-string v5, "ACTION_DOWN"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 160
    :pswitch_72
    const-string v5, "ACTION_MOVE"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 163
    :pswitch_78
    const-string v5, "ACTION_UP"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 166
    :pswitch_7e
    const-string v5, "ACTION_CANCEL"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 169
    :pswitch_84
    const-string v5, "ACTION_POINTER_DOWN "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 172
    :pswitch_96
    const-string v5, "ACTION_POINTER_UP "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 185
    .restart local v0    # "i":I
    .restart local v3    # "pointerCount":I
    :cond_a8
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 188
    .end local v0    # "i":I
    .end local v2    # "msg":Ljava/lang/StringBuilder;
    .end local v3    # "pointerCount":I
    :cond_b1
    :try_start_b1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_b9
    .catchall {:try_start_b1 .. :try_end_b9} :catchall_c5

    move-result v5

    if-nez v5, :cond_c1

    .line 190
    const/4 v4, 0x0

    .line 193
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 195
    :goto_c0
    return v4

    .line 193
    :cond_c1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_c0

    :catchall_c5
    move-exception v4

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    throw v4

    .line 155
    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_78
        :pswitch_72
        :pswitch_7e
        :pswitch_28
        :pswitch_84
        :pswitch_96
    .end packed-switch
.end method

.method public isThrottlable()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 146
    invoke-virtual {p0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setDeviceId(I)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .registers 2
    .param p1, "deviceId"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDeviceId:I

    .line 116
    return-object p0
.end method

.method public setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .registers 3
    .param p1, "downTime"    # J

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    .line 95
    return-object p0
.end method

.method public setEdgeFlags(I)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .registers 2
    .param p1, "edgeFlags"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEdgeFlags:I

    .line 121
    return-object p0
.end method

.method public setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .registers 3
    .param p1, "eventTime"    # J

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    .line 100
    return-object p0
.end method

.method public setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .registers 2
    .param p1, "b"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mIntermediateNote:Z

    .line 74
    return-object p0
.end method

.method public setMetaState(I)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .registers 2
    .param p1, "metaState"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mMetaState:I

    .line 105
    return-object p0
.end method

.method public setPrecision(FF)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .registers 3
    .param p1, "xPrecision"    # F
    .param p2, "yPrecision"    # F

    .prologue
    .line 109
    iput p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mXPrecision:F

    .line 110
    iput p2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mYPrecision:F

    .line 111
    return-object p0
.end method
