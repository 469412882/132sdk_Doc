.class public Lcom/google/zxing/common/GlobalHistogramBinarizer;
.super Lcom/google/zxing/Binarizer;
.source "GlobalHistogramBinarizer.java"


# static fields
.field private static final LUMINANCE_BITS:I = 0x5

.field private static final LUMINANCE_BUCKETS:I = 0x20

.field private static final LUMINANCE_SHIFT:I = 0x3


# instance fields
.field private buckets:[I

.field private luminances:[B


# direct methods
.method public constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/google/zxing/Binarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    .line 41
    iput-object p1, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I

    return-void
.end method

.method private static estimateBlackPoint([I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 139
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 144
    aget v6, p0, v2

    if-le v6, v3, :cond_0

    .line 146
    aget v3, p0, v2

    move v5, v2

    .line 148
    :cond_0
    aget v6, p0, v2

    if-le v6, v4, :cond_1

    .line 149
    aget v4, p0, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    sub-int v6, v1, v5

    .line 159
    aget v7, p0, v1

    mul-int v7, v7, v6

    mul-int v7, v7, v6

    if-le v7, v2, :cond_3

    move v3, v1

    move v2, v7

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-le v5, v3, :cond_5

    move v8, v5

    move v5, v3

    move v3, v8

    :cond_5
    sub-int v1, v3, v5

    shr-int/lit8 v0, v0, 0x4

    if-gt v1, v0, :cond_6

    .line 178
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_6
    add-int/lit8 v0, v3, -0x1

    const/4 v1, -0x1

    move v2, v0

    :goto_2
    if-le v0, v5, :cond_8

    sub-int v6, v0, v5

    mul-int v6, v6, v6

    sub-int v7, v3, v0

    mul-int v6, v6, v7

    .line 186
    aget v7, p0, v0

    sub-int v7, v4, v7

    mul-int v6, v6, v7

    if-le v6, v1, :cond_7

    move v2, v0

    move v1, v6

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_8
    shl-int/lit8 p0, v2, 0x3

    return p0
.end method

.method private initArrays(I)V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 126
    :cond_0
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I

    const/16 v0, 0x20

    if-nez p1, :cond_2

    .line 129
    new-array p1, v0, [I

    iput-object p1, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 132
    iget-object v2, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I

    aput p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
    .locals 1

    .line 121
    new-instance v0, Lcom/google/zxing/common/GlobalHistogramBinarizer;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method

.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v1

    .line 85
    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v2

    .line 86
    new-instance v3, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v3, v1, v2}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 90
    invoke-direct {p0, v1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->initArrays(I)V

    .line 91
    iget-object v4, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I

    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_0
    const/4 v7, 0x5

    if-ge v6, v7, :cond_1

    mul-int v8, v2, v6

    .line 93
    div-int/2addr v8, v7

    .line 94
    iget-object v9, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    invoke-virtual {v0, v8, v9}, Lcom/google/zxing/LuminanceSource;->getRow(I[B)[B

    move-result-object v8

    shl-int/lit8 v9, v1, 0x2

    .line 95
    div-int/2addr v9, v7

    .line 96
    div-int/lit8 v7, v1, 0x5

    :goto_1
    if-ge v7, v9, :cond_0

    .line 97
    aget-byte v10, v8, v7

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v10, v10, 0x3

    .line 98
    aget v11, v4, v10

    add-int/2addr v11, v5

    aput v11, v4, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 101
    :cond_1
    invoke-static {v4}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->estimateBlackPoint([I)I

    move-result v4

    .line 106
    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_4

    mul-int v7, v6, v1

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v1, :cond_3

    add-int v9, v7, v8

    .line 110
    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    if-ge v9, v4, :cond_2

    .line 112
    invoke-virtual {v3, v8, v6}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    return-object v3
.end method

.method public getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v1

    if-eqz p2, :cond_1

    .line 51
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    if-ge v2, v1, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->clear()V

    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    new-instance p2, Lcom/google/zxing/common/BitArray;

    invoke-direct {p2, v1}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 57
    :goto_1
    invoke-direct {p0, v1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->initArrays(I)V

    .line 58
    iget-object v2, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    invoke-virtual {v0, p1, v2}, Lcom/google/zxing/LuminanceSource;->getRow(I[B)[B

    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    .line 61
    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v5, v5, 0x3

    .line 62
    aget v6, v0, v5

    add-int/2addr v6, v4

    aput v6, v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 64
    :cond_2
    invoke-static {v0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->estimateBlackPoint([I)I

    move-result v0

    .line 66
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    .line 67
    aget-byte v3, p1, v4

    and-int/lit16 v3, v3, 0xff

    move v5, v2

    const/4 v2, 0x1

    :goto_3
    add-int/lit8 v6, v1, -0x1

    if-ge v2, v6, :cond_4

    add-int/lit8 v6, v2, 0x1

    .line 69
    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v8, v3, 0x2

    sub-int/2addr v8, v5

    sub-int/2addr v8, v7

    shr-int/lit8 v5, v8, 0x1

    if-ge v5, v0, :cond_3

    .line 73
    invoke-virtual {p2, v2}, Lcom/google/zxing/common/BitArray;->set(I)V

    :cond_3
    move v5, v3

    move v2, v6

    move v3, v7

    goto :goto_3

    :cond_4
    return-object p2
.end method
