.class public final Lcom/google/zxing/oned/ITFReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "ITFReader.java"


# static fields
.field private static final DEFAULT_ALLOWED_LENGTHS:[I

.field private static final END_PATTERN_REVERSED:[I

.field private static final MAX_AVG_VARIANCE:I = 0x6b

.field private static final MAX_INDIVIDUAL_VARIANCE:I = 0xcc

.field private static final N:I = 0x1

.field static final PATTERNS:[[I

.field private static final START_PATTERN:[I

.field private static final W:I = 0x3


# instance fields
.field private narrowLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x5

    .line 49
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    const/4 v1, 0x4

    .line 60
    new-array v2, v1, [I

    fill-array-data v2, :array_1

    sput-object v2, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    const/4 v2, 0x3

    .line 61
    new-array v3, v2, [I

    fill-array-data v3, :array_2

    sput-object v3, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[I

    const/16 v3, 0xa

    .line 66
    new-array v3, v3, [[I

    new-array v4, v0, [I

    fill-array-data v4, :array_3

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v4, v0, [I

    fill-array-data v4, :array_4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-array v4, v0, [I

    fill-array-data v4, :array_5

    const/4 v5, 0x2

    aput-object v4, v3, v5

    new-array v4, v0, [I

    fill-array-data v4, :array_6

    aput-object v4, v3, v2

    new-array v2, v0, [I

    fill-array-data v2, :array_7

    aput-object v2, v3, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_8

    aput-object v1, v3, v0

    new-array v1, v0, [I

    fill-array-data v1, :array_9

    const/4 v2, 0x6

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_a

    const/4 v2, 0x7

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_b

    const/16 v2, 0x8

    aput-object v1, v3, v2

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    const/16 v1, 0x9

    aput-object v0, v3, v1

    sput-object v3, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    return-void

    :array_0
    .array-data 4
        0x6
        0xa
        0xc
        0xe
        0x2c
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x3
    .end array-data

    :array_b
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    return-void
.end method

.method private static decodeDigit([I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 332
    sget-object v0, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    array-length v0, v0

    const/16 v1, 0x6b

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 334
    sget-object v4, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    aget-object v4, v4, v3

    const/16 v5, 0xcc

    .line 335
    invoke-static {p0, v4, v5}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[II)I

    move-result v4

    if-ge v4, v1, :cond_0

    move v2, v3

    move v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-ltz v2, :cond_2

    return v2

    .line 344
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuffer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 135
    new-array v0, v0, [I

    const/4 v1, 0x5

    .line 136
    new-array v2, v1, [I

    .line 137
    new-array v3, v1, [I

    :cond_0
    if-ge p1, p2, :cond_2

    .line 142
    invoke-static {p0, p1, v0}, Lcom/google/zxing/oned/ITFReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    shl-int/lit8 v6, v5, 0x1

    .line 146
    aget v7, v0, v6

    aput v7, v2, v5

    add-int/lit8 v6, v6, 0x1

    .line 147
    aget v6, v0, v6

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 150
    :cond_1
    invoke-static {v2}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v5

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    .line 151
    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 152
    invoke-static {v3}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v5

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    .line 153
    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 155
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 156
    aget v5, v0, v4

    add-int/2addr p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 287
    array-length v0, p2

    .line 288
    new-array v1, v0, [I

    .line 289
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    const/4 v3, 0x0

    move v6, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge p1, v2, :cond_4

    .line 295
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    xor-int/2addr v7, v4

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    .line 297
    aget v7, v1, v5

    add-int/2addr v7, v8

    aput v7, v1, v5

    goto :goto_3

    :cond_0
    add-int/lit8 v7, v0, -0x1

    if-ne v5, v7, :cond_3

    const/16 v9, 0xcc

    .line 300
    invoke-static {v1, p2, v9}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[II)I

    move-result v9

    const/16 v10, 0x6b

    const/4 v11, 0x2

    if-ge v9, v10, :cond_1

    .line 301
    new-array p0, v11, [I

    aput v6, p0, v3

    aput p1, p0, v8

    return-object p0

    .line 303
    :cond_1
    aget v9, v1, v3

    aget v10, v1, v8

    add-int/2addr v9, v10

    add-int/2addr v6, v9

    :goto_1
    if-ge v11, v0, :cond_2

    add-int/lit8 v9, v11, -0x2

    .line 305
    aget v10, v1, v11

    aput v10, v1, v9

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v9, v0, -0x2

    .line 307
    aput v3, v1, v9

    .line 308
    aput v3, v1, v7

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 313
    :goto_2
    aput v8, v1, v5

    xor-int/lit8 v4, v4, 0x1

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 317
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 222
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 225
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne v1, v0, :cond_2

    .line 231
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_2
    return v1
.end method

.method private validateQuietZone(Lcom/google/zxing/common/BitArray;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 200
    iget v0, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-lez v0, :cond_1

    if-ltz p2, :cond_1

    .line 203
    invoke-virtual {p1, p2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 210
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_2
    return-void
.end method


# virtual methods
.method decodeEnd(Lcom/google/zxing/common/BitArray;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 250
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 252
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v0

    .line 253
    sget-object v1, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[I

    invoke-static {p1, v0, v1}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 258
    aget v2, v0, v1

    invoke-direct {p0, p1, v2}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    .line 263
    aget v2, v0, v1

    .line 264
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    const/4 v4, 0x1

    aget v5, v0, v4

    sub-int/2addr v3, v5

    aput v3, v0, v1

    .line 265
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    sub-int/2addr v1, v2

    aput v1, v0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    throw v0
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p2}, Lcom/google/zxing/oned/ITFReader;->decodeStart(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v0

    .line 83
    invoke-virtual {p0, p2}, Lcom/google/zxing/oned/ITFReader;->decodeEnd(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v1

    .line 85
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v3, 0x1

    .line 86
    aget v4, v0, v3

    const/4 v5, 0x0

    aget v6, v1, v5

    invoke-static {p2, v4, v6, v2}, Lcom/google/zxing/oned/ITFReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuffer;)V

    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 91
    sget-object v4, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    goto :goto_0

    :cond_0
    move-object p3, v2

    :goto_0
    if-nez p3, :cond_1

    .line 95
    sget-object p3, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .line 100
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x0

    .line 102
    :goto_1
    array-length v7, p3

    if-ge v6, v7, :cond_3

    .line 103
    aget v7, p3, v6

    if-ne v4, v7, :cond_2

    const/4 p3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_2
    if-nez p3, :cond_4

    .line 110
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1

    .line 113
    :cond_4
    new-instance p3, Lcom/google/zxing/Result;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/ResultPoint;

    new-instance v6, Lcom/google/zxing/ResultPoint;

    aget v0, v0, v3

    int-to-float v0, v0

    int-to-float p1, p1

    invoke-direct {v6, v0, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v6, v4, v5

    new-instance v0, Lcom/google/zxing/ResultPoint;

    aget v1, v1, v5

    int-to-float v1, v1

    invoke-direct {v0, v1, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v0, v4, v3

    sget-object p1, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {p3, p2, v2, v4, p1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object p3
.end method

.method decodeStart(Lcom/google/zxing/common/BitArray;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 170
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v0

    .line 171
    sget-object v1, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    invoke-static {p1, v0, v1}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v0

    const/4 v1, 0x1

    .line 176
    aget v1, v0, v1

    const/4 v2, 0x0

    aget v3, v0, v2

    sub-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    .line 178
    aget v1, v0, v2

    invoke-direct {p0, p1, v1}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    return-object v0
.end method
