.class Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lcom/tencent/qrom/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/NumberPicker;)V
    .locals 1

    .prologue
    .line 2208
    iput-object p1, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2212
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->MODE_PRESS:I

    .line 2213
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 3
    .param p1, "button"    # I

    .prologue
    .line 2233
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 2234
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 2235
    iput p1, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2236
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/tencent/qrom/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2237
    return-void
.end method

.method public buttonTapped(I)V
    .locals 1
    .param p1, "button"    # I

    .prologue
    .line 2240
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 2241
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 2242
    iput p1, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2243
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 2244
    return-void
.end method

.method public cancel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2219
    iput v4, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 2220
    iput v4, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2221
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2222
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0}, Lcom/tencent/qrom/widget/NumberPicker;->access$1300(Lcom/tencent/qrom/widget/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2223
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # setter for: Lcom/tencent/qrom/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v4}, Lcom/tencent/qrom/widget/NumberPicker;->access$1302(Lcom/tencent/qrom/widget/NumberPicker;Z)Z

    .line 2224
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$1400(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mRight:I
    invoke-static {v2}, Lcom/tencent/qrom/widget/NumberPicker;->access$1500(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mBottom:I
    invoke-static {v3}, Lcom/tencent/qrom/widget/NumberPicker;->access$1600(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/tencent/qrom/widget/NumberPicker;->invalidate(IIII)V

    .line 2226
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # setter for: Lcom/tencent/qrom/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v4}, Lcom/tencent/qrom/widget/NumberPicker;->access$1702(Lcom/tencent/qrom/widget/NumberPicker;Z)Z

    .line 2227
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0}, Lcom/tencent/qrom/widget/NumberPicker;->access$1700(Lcom/tencent/qrom/widget/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2228
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mRight:I
    invoke-static {v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$1800(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v2}, Lcom/tencent/qrom/widget/NumberPicker;->access$1900(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/tencent/qrom/widget/NumberPicker;->invalidate(IIII)V

    .line 2230
    :cond_1
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2248
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 2282
    :goto_0
    return-void

    .line 2250
    :pswitch_0
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2252
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # setter for: Lcom/tencent/qrom/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v3}, Lcom/tencent/qrom/widget/NumberPicker;->access$1302(Lcom/tencent/qrom/widget/NumberPicker;Z)Z

    .line 2253
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$1400(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mRight:I
    invoke-static {v2}, Lcom/tencent/qrom/widget/NumberPicker;->access$2000(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mBottom:I
    invoke-static {v3}, Lcom/tencent/qrom/widget/NumberPicker;->access$2100(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/tencent/qrom/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 2256
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # setter for: Lcom/tencent/qrom/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v3}, Lcom/tencent/qrom/widget/NumberPicker;->access$1702(Lcom/tencent/qrom/widget/NumberPicker;Z)Z

    .line 2257
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mRight:I
    invoke-static {v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$2200(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v2}, Lcom/tencent/qrom/widget/NumberPicker;->access$1900(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/tencent/qrom/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 2262
    :pswitch_3
    iget v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 2264
    :pswitch_4
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0}, Lcom/tencent/qrom/widget/NumberPicker;->access$1300(Lcom/tencent/qrom/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2265
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/tencent/qrom/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2268
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # ^= operator for: Lcom/tencent/qrom/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v3}, Lcom/tencent/qrom/widget/NumberPicker;->access$1380(Lcom/tencent/qrom/widget/NumberPicker;I)Z

    .line 2269
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$1400(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mRight:I
    invoke-static {v2}, Lcom/tencent/qrom/widget/NumberPicker;->access$2300(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mBottom:I
    invoke-static {v3}, Lcom/tencent/qrom/widget/NumberPicker;->access$2400(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/tencent/qrom/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 2272
    :pswitch_5
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0}, Lcom/tencent/qrom/widget/NumberPicker;->access$1700(Lcom/tencent/qrom/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2273
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/tencent/qrom/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2276
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # ^= operator for: Lcom/tencent/qrom/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v3}, Lcom/tencent/qrom/widget/NumberPicker;->access$1780(Lcom/tencent/qrom/widget/NumberPicker;I)Z

    .line 2277
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mRight:I
    invoke-static {v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$2500(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$PressedStateHelper;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v2}, Lcom/tencent/qrom/widget/NumberPicker;->access$1900(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/tencent/qrom/widget/NumberPicker;->invalidate(IIII)V

    goto/16 :goto_0

    .line 2248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 2250
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2262
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
