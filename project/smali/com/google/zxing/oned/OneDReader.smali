.class public abstract Lcom/google/zxing/oned/OneDReader;
.super Ljava/lang/Object;
.source "OneDReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field protected static final INTEGER_MATH_SHIFT:I = 0x8

.field protected static final PATTERN_MATCH_RESULT_SCALE_FACTOR:I = 0x100


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p2

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v1

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v2

    .line 102
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3, v1}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    shr-int/lit8 v4, v2, 0x1

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    .line 105
    sget-object v7, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_1

    const/16 v8, 0x8

    goto :goto_1

    :cond_1
    const/4 v8, 0x5

    :goto_1
    shr-int v8, v2, v8

    .line 106
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-eqz v7, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    const/16 v7, 0xf

    :goto_2
    move-object v9, v0

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v7, :cond_b

    add-int/lit8 v10, v0, 0x1

    shr-int/lit8 v11, v10, 0x1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_4

    goto :goto_5

    :cond_4
    neg-int v11, v11

    :goto_5
    mul-int v11, v11, v8

    add-int/2addr v11, v4

    if-ltz v11, :cond_b

    if-lt v11, v2, :cond_5

    goto/16 :goto_c

    :cond_5
    move-object/from16 v0, p1

    .line 127
    :try_start_0
    invoke-virtual {v0, v11, v3}, Lcom/google/zxing/BinaryBitmap;->getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v12
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v3, 0x0

    :goto_6
    const/4 v13, 0x2

    if-ge v3, v13, :cond_a

    if-ne v3, v6, :cond_8

    .line 136
    invoke-virtual {v12}, Lcom/google/zxing/common/BitArray;->reverse()V

    if-eqz v9, :cond_8

    .line 141
    sget-object v13, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v9, v13}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 142
    new-instance v13, Ljava/util/Hashtable;

    invoke-direct {v13}, Ljava/util/Hashtable;-><init>()V

    .line 143
    invoke-virtual {v9}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v14

    .line 144
    :cond_6
    :goto_7
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 145
    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    .line 146
    sget-object v5, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v15, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 147
    invoke-virtual {v9, v15}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v13, v15, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_7
    move-object/from16 v5, p0

    move-object v9, v13

    goto :goto_8

    :cond_8
    move-object/from16 v5, p0

    .line 155
    :goto_8
    :try_start_1
    invoke-virtual {v5, v11, v12, v9}, Lcom/google/zxing/oned/OneDReader;->decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;)Lcom/google/zxing/Result;

    move-result-object v13

    if-ne v3, v6, :cond_9

    .line 159
    sget-object v14, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    new-instance v15, Ljava/lang/Integer;

    const/16 v6, 0xb4

    invoke-direct {v15, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v13, v14, v15}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 161
    invoke-virtual {v13}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 162
    new-instance v14, Lcom/google/zxing/ResultPoint;
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_2

    int-to-float v15, v1

    const/16 v16, 0x0

    :try_start_2
    aget-object v0, v6, v16

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0
    :try_end_2
    .catch Lcom/google/zxing/ReaderException; {:try_start_2 .. :try_end_2} :catch_0

    sub-float v0, v15, v0

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v0, v0, v17

    move/from16 v18, v1

    :try_start_3
    aget-object v1, v6, v16

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-direct {v14, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v14, v6, v16

    .line 163
    new-instance v0, Lcom/google/zxing/ResultPoint;
    :try_end_3
    .catch Lcom/google/zxing/ReaderException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v1, 0x1

    :try_start_4
    aget-object v14, v6, v1

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v14

    sub-float/2addr v15, v14

    sub-float v15, v15, v17

    aget-object v14, v6, v1

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    invoke-direct {v0, v15, v14}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v0, v6, v1
    :try_end_4
    .catch Lcom/google/zxing/ReaderException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_9

    :catch_0
    move/from16 v18, v1

    :catch_1
    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    :goto_9
    return-object v13

    :catch_2
    move/from16 v18, v1

    const/4 v1, 0x1

    const/16 v16, 0x0

    :catch_3
    :goto_a
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v18

    move-object/from16 v0, p1

    const/4 v6, 0x1

    goto/16 :goto_6

    :cond_a
    move-object/from16 v5, p0

    move/from16 v18, v1

    const/4 v1, 0x1

    const/16 v16, 0x0

    move-object v3, v12

    goto :goto_b

    :catch_4
    move-object/from16 v5, p0

    move/from16 v18, v1

    const/4 v1, 0x1

    const/16 v16, 0x0

    :goto_b
    move v0, v10

    move/from16 v1, v18

    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_b
    :goto_c
    move-object/from16 v5, p0

    .line 172
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method protected static patternMatchVariance([I[II)I
    .locals 8

    .line 253
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 257
    aget v5, p0, v2

    add-int/2addr v3, v5

    .line 258
    aget v5, p1, v2

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const v2, 0x7fffffff

    if-ge v3, v4, :cond_1

    return v2

    :cond_1
    shl-int/lit8 v5, v3, 0x8

    .line 268
    div-int/2addr v5, v4

    mul-int p2, p2, v5

    shr-int/lit8 p2, p2, 0x8

    const/4 v4, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 273
    aget v6, p0, v1

    shl-int/lit8 v6, v6, 0x8

    .line 274
    aget v7, p1, v1

    mul-int v7, v7, v5

    if-le v6, v7, :cond_2

    sub-int/2addr v6, v7

    goto :goto_2

    :cond_2
    sub-int v6, v7, v6

    :goto_2
    if-le v6, p2, :cond_3

    return v2

    :cond_3
    add-int/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 281
    :cond_4
    div-int/2addr v4, v3

    return v4
.end method

.method protected static recordPattern(Lcom/google/zxing/common/BitArray;I[I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 189
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 191
    aput v1, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 195
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 197
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const/4 v5, 0x0

    :goto_1
    if-ge p1, v2, :cond_5

    .line 201
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    xor-int/2addr v6, v3

    if-eqz v6, :cond_2

    .line 203
    aget v6, p2, v5

    add-int/2addr v6, v4

    aput v6, p2, v5

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    if-ne v5, v0, :cond_3

    goto :goto_3

    .line 209
    :cond_3
    aput v4, p2, v5

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    if-eq v5, v0, :cond_7

    sub-int/2addr v0, v4

    if-ne v5, v0, :cond_6

    if-eq p1, v2, :cond_7

    .line 218
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_7
    return-void
.end method

.method protected static recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 225
    array-length v0, p2

    .line 226
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-lez p1, :cond_2

    if-ltz v0, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 228
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eq v3, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-ltz v0, :cond_3

    .line 234
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_3
    add-int/2addr p1, v2

    .line 236
    invoke-static {p0, p1, p2}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/OneDReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 53
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 55
    sget-object v2, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 56
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->isRotateSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->rotateCounterClockwise()Lcom/google/zxing/BinaryBitmap;

    move-result-object p1

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;

    move-result-object p2

    .line 60
    invoke-virtual {p2}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Hashtable;

    move-result-object v0

    const/16 v2, 0x10e

    if-eqz v0, :cond_1

    .line 62
    sget-object v3, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    sget-object v3, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    rem-int/lit16 v2, v0, 0x168

    .line 67
    :cond_1
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, v0, v3}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p2}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 70
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result p1

    .line 71
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 72
    new-instance v2, Lcom/google/zxing/ResultPoint;

    int-to-float v3, p1

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object p2

    .line 76
    :cond_3
    throw v0
.end method

.method public abstract decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation
.end method

.method public reset()V
    .locals 0

    return-void
.end method
