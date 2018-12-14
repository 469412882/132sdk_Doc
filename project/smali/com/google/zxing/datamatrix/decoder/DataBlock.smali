.class final Lcom/google/zxing/datamatrix/decoder/DataBlock;
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
    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    .line 33
    iput-object p2, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    .locals 12

    .line 49
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getECBlocks()Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 54
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_0

    .line 55
    aget-object v5, v1, v3

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    :cond_0
    new-array v3, v4, [Lcom/google/zxing/datamatrix/decoder/DataBlock;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 61
    :goto_1
    array-length v6, v1

    if-ge v4, v6, :cond_2

    .line 62
    aget-object v6, v1, v4

    move v7, v5

    const/4 v5, 0x0

    .line 63
    :goto_2
    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v8

    if-ge v5, v8, :cond_1

    .line 64
    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getDataCodewords()I

    move-result v8

    .line 65
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v9

    add-int/2addr v9, v8

    add-int/lit8 v10, v7, 0x1

    .line 66
    new-instance v11, Lcom/google/zxing/datamatrix/decoder/DataBlock;

    new-array v9, v9, [B

    invoke-direct {v11, v8, v9}, Lcom/google/zxing/datamatrix/decoder/DataBlock;-><init>(I[B)V

    aput-object v11, v3, v7

    add-int/lit8 v5, v5, 0x1

    move v7, v10

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_1

    .line 73
    :cond_2
    aget-object v1, v3, v2

    iget-object v1, v1, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    array-length v1, v1

    .line 76
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v0

    sub-int/2addr v1, v0

    add-int/lit8 v0, v1, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v4, v0, :cond_4

    move v7, v6

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_3

    .line 83
    aget-object v8, v3, v6

    iget-object v8, v8, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, p0, v7

    aput-byte v7, v8, v4

    add-int/lit8 v6, v6, 0x1

    move v7, v9

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    move v6, v7

    goto :goto_3

    .line 88
    :cond_4
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getVersionNumber()I

    move-result p1

    const/16 v4, 0x18

    if-ne p1, v4, :cond_5

    const/4 p1, 0x1

    goto :goto_5

    :cond_5
    const/4 p1, 0x0

    :goto_5
    if-eqz p1, :cond_6

    const/16 v4, 0x8

    goto :goto_6

    :cond_6
    move v4, v5

    :goto_6
    move v7, v6

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v4, :cond_7

    .line 91
    aget-object v8, v3, v6

    iget-object v8, v8, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, p0, v7

    aput-byte v7, v8, v0

    add-int/lit8 v6, v6, 0x1

    move v7, v9

    goto :goto_7

    .line 95
    :cond_7
    aget-object v0, v3, v2

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    array-length v0, v0

    :goto_8
    if-ge v1, v0, :cond_a

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v5, :cond_9

    if-eqz p1, :cond_8

    const/4 v6, 0x7

    if-le v4, v6, :cond_8

    add-int/lit8 v6, v1, -0x1

    goto :goto_a

    :cond_8
    move v6, v1

    .line 99
    :goto_a
    aget-object v8, v3, v4

    iget-object v8, v8, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, p0, v7

    aput-byte v7, v8, v6

    add-int/lit8 v4, v4, 0x1

    move v7, v9

    goto :goto_9

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 103
    :cond_a
    array-length p0, p0

    if-eq v7, p0, :cond_b

    .line 104
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_b
    return-object v3
.end method


# virtual methods
.method getCodewords()[B
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
