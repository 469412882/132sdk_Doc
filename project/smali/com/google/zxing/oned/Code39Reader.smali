.class public final Lcom/google/zxing/oned/Code39Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code39Reader.java"


# static fields
.field private static final ALPHABET:[C

.field static final ALPHABET_STRING:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

.field private static final ASTERISK_ENCODING:I

.field static final CHARACTER_ENCODINGS:[I


# instance fields
.field private final extendedMode:Z

.field private final usingCheckDigit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/Code39Reader;->ALPHABET:[C

    const/16 v0, 0x2c

    .line 45
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    .line 53
    sget-object v0, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    const/16 v1, 0x27

    aget v0, v0, v1

    sput v0, Lcom/google/zxing/oned/Code39Reader;->ASTERISK_ENCODING:I

    return-void

    :array_0
    .array-data 4
        0x34
        0x121
        0x61
        0x160
        0x31
        0x130
        0x70
        0x25
        0x124
        0x64
        0x109
        0x49
        0x148
        0x19
        0x118
        0x58
        0xd
        0x10c
        0x4c
        0x1c
        0x103
        0x43
        0x142
        0x13
        0x112
        0x52
        0x7
        0x106
        0x46
        0x16
        0x181
        0xc1
        0x1c0
        0x91
        0x190
        0xd0
        0x85
        0x184
        0xc4
        0x94
        0xa8
        0xa2
        0x8a
        0x2a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    .line 64
    iput-boolean v0, p0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 75
    iput-boolean p1, p0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 90
    iput-boolean p1, p0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    .line 91
    iput-boolean p2, p0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    return-void
.end method

.method private static decodeExtended(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 278
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 279
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_a

    .line 281
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    const/16 v6, 0x2b

    if-eq v4, v6, :cond_1

    const/16 v7, 0x24

    if-eq v4, v7, :cond_1

    const/16 v7, 0x25

    if-eq v4, v7, :cond_1

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 327
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 283
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x5a

    const/16 v9, 0x41

    if-eq v4, v6, :cond_8

    if-eq v4, v5, :cond_5

    packed-switch v4, :pswitch_data_0

    const/4 v4, 0x0

    goto :goto_2

    :pswitch_0
    if-lt v7, v9, :cond_2

    const/16 v4, 0x45

    if-gt v7, v4, :cond_2

    add-int/lit8 v7, v7, -0x26

    int-to-char v4, v7

    goto :goto_2

    :cond_2
    const/16 v4, 0x46

    if-lt v7, v4, :cond_3

    const/16 v4, 0x57

    if-gt v7, v4, :cond_3

    add-int/lit8 v7, v7, -0xb

    int-to-char v4, v7

    goto :goto_2

    .line 309
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_1
    if-lt v7, v9, :cond_4

    if-gt v7, v8, :cond_4

    add-int/lit8 v7, v7, -0x40

    int-to-char v4, v7

    goto :goto_2

    .line 299
    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_5
    if-lt v7, v9, :cond_6

    const/16 v4, 0x4f

    if-gt v7, v4, :cond_6

    add-int/lit8 v7, v7, -0x20

    int-to-char v4, v7

    goto :goto_2

    :cond_6
    if-ne v7, v8, :cond_7

    const/16 v4, 0x3a

    goto :goto_2

    .line 319
    :cond_7
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_8
    if-lt v7, v9, :cond_9

    if-gt v7, v8, :cond_9

    add-int/lit8 v7, v7, 0x20

    int-to-char v4, v7

    .line 323
    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 291
    :cond_9
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 330
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 181
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v3, 0x9

    .line 188
    new-array v3, v3, [I

    .line 191
    array-length v4, v3

    move v7, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v2, v0, :cond_6

    .line 194
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    xor-int/2addr v8, v5

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    .line 196
    aget v8, v3, v6

    add-int/2addr v8, v9

    aput v8, v3, v6

    goto :goto_5

    :cond_2
    add-int/lit8 v8, v4, -0x1

    if-ne v6, v8, :cond_5

    .line 199
    invoke-static {v3}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I

    move-result v10

    sget v11, Lcom/google/zxing/oned/Code39Reader;->ASTERISK_ENCODING:I

    const/4 v12, 0x2

    if-ne v10, v11, :cond_3

    sub-int v10, v2, v7

    .line 201
    div-int/2addr v10, v12

    sub-int v10, v7, v10

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {p0, v10, v7, v1}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 202
    new-array p0, v12, [I

    aput v7, p0, v1

    aput v2, p0, v9

    return-object p0

    .line 205
    :cond_3
    aget v10, v3, v1

    aget v11, v3, v9

    add-int/2addr v10, v11

    add-int/2addr v7, v10

    :goto_3
    if-ge v12, v4, :cond_4

    add-int/lit8 v10, v12, -0x2

    .line 207
    aget v11, v3, v12

    aput v11, v3, v10

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v10, v4, -0x2

    .line 209
    aput v1, v3, v10

    .line 210
    aput v1, v3, v8

    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 215
    :goto_4
    aput v9, v3, v6

    xor-int/lit8 v5, v5, 0x1

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 219
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static patternToChar(I)C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 269
    :goto_0
    sget-object v1, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 270
    sget-object v1, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_0

    .line 271
    sget-object p0, Lcom/google/zxing/oned/Code39Reader;->ALPHABET:[C

    aget-char p0, p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static toNarrowWidePattern([I)I
    .locals 10

    .line 225
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const v3, 0x7fffffff

    const/4 v3, 0x0

    const v4, 0x7fffffff

    :goto_1
    if-ge v3, v0, :cond_1

    .line 231
    aget v5, p0, v3

    if-ge v5, v4, :cond_0

    if-le v5, v2, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x1

    if-ge v2, v0, :cond_3

    .line 241
    aget v8, p0, v2

    .line 242
    aget v9, p0, v2

    if-le v9, v4, :cond_2

    add-int/lit8 v9, v0, -0x1

    sub-int/2addr v9, v2

    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v6, v8

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x3

    const/4 v8, -0x1

    if-ne v3, v2, :cond_6

    :goto_3
    if-ge v1, v0, :cond_5

    if-lez v3, :cond_5

    .line 253
    aget v2, p0, v1

    .line 254
    aget v9, p0, v1

    if-le v9, v4, :cond_4

    add-int/lit8 v3, v3, -0x1

    shl-int/2addr v2, v7

    if-lt v2, v6, :cond_4

    return v8

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return v5

    :cond_6
    if-gt v3, v2, :cond_7

    return v8

    :cond_7
    move v2, v4

    goto :goto_0
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 97
    invoke-static {p2}, Lcom/google/zxing/oned/Code39Reader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object p3

    const/4 v0, 0x1

    .line 98
    aget v1, p3, v0

    .line 99
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 102
    invoke-virtual {p2, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v4, 0x9

    .line 107
    new-array v4, v4, [I

    .line 111
    :goto_1
    invoke-static {p2, v1, v4}, Lcom/google/zxing/oned/Code39Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 112
    invoke-static {v4}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I

    move-result v5

    if-gez v5, :cond_1

    .line 114
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 116
    :cond_1
    invoke-static {v5}, Lcom/google/zxing/oned/Code39Reader;->patternToChar(I)C

    move-result v5

    .line 117
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    move v8, v1

    const/4 v7, 0x0

    .line 119
    :goto_2
    array-length v9, v4

    if-ge v7, v9, :cond_2

    .line 120
    aget v9, v4, v7

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v8, v2, :cond_3

    .line 123
    invoke-virtual {p2, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    if-nez v7, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    const/16 v7, 0x2a

    if-ne v5, v7, :cond_b

    .line 127
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const/4 p2, 0x0

    const/4 v5, 0x0

    .line 131
    :goto_4
    array-length v7, v4

    if-ge p2, v7, :cond_4

    .line 132
    aget v7, v4, p2

    add-int/2addr v5, v7

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_4
    sub-int p2, v8, v1

    sub-int/2addr p2, v5

    const/4 v4, 0x2

    if-eq v8, v2, :cond_5

    .line 137
    div-int/2addr p2, v4

    if-ge p2, v5, :cond_5

    .line 138
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 141
    :cond_5
    iget-boolean p2, p0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    if-eqz p2, :cond_8

    .line 142
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    sub-int/2addr p2, v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_5
    if-ge v2, p2, :cond_6

    const-string v7, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    .line 145
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 147
    :cond_6
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    sget-object v7, Lcom/google/zxing/oned/Code39Reader;->ALPHABET:[C

    rem-int/lit8 v5, v5, 0x2b

    aget-char v5, v7, v5

    if-eq v2, v5, :cond_7

    .line 148
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p1

    throw p1

    .line 150
    :cond_7
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 153
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    if-nez p2, :cond_9

    .line 155
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 159
    :cond_9
    iget-boolean p2, p0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    if-eqz p2, :cond_a

    .line 160
    invoke-static {v3}, Lcom/google/zxing/oned/Code39Reader;->decodeExtended(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    .line 162
    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 165
    :goto_6
    aget v2, p3, v0

    aget p3, p3, v6

    add-int/2addr v2, p3

    int-to-float p3, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p3, v2

    add-int/2addr v8, v1

    int-to-float v1, v8

    div-float/2addr v1, v2

    .line 167
    new-instance v2, Lcom/google/zxing/Result;

    const/4 v3, 0x0

    new-array v4, v4, [Lcom/google/zxing/ResultPoint;

    new-instance v5, Lcom/google/zxing/ResultPoint;

    int-to-float p1, p1

    invoke-direct {v5, p3, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v5, v4, v6

    new-instance p3, Lcom/google/zxing/ResultPoint;

    invoke-direct {p3, v1, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p3, v4, v0

    sget-object p1, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v2, p2, v3, v4, p1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v2

    :cond_b
    move v1, v8

    goto/16 :goto_1
.end method
