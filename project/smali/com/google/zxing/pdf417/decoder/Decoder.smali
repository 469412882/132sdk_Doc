.class public final Lcom/google/zxing/pdf417/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# static fields
.field private static final MAX_EC_CODEWORDS:I = 0x200

.field private static final MAX_ERRORS:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static correctErrors([I[II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 p0, 0x3

    if-eqz p1, :cond_0

    .line 129
    array-length v0, p1

    div-int/lit8 v1, p2, 0x2

    add-int/2addr v1, p0

    if-gt v0, v1, :cond_3

    :cond_0
    if-ltz p2, :cond_3

    const/16 v0, 0x200

    if-le p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 138
    array-length p1, p1

    if-le p1, p0, :cond_2

    .line 144
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_2
    return p2

    .line 132
    :cond_3
    :goto_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static verifyCodewordCount([II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 99
    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 102
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 v0, 0x0

    .line 107
    aget v1, p0, v0

    .line 108
    array-length v2, p0

    if-le v1, v2, :cond_1

    .line 109
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_1
    if-nez v1, :cond_3

    .line 113
    array-length v1, p0

    if-ge p1, v1, :cond_2

    .line 114
    array-length v1, p0

    sub-int/2addr v1, p1

    aput v1, p0, v0

    goto :goto_0

    .line 116
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;

    invoke-direct {v0, p1}, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 75
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;->readCodewords()[I

    move-result-object p1

    if-eqz p1, :cond_1

    .line 76
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;->getECLevel()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    shl-int v1, v2, v1

    .line 82
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;->getErasures()[I

    move-result-object v0

    .line 84
    invoke-static {p1, v0, v1}, Lcom/google/zxing/pdf417/decoder/Decoder;->correctErrors([I[II)I

    .line 85
    invoke-static {p1, v1}, Lcom/google/zxing/pdf417/decoder/Decoder;->verifyCodewordCount([II)V

    .line 88
    invoke-static {p1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decode([I)Lcom/google/zxing/common/DecoderResult;

    move-result-object p1

    return-object p1

    .line 77
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1
.end method

.method public decode([[Z)Lcom/google/zxing/common/DecoderResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 52
    array-length v0, p1

    .line 53
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v1, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    .line 56
    aget-object v5, p1, v4

    aget-boolean v5, v5, v3

    if-eqz v5, :cond_0

    .line 57
    invoke-virtual {v1, v4, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/zxing/pdf417/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object p1

    return-object p1
.end method
