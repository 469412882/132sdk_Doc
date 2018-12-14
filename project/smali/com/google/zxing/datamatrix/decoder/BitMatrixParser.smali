.class final Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
.super Ljava/lang/Object;
.source "BitMatrixParser.java"


# instance fields
.field private final mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

.field private final readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

.field private final version:Lcom/google/zxing/datamatrix/decoder/Version;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    const/16 v1, 0x90

    if-gt v0, v1, :cond_1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readVersion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->extractDataRegion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    .line 44
    new-instance p1, Lcom/google/zxing/common/BitMatrix;

    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    iput-object p1, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    return-void

    .line 38
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method extractDataRegion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 17

    move-object/from16 v0, p0

    .line 407
    iget-object v1, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/Version;->getSymbolSizeRows()I

    move-result v1

    .line 408
    iget-object v2, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/decoder/Version;->getSymbolSizeColumns()I

    move-result v2

    .line 411
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 412
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Dimension of bitMarix must match the version size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 415
    :cond_0
    iget-object v3, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/decoder/Version;->getDataRegionSizeRows()I

    move-result v3

    .line 416
    iget-object v4, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/decoder/Version;->getDataRegionSizeColumns()I

    move-result v4

    .line 418
    div-int/2addr v1, v3

    .line 419
    div-int/2addr v2, v4

    mul-int v5, v1, v3

    .line 425
    new-instance v6, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v6, v5}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_5

    mul-int v8, v7, v3

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v2, :cond_4

    mul-int v10, v9, v4

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v3, :cond_3

    add-int/lit8 v12, v3, 0x2

    mul-int v12, v12, v7

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v12, v11

    add-int v13, v8, v11

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v4, :cond_2

    add-int/lit8 v15, v4, 0x2

    mul-int v15, v15, v9

    add-int/lit8 v15, v15, 0x1

    add-int/2addr v15, v14

    move-object/from16 v5, p1

    .line 435
    invoke-virtual {v5, v15, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v15

    if-eqz v15, :cond_1

    add-int v15, v10, v14

    .line 437
    invoke-virtual {v6, v15, v13}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_2
    move-object/from16 v5, p1

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v5, p1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v5, p1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    return-object v6
.end method

.method readCodewords()[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/Version;->getTotalCodewords()I

    move-result v0

    new-array v0, v0, [B

    .line 87
    iget-object v1, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_0
    const/4 v10, 0x1

    if-ne v3, v1, :cond_1

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    add-int/lit8 v5, v6, 0x1

    .line 99
    invoke-virtual {p0, v1, v1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner1(II)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v0, v6

    add-int/lit8 v3, v3, -0x2

    add-int/lit8 v4, v4, 0x2

    move v6, v5

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v11, v1, -0x2

    if-ne v3, v11, :cond_2

    if-nez v4, :cond_2

    and-int/lit8 v12, v1, 0x3

    if-eqz v12, :cond_2

    if-nez v7, :cond_2

    add-int/lit8 v7, v6, 0x1

    .line 104
    invoke-virtual {p0, v1, v1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner2(II)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v0, v6

    add-int/lit8 v3, v3, -0x2

    add-int/lit8 v4, v4, 0x2

    move v6, v7

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v12, v1, 0x4

    if-ne v3, v12, :cond_3

    const/4 v12, 0x2

    if-ne v4, v12, :cond_3

    and-int/lit8 v12, v1, 0x7

    if-nez v12, :cond_3

    if-nez v8, :cond_3

    add-int/lit8 v8, v6, 0x1

    .line 109
    invoke-virtual {p0, v1, v1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner3(II)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v0, v6

    add-int/lit8 v3, v3, -0x2

    add-int/lit8 v4, v4, 0x2

    move v6, v8

    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    if-ne v3, v11, :cond_4

    if-nez v4, :cond_4

    and-int/lit8 v11, v1, 0x7

    if-ne v11, v2, :cond_4

    if-nez v9, :cond_4

    add-int/lit8 v9, v6, 0x1

    .line 114
    invoke-virtual {p0, v1, v1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner4(II)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v0, v6

    add-int/lit8 v3, v3, -0x2

    add-int/lit8 v4, v4, 0x2

    move v6, v9

    const/4 v9, 0x1

    goto :goto_0

    :cond_4
    if-ge v3, v1, :cond_5

    if-ltz v4, :cond_5

    .line 121
    iget-object v10, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v10, v4, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-nez v10, :cond_5

    add-int/lit8 v10, v6, 0x1

    .line 122
    invoke-virtual {p0, v3, v4, v1, v1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readUtah(IIII)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v0, v6

    move v6, v10

    :cond_5
    add-int/lit8 v3, v3, -0x2

    add-int/lit8 v4, v4, 0x2

    if-ltz v3, :cond_6

    if-lt v4, v1, :cond_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x3

    :cond_7
    if-ltz v3, :cond_8

    if-ge v4, v1, :cond_8

    .line 132
    iget-object v10, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v10, v4, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-nez v10, :cond_8

    add-int/lit8 v10, v6, 0x1

    .line 133
    invoke-virtual {p0, v3, v4, v1, v1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readUtah(IIII)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v0, v6

    move v6, v10

    :cond_8
    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v1, :cond_9

    if-gez v4, :cond_7

    :cond_9
    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v4, v4, 0x1

    :goto_0
    if-lt v3, v1, :cond_0

    if-lt v4, v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/Version;->getTotalCodewords()I

    move-result v1

    if-eq v6, v1, :cond_a

    .line 144
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_a
    return-object v0
.end method

.method readCorner1(II)I
    .locals 5

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    .line 230
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    shl-int/2addr v2, v3

    .line 234
    invoke-virtual {p0, v0, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_1

    or-int/lit8 v2, v2, 0x1

    :cond_1
    shl-int/2addr v2, v3

    const/4 v4, 0x2

    .line 238
    invoke-virtual {p0, v0, v4, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    or-int/lit8 v2, v2, 0x1

    :cond_2
    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, p2, -0x2

    .line 242
    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/2addr v0, v3

    add-int/lit8 v2, p2, -0x1

    .line 246
    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/2addr v0, v3

    .line 250
    invoke-virtual {p0, v3, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/2addr v0, v3

    .line 254
    invoke-virtual {p0, v4, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    shl-int/2addr v0, v3

    const/4 v1, 0x3

    .line 258
    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result p1

    if-eqz p1, :cond_7

    or-int/lit8 v0, v0, 0x1

    :cond_7
    return v0
.end method

.method readCorner2(II)I
    .locals 4

    add-int/lit8 v0, p1, -0x3

    const/4 v1, 0x0

    .line 275
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x2

    .line 279
    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x1

    .line 283
    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x4

    .line 287
    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x3

    .line 291
    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x2

    .line 295
    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x1

    .line 299
    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    shl-int/2addr v0, v2

    .line 303
    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result p1

    if-eqz p1, :cond_7

    or-int/lit8 v0, v0, 0x1

    :cond_7
    return v0
.end method

.method readCorner3(II)I
    .locals 7

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    .line 320
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    shl-int/2addr v2, v3

    add-int/lit8 v4, p2, -0x1

    .line 324
    invoke-virtual {p0, v0, v4, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    or-int/lit8 v2, v2, 0x1

    :cond_1
    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, p2, -0x3

    .line 328
    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v5

    if-eqz v5, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/2addr v0, v3

    add-int/lit8 v5, p2, -0x2

    .line 332
    invoke-virtual {p0, v1, v5, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v6

    if-eqz v6, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/2addr v0, v3

    .line 336
    invoke-virtual {p0, v1, v4, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/2addr v0, v3

    .line 340
    invoke-virtual {p0, v3, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/2addr v0, v3

    .line 344
    invoke-virtual {p0, v3, v5, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    shl-int/2addr v0, v3

    .line 348
    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result p1

    if-eqz p1, :cond_7

    or-int/lit8 v0, v0, 0x1

    :cond_7
    return v0
.end method

.method readCorner4(II)I
    .locals 4

    add-int/lit8 v0, p1, -0x3

    const/4 v1, 0x0

    .line 365
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x2

    .line 369
    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x1

    .line 373
    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x2

    .line 377
    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x1

    .line 381
    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/2addr v0, v2

    .line 385
    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/2addr v0, v2

    const/4 v1, 0x2

    .line 389
    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    shl-int/2addr v0, v2

    const/4 v1, 0x3

    .line 393
    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result p1

    if-eqz p1, :cond_7

    or-int/lit8 v0, v0, 0x1

    :cond_7
    return v0
.end method

.method readModule(IIII)Z
    .locals 0

    if-gez p1, :cond_0

    add-int/2addr p1, p3

    add-int/lit8 p3, p3, 0x4

    and-int/lit8 p3, p3, 0x7

    rsub-int/lit8 p3, p3, 0x4

    add-int/2addr p2, p3

    :cond_0
    if-gez p2, :cond_1

    add-int/2addr p2, p4

    add-int/lit8 p4, p4, 0x4

    and-int/lit8 p3, p4, 0x7

    rsub-int/lit8 p3, p3, 0x4

    add-int/2addr p1, p3

    .line 168
    :cond_1
    iget-object p3, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p3, p2, p1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 169
    iget-object p3, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p3, p2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p1

    return p1
.end method

.method readUtah(IIII)I
    .locals 6

    add-int/lit8 v0, p1, -0x2

    add-int/lit8 v1, p2, -0x2

    .line 185
    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    shl-int/2addr v2, v3

    add-int/lit8 v4, p2, -0x1

    .line 189
    invoke-virtual {p0, v0, v4, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    or-int/lit8 v2, v2, 0x1

    :cond_1
    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, p1, -0x1

    .line 193
    invoke-virtual {p0, v2, v1, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v5

    if-eqz v5, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/2addr v0, v3

    .line 197
    invoke-virtual {p0, v2, v4, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v5

    if-eqz v5, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/2addr v0, v3

    .line 201
    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v2

    if-eqz v2, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/2addr v0, v3

    .line 205
    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/2addr v0, v3

    .line 209
    invoke-virtual {p0, p1, v4, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    shl-int/2addr v0, v3

    .line 213
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result p1

    if-eqz p1, :cond_7

    or-int/lit8 v0, v0, 0x1

    :cond_7
    return v0
.end method

.method readVersion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/datamatrix/decoder/Version;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    if-eqz v0, :cond_0

    .line 61
    iget-object p1, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    return-object p1

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result p1

    .line 68
    invoke-static {p1, p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getVersionForDimensions(II)Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object p1

    return-object p1
.end method
