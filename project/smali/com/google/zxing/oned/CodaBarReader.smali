.class public final Lcom/google/zxing/oned/CodaBarReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "CodaBarReader.java"


# static fields
.field private static final ALPHABET:[C

.field private static final ALPHABET_STRING:Ljava/lang/String; = "0123456789-$:/.+ABCDTN"

.field private static final CHARACTER_ENCODINGS:[I

.field private static final STARTEND_ENCODING:[C

.field private static final minCharacterLength:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789-$:/.+ABCDTN"

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    const/16 v0, 0x16

    .line 42
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    const/16 v0, 0x8

    .line 56
    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x6
        0x9
        0x60
        0x12
        0x42
        0x21
        0x24
        0x30
        0x48
        0xc
        0x18
        0x25
        0x51
        0x54
        0x15
        0x1a
        0x29
        0xb
        0xe
        0x1a
        0x29
    .end array-data

    :array_1
    .array-data 2
        0x45s
        0x2as
        0x41s
        0x42s
        0x43s
        0x44s
        0x54s
        0x4es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    return-void
.end method

.method private static arrayContains([CC)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    .line 213
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 214
    aget-char v2, p0, v1

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 166
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v3, 0x7

    .line 173
    new-array v3, v3, [I

    .line 176
    array-length v4, v3

    move v7, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v2, v0, :cond_6

    .line 179
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    xor-int/2addr v8, v5

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    .line 181
    aget v8, v3, v6

    add-int/2addr v8, v9

    aput v8, v3, v6

    goto :goto_5

    :cond_2
    add-int/lit8 v8, v4, -0x1

    if-ne v6, v8, :cond_5

    const/4 v10, 0x2

    .line 185
    :try_start_0
    sget-object v11, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    invoke-static {v3}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern([I)C

    move-result v12

    invoke-static {v11, v12}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v11

    if-eqz v11, :cond_3

    sub-int v11, v2, v7

    .line 187
    div-int/2addr v11, v10

    sub-int v11, v7, v11

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {p0, v11, v7, v1}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 188
    new-array v11, v10, [I

    aput v7, v11, v1

    aput v2, v11, v9
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    .line 194
    :catch_0
    :cond_3
    aget v11, v3, v1

    aget v12, v3, v9

    add-int/2addr v11, v12

    add-int/2addr v7, v11

    :goto_3
    if-ge v10, v4, :cond_4

    add-int/lit8 v11, v10, -0x2

    .line 196
    aget v12, v3, v10

    aput v12, v3, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v10, v4, -0x2

    .line 198
    aput v1, v3, v10

    .line 199
    aput v1, v3, v8

    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 204
    :goto_4
    aput v9, v3, v6

    xor-int/lit8 v5, v5, 0x1

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 208
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static toNarrowWidePattern([I)C
    .locals 9

    .line 226
    array-length v0, p0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 231
    aget v5, p0, v2

    if-ge v5, v3, :cond_0

    .line 232
    aget v3, p0, v2

    .line 234
    :cond_0
    aget v5, p0, v2

    if-le v5, v4, :cond_1

    .line 235
    aget v4, p0, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    .line 245
    aget v7, p0, v2

    if-le v7, v4, :cond_3

    add-int/lit8 v7, v0, -0x1

    sub-int/2addr v7, v2

    const/4 v8, 0x1

    shl-int v7, v8, v7

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    if-eq v5, v2, :cond_5

    const/4 v2, 0x3

    if-ne v5, v2, :cond_7

    :cond_5
    const/4 v2, 0x0

    .line 252
    :goto_2
    sget-object v5, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    array-length v5, v5

    if-ge v2, v5, :cond_7

    .line 253
    sget-object v5, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    aget v5, v5, v2

    if-ne v5, v6, :cond_6

    .line 254
    sget-object p0, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char p0, p0, v2

    return p0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, -0x1

    if-gt v4, v3, :cond_2

    const/16 p0, 0x21

    return p0
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 64
    invoke-static {p2}, Lcom/google/zxing/oned/CodaBarReader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 65
    aput v0, p3, v1

    .line 66
    aget v2, p3, v1

    .line 67
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_0

    .line 70
    invoke-virtual {p2, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    const/4 v5, 0x7

    .line 80
    new-array v5, v5, [I

    fill-array-data v5, :array_0

    .line 81
    invoke-static {p2, v2, v5}, Lcom/google/zxing/oned/CodaBarReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 83
    invoke-static {v5}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern([I)C

    move-result v6

    const/16 v7, 0x21

    if-ne v6, v7, :cond_1

    .line 85
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 87
    :cond_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v7, v2

    const/4 v6, 0x0

    .line 89
    :goto_2
    array-length v8, v5

    if-ge v6, v8, :cond_2

    .line 90
    aget v8, v5, v6

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v7, v3, :cond_3

    .line 94
    invoke-virtual {p2, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    if-lt v7, v3, :cond_b

    const/4 p2, 0x0

    const/4 v6, 0x0

    .line 101
    :goto_4
    array-length v8, v5

    if-ge p2, v8, :cond_4

    .line 102
    aget v8, v5, p2

    add-int/2addr v6, v8

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_4
    sub-int p2, v7, v2

    sub-int/2addr p2, v6

    const/4 v5, 0x2

    if-eq v7, v3, :cond_5

    .line 108
    div-int/2addr p2, v5

    if-ge p2, v6, :cond_5

    .line 109
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 113
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    if-ge p2, v5, :cond_6

    .line 115
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 118
    :cond_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p2

    .line 119
    sget-object v3, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    invoke-static {v3, p2}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v3

    if-nez v3, :cond_7

    .line 122
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_7
    const/4 v3, 0x1

    .line 126
    :goto_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-ge v3, v6, :cond_9

    .line 128
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    if-ne v6, p2, :cond_8

    add-int/lit8 v6, v3, 0x1

    .line 131
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-eq v6, v8, :cond_8

    .line 133
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v4, v6, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    :cond_8
    add-int/2addr v3, v1

    goto :goto_5

    .line 140
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    const/4 v3, 0x6

    if-le p2, v3, :cond_a

    .line 142
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 151
    aget p2, p3, v1

    aget p3, p3, v0

    add-int/2addr p2, p3

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    add-int/2addr v7, v2

    int-to-float v2, v7

    div-float/2addr v2, p3

    .line 153
    new-instance p3, Lcom/google/zxing/Result;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v5, [Lcom/google/zxing/ResultPoint;

    new-instance v6, Lcom/google/zxing/ResultPoint;

    int-to-float p1, p1

    invoke-direct {v6, p2, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v6, v5, v0

    new-instance p2, Lcom/google/zxing/ResultPoint;

    invoke-direct {p2, v2, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p2, v5, v1

    sget-object p1, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {p3, v3, v4, v5, p1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object p3

    .line 148
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_b
    move v2, v7

    goto/16 :goto_1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
