.class final Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
.super Ljava/lang/Object;
.source "BitMatrixParser.java"


# instance fields
.field private final bitMatrix:Lcom/google/zxing/common/BitMatrix;

.field private parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

.field private parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;


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

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    return-void

    .line 38
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1
.end method

.method private copyBit(III)I
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p1

    if-eqz p1, :cond_0

    shl-int/lit8 p1, p3, 0x1

    or-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p3, 0x1

    :goto_0
    return p1
.end method


# virtual methods
.method readCodewords()[B
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v1

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    .line 156
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getDataMask()B

    move-result v1

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DataMask;->forReference(I)Lcom/google/zxing/qrcode/decoder/DataMask;

    move-result-object v1

    .line 157
    iget-object v3, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    .line 158
    iget-object v4, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1, v4, v3}, Lcom/google/zxing/qrcode/decoder/DataMask;->unmaskBitMatrix(Lcom/google/zxing/common/BitMatrix;I)V

    .line 160
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version;->buildFunctionPattern()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 163
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v4

    new-array v4, v4, [B

    add-int/lit8 v5, v3, -0x1

    const/4 v7, 0x1

    move v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-lez v7, :cond_7

    const/4 v12, 0x6

    if-ne v7, v12, :cond_0

    add-int/lit8 v7, v7, -0x1

    :cond_0
    move v12, v11

    move v11, v10

    move v10, v8

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v3, :cond_6

    if-eqz v9, :cond_1

    sub-int v13, v5, v8

    goto :goto_2

    :cond_1
    move v13, v8

    :goto_2
    move v14, v11

    move v11, v10

    const/4 v10, 0x0

    :goto_3
    const/4 v15, 0x2

    if-ge v10, v15, :cond_5

    sub-int v15, v7, v10

    .line 179
    invoke-virtual {v1, v15, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v16

    if-nez v16, :cond_4

    add-int/lit8 v12, v12, 0x1

    shl-int/lit8 v14, v14, 0x1

    .line 183
    iget-object v6, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v6, v15, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_2

    or-int/lit8 v6, v14, 0x1

    goto :goto_4

    :cond_2
    move v6, v14

    :goto_4
    const/16 v14, 0x8

    if-ne v12, v14, :cond_3

    add-int/lit8 v12, v11, 0x1

    int-to-byte v6, v6

    .line 188
    aput-byte v6, v4, v11

    move v11, v12

    const/4 v12, 0x0

    const/4 v14, 0x0

    goto :goto_5

    :cond_3
    move v14, v6

    :cond_4
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v8, 0x1

    move v10, v11

    move v11, v14

    goto :goto_1

    :cond_6
    xor-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, -0x2

    move v8, v10

    move v10, v11

    move v11, v12

    goto :goto_0

    .line 197
    :cond_7
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v1

    if-eq v8, v1, :cond_8

    .line 198
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    :cond_8
    return-object v4
.end method

.method readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x6

    const/16 v4, 0x8

    if-ge v1, v3, :cond_1

    .line 59
    invoke-direct {p0, v1, v4, v2}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    .line 62
    invoke-direct {p0, v1, v4, v2}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v2

    .line 63
    invoke-direct {p0, v4, v4, v2}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v2

    .line 64
    invoke-direct {p0, v4, v1, v2}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    const/4 v2, 0x5

    :goto_1
    if-ltz v2, :cond_2

    .line 67
    invoke-direct {p0, v4, v2, v1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 71
    :cond_2
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    add-int/lit8 v3, v2, -0x8

    add-int/lit8 v5, v2, -0x1

    :goto_2
    if-lt v5, v3, :cond_3

    .line 75
    invoke-direct {p0, v5, v4, v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v0

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v2, -0x7

    :goto_3
    if-ge v3, v2, :cond_4

    .line 78
    invoke-direct {p0, v4, v3, v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 81
    :cond_4
    invoke-static {v1, v0}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->decodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 82
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    if-eqz v0, :cond_5

    .line 83
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    return-object v0

    .line 85
    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method readVersion()Lcom/google/zxing/qrcode/decoder/Version;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    add-int/lit8 v1, v0, -0x11

    shr-int/lit8 v1, v1, 0x2

    const/4 v2, 0x6

    if-gt v1, v2, :cond_1

    .line 105
    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v1, v0, -0xb

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    :goto_0
    if-ltz v4, :cond_3

    add-int/lit8 v6, v0, -0x9

    :goto_1
    if-lt v6, v1, :cond_2

    .line 113
    invoke-direct {p0, v6, v4, v5}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v5

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 117
    :cond_3
    invoke-static {v5}, Lcom/google/zxing/qrcode/decoder/Version;->decodeVersionInformation(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v4

    iput-object v4, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    .line 118
    iget-object v4, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v4

    if-ne v4, v0, :cond_4

    .line 119
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    return-object v0

    :cond_4
    :goto_2
    if-ltz v2, :cond_6

    add-int/lit8 v4, v0, -0x9

    :goto_3
    if-lt v4, v1, :cond_5

    .line 126
    invoke-direct {p0, v2, v4, v3}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v3

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 130
    :cond_6
    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/Version;->decodeVersionInformation(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    .line 131
    iget-object v1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v1

    if-ne v1, v0, :cond_7

    .line 132
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    return-object v0

    .line 134
    :cond_7
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method
