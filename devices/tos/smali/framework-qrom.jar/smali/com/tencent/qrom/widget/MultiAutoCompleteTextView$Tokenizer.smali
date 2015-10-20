.class public interface abstract Lcom/tencent/qrom/widget/MultiAutoCompleteTextView$Tokenizer;
.super Ljava/lang/Object;
.source "MultiAutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/MultiAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Tokenizer"
.end annotation


# virtual methods
.method public abstract findTokenEnd(Ljava/lang/CharSequence;I)I
.end method

.method public abstract findTokenStart(Ljava/lang/CharSequence;I)I
.end method

.method public abstract terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
.end method
