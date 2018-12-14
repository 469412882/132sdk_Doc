.class final Lcom/google/zxing/qrcode/decoder/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private final codewords:[B

.field private final numDataCodewords:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    .line 33
    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;
    .locals 10

    .line 51
    array-length v0, p0

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 57
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 62
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_1

    .line 63
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_1
    new-array v1, v2, [Lcom/google/zxing/qrcode/decoder/DataBlock;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 69
    :goto_1
    array-length v4, p2

    if-ge v2, v4, :cond_3

    .line 70
    aget-object v4, p2, v2

    move v5, v3

    const/4 v3, 0x0

    .line 71
    :goto_2
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 72
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getDataCodewords()I

    move-result v6

    .line 73
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v7

    add-int/2addr v7, v6

    add-int/lit8 v8, v5, 0x1

    .line 74
    new-instance v9, Lcom/google/zxing/qrcode/decoder/DataBlock;

    new-array v7, v7, [B

    invoke-direct {v9, v6, v7}, Lcom/google/zxing/qrcode/decoder/DataBlock;-><init>(I[B)V

    aput-object v9, v1, v5

    add-int/lit8 v3, v3, 0x1

    move v5, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_1

    .line 80
    :cond_3
    aget-object p2, v1, v0

    iget-object p2, p2, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    array-length p2, p2

    .line 81
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_3
    if-ltz v2, :cond_5

    .line 83
    aget-object v4, v1, v2

    iget-object v4, v4, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    array-length v4, v4

    if-ne v4, p2, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 91
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result p1

    sub-int/2addr p2, p1

    const/4 p1, 0x0

    const/4 v4, 0x0

    :goto_5
    if-ge p1, p2, :cond_7

    move v5, v4

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_6

    .line 97
    aget-object v6, v1, v4

    iget-object v6, v6, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    add-int/lit8 v7, v5, 0x1

    aget-byte v5, p0, v5

    aput-byte v5, v6, p1

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_6

    :cond_6
    add-int/lit8 p1, p1, 0x1

    move v4, v5

    goto :goto_5

    :cond_7
    move p1, v2

    :goto_7
    if-ge p1, v3, :cond_8

    .line 102
    aget-object v5, v1, p1

    iget-object v5, v5, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p0, v4

    aput-byte v4, v5, p2

    add-int/lit8 p1, p1, 0x1

    move v4, v6

    goto :goto_7

    .line 105
    :cond_8
    aget-object p1, v1, v0

    iget-object p1, p1, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    array-length p1, p1

    :goto_8
    if-ge p2, p1, :cond_b

    move v5, v4

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v3, :cond_a

    if-ge v4, v2, :cond_9

    move v6, p2

    goto :goto_a

    :cond_9
    add-int/lit8 v6, p2, 0x1

    .line 109
    :goto_a
    aget-object v7, v1, v4

    iget-object v7, v7, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    add-int/lit8 v8, v5, 0x1

    aget-byte v5, p0, v5

    aput-byte v5, v7, v6

    add-int/lit8 v4, v4, 0x1

    move v5, v8

    goto :goto_9

    :cond_a
    add-int/lit8 p2, p2, 0x1

    move v4, v5

    goto :goto_8

    :cond_b
    return-object v1
.end method


# virtual methods
.method getCodewords()[B
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
