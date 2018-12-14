.class final Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
.super Ljava/lang/Object;
.source "CurrentParsingState.java"


# static fields
.field private static final ALPHA:I = 0x2

.field private static final ISO_IEC_646:I = 0x4

.field private static final NUMERIC:I = 0x1


# instance fields
.field private encoding:I

.field position:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    const/4 v0, 0x1

    .line 43
    iput v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->encoding:I

    return-void
.end method


# virtual methods
.method isAlpha()Z
    .locals 2

    .line 47
    iget v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->encoding:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isIsoIec646()Z
    .locals 2

    .line 55
    iget v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->encoding:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isNumeric()Z
    .locals 2

    .line 51
    iget v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->encoding:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method setAlpha()V
    .locals 1

    const/4 v0, 0x2

    .line 63
    iput v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->encoding:I

    return-void
.end method

.method setIsoIec646()V
    .locals 1

    const/4 v0, 0x4

    .line 67
    iput v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->encoding:I

    return-void
.end method

.method setNumeric()V
    .locals 1

    const/4 v0, 0x1

    .line 59
    iput v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->encoding:I

    return-void
.end method
