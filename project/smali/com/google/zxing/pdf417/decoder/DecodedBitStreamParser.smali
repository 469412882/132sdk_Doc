.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final AL:I = 0x1c

.field private static final ALPHA:I = 0x0

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final EXP900:[Ljava/lang/String;

.field private static final LL:I = 0x1b

.field private static final LOWER:I = 0x1

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED:I = 0x2

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT:I = 0x3

.field private static final PUNCT_CHARS:[C

.field private static final PUNCT_SHIFT:I = 0x4

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x1d

    .line 53
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    const/16 v0, 0x19

    .line 57
    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    const/16 v0, 0x10

    .line 63
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "000000000000000000000000000000000000000000001"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "000000000000000000000000000000000000000000900"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "000000000000000000000000000000000000000810000"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "000000000000000000000000000000000000729000000"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "000000000000000000000000000000000656100000000"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "000000000000000000000000000000590490000000000"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "000000000000000000000000000531441000000000000"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "000000000000000000000000478296900000000000000"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "000000000000000000000430467210000000000000000"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "000000000000000000387420489000000000000000000"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "000000000000000348678440100000000000000000000"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "000000000000313810596090000000000000000000000"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "000000000282429536481000000000000000000000000"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "000000254186582832900000000000000000000000000"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "000228767924549610000000000000000000000000000"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "205891132094649000000000000000000000000000000"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 2
        0x3bs
        0x3cs
        0x3es
        0x40s
        0x5bs
        0x5cs
        0x7ds
        0x5fs
        0x60s
        0x7es
        0x21s
        0xds
        0x9s
        0x2cs
        0x3as
        0xas
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x22s
        0x7cs
        0x2as
        0x28s
        0x29s
        0x3fs
        0x7bs
        0x7ds
        0x27s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x26s
        0xds
        0x9s
        0x2cs
        0x3as
        0x23s
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x2bs
        0x25s
        0x2as
        0x3ds
        0x5es
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 11

    .line 582
    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 583
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 584
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 585
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x30

    if-ge v4, v5, :cond_0

    .line 587
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 590
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    const/4 v5, 0x0

    :goto_1
    const/4 v7, -0x1

    if-le v4, v7, :cond_1

    .line 592
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 593
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v4, 0x1

    .line 594
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v8, v4, 0x2

    .line 595
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 597
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 598
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 599
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 600
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 602
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 603
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v5

    .line 605
    rem-int/lit16 v5, v9, 0x3e8

    .line 606
    div-int/lit16 v9, v9, 0x3e8

    .line 608
    rem-int/lit8 v10, v5, 0xa

    add-int/2addr v10, v6

    int-to-char v10, v10

    invoke-virtual {v1, v8, v10}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 609
    div-int/lit8 v8, v5, 0xa

    rem-int/lit8 v8, v8, 0xa

    add-int/2addr v8, v6

    int-to-char v8, v8

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 610
    div-int/lit8 v5, v5, 0x64

    add-int/2addr v5, v6

    int-to-char v5, v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v4, v4, -0x3

    move v5, v9

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private static byteCompaction(I[IILjava/lang/StringBuffer;)I
    .locals 26

    move/from16 v0, p0

    move-object/from16 v2, p3

    const/16 v4, 0x39a

    const/16 v5, 0x39b

    const/16 v6, 0x3a0

    const/16 v7, 0x386

    const-wide/16 v8, 0x384

    const/16 v12, 0x39c

    const/16 v13, 0x385

    const/16 v14, 0x384

    const/4 v15, 0x6

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-ne v0, v13, :cond_6

    .line 341
    new-array v0, v15, [C

    .line 342
    new-array v10, v15, [I

    move/from16 v11, p2

    const/4 v3, 0x0

    const/16 v18, 0x0

    const-wide/16 v20, 0x0

    .line 344
    :goto_0
    aget v15, p1, v17

    if-ge v11, v15, :cond_5

    if-nez v18, :cond_5

    add-int/lit8 v15, v11, 0x1

    .line 345
    aget v11, p1, v11

    if-ge v11, v14, :cond_0

    .line 347
    aput v11, v10, v3

    add-int/lit8 v3, v3, 0x1

    mul-long v20, v20, v8

    int-to-long v8, v11

    add-long v23, v20, v8

    move v11, v15

    move-wide/from16 v20, v23

    goto :goto_2

    :cond_0
    if-eq v11, v14, :cond_2

    if-eq v11, v13, :cond_2

    if-eq v11, v7, :cond_2

    if-eq v11, v12, :cond_2

    if-eq v11, v6, :cond_2

    if-eq v11, v5, :cond_2

    if-ne v11, v4, :cond_1

    goto :goto_1

    :cond_1
    move v11, v15

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v15, v15, -0x1

    move v11, v15

    const/16 v18, 0x1

    .line 363
    :goto_2
    rem-int/lit8 v8, v3, 0x5

    if-nez v8, :cond_4

    if-lez v3, :cond_4

    const/4 v3, 0x0

    :goto_3
    const/4 v8, 0x6

    if-ge v3, v8, :cond_3

    rsub-int/lit8 v8, v3, 0x5

    const-wide/16 v23, 0x100

    .line 367
    rem-long v4, v20, v23

    long-to-int v4, v4

    int-to-char v4, v4

    aput-char v4, v0, v8

    const/16 v4, 0x8

    shr-long v20, v20, v4

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x39a

    const/16 v5, 0x39b

    goto :goto_3

    .line 370
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    :cond_4
    const/16 v4, 0x39a

    const/16 v5, 0x39b

    const-wide/16 v8, 0x384

    goto :goto_0

    .line 377
    :cond_5
    div-int/lit8 v0, v3, 0x5

    mul-int/lit8 v0, v0, 0x5

    :goto_4
    if-ge v0, v3, :cond_f

    .line 378
    aget v1, v10, v0

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    if-ne v0, v12, :cond_e

    move/from16 v0, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v18, 0x0

    .line 387
    :goto_5
    aget v5, p1, v17

    if-ge v0, v5, :cond_d

    if-nez v3, :cond_d

    add-int/lit8 v5, v0, 0x1

    .line 388
    aget v0, p1, v0

    if-ge v0, v14, :cond_7

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v8, 0x384

    mul-long v18, v18, v8

    int-to-long v10, v0

    add-long v20, v18, v10

    move v0, v5

    move-wide/from16 v18, v20

    const/16 v10, 0x39b

    const/16 v11, 0x39a

    goto :goto_7

    :cond_7
    const-wide/16 v8, 0x384

    if-eq v0, v14, :cond_9

    if-eq v0, v13, :cond_9

    if-eq v0, v7, :cond_9

    if-eq v0, v12, :cond_9

    if-eq v0, v6, :cond_9

    const/16 v10, 0x39b

    if-eq v0, v10, :cond_a

    const/16 v11, 0x39a

    if-ne v0, v11, :cond_8

    goto :goto_6

    :cond_8
    move v0, v5

    goto :goto_7

    :cond_9
    const/16 v10, 0x39b

    :cond_a
    const/16 v11, 0x39a

    :goto_6
    add-int/lit8 v5, v5, -0x1

    move v0, v5

    const/4 v3, 0x1

    .line 405
    :goto_7
    rem-int/lit8 v5, v4, 0x5

    if-nez v5, :cond_c

    if-lez v4, :cond_c

    const/4 v5, 0x6

    .line 408
    new-array v15, v5, [C

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v5, :cond_b

    rsub-int/lit8 v20, v6, 0x5

    const-wide/16 v21, 0xff

    and-long v7, v18, v21

    long-to-int v7, v7

    int-to-char v7, v7

    .line 410
    aput-char v7, v15, v20

    const/16 v7, 0x8

    shr-long v18, v18, v7

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x386

    const-wide/16 v8, 0x384

    goto :goto_8

    :cond_b
    const/16 v7, 0x8

    .line 413
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_9

    :cond_c
    const/4 v5, 0x6

    const/16 v7, 0x8

    :goto_9
    const/16 v6, 0x3a0

    const/16 v7, 0x386

    goto :goto_5

    :cond_d
    move v11, v0

    goto :goto_a

    :cond_e
    move/from16 v11, p2

    :cond_f
    :goto_a
    return v11
.end method

.method static decode([I)Lcom/google/zxing/common/DecoderResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x1

    .line 88
    aget v1, p0, v1

    const/4 v2, 0x2

    :goto_0
    const/4 v3, 0x0

    .line 89
    aget v3, p0, v3

    if-ge v2, v3, :cond_3

    const/16 v3, 0x391

    if-eq v1, v3, :cond_1

    const/16 v3, 0x39c

    if-eq v1, v3, :cond_0

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v2, v2, -0x1

    .line 116
    invoke-static {p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuffer;)I

    move-result v1

    goto :goto_1

    .line 100
    :pswitch_0
    invoke-static {p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuffer;)I

    move-result v1

    goto :goto_1

    .line 96
    :pswitch_1
    invoke-static {v1, p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuffer;)I

    move-result v1

    goto :goto_1

    .line 92
    :pswitch_2
    invoke-static {p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuffer;)I

    move-result v1

    goto :goto_1

    .line 108
    :cond_0
    invoke-static {v1, p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuffer;)I

    move-result v1

    goto :goto_1

    .line 104
    :cond_1
    invoke-static {v1, p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuffer;)I

    move-result v1

    .line 120
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 121
    aget v1, p0, v1

    goto :goto_0

    .line 123
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 126
    :cond_3
    new-instance p0, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1, v1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/Vector;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 518
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/lang/String;

    sub-int v5, p1, v2

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    aget v5, p0, v2

    invoke-static {v4, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->multiply(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v4

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_1

    .line 523
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 529
    :cond_1
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-ge v0, p0, :cond_3

    .line 530
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p0

    const/16 p1, 0x31

    if-ne p0, p1, :cond_2

    .line 532
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-nez v1, :cond_4

    .line 538
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuffer;)V
    .locals 15

    move-object/from16 v0, p3

    move/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v2, :cond_16

    .line 222
    aget v6, p0, v3

    const/4 v7, 0x2

    const/16 v8, 0x1b

    const/4 v9, 0x4

    const/16 v10, 0x20

    const/16 v11, 0x1c

    const/16 v12, 0x391

    const/16 v13, 0x1a

    const/16 v1, 0x1d

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    if-ge v6, v1, :cond_0

    .line 308
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v1, v1, v6

    move v4, v5

    goto/16 :goto_6

    :cond_0
    if-ne v6, v1, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    goto/16 :goto_5

    :pswitch_1
    if-ge v6, v1, :cond_2

    .line 294
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v1, v1, v6

    goto/16 :goto_6

    :cond_2
    if-ne v6, v1, :cond_3

    :goto_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_3
    if-ne v6, v12, :cond_14

    .line 299
    aget v1, p1, v3

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :pswitch_2
    const/16 v7, 0x19

    if-ge v6, v7, :cond_4

    .line 271
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v1, v1, v6

    goto/16 :goto_6

    :cond_4
    if-ne v6, v7, :cond_5

    const/4 v1, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x3

    goto/16 :goto_6

    :cond_5
    if-ne v6, v13, :cond_6

    goto :goto_2

    :cond_6
    if-ne v6, v8, :cond_7

    goto :goto_5

    :cond_7
    if-ne v6, v11, :cond_8

    goto :goto_1

    :cond_8
    if-ne v6, v1, :cond_9

    goto :goto_4

    :cond_9
    if-ne v6, v12, :cond_14

    .line 286
    aget v1, p1, v3

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :pswitch_3
    if-ge v6, v13, :cond_a

    add-int/lit8 v6, v6, 0x61

    int-to-char v1, v6

    goto :goto_6

    :cond_a
    if-ne v6, v13, :cond_b

    goto :goto_2

    :cond_b
    if-ne v6, v11, :cond_c

    goto :goto_1

    :cond_c
    if-ne v6, v11, :cond_d

    goto :goto_3

    :cond_d
    if-ne v6, v1, :cond_e

    goto :goto_4

    :cond_e
    if-ne v6, v12, :cond_14

    .line 263
    aget v1, p1, v3

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :pswitch_4
    if-ge v6, v13, :cond_f

    add-int/lit8 v6, v6, 0x41

    int-to-char v1, v6

    goto :goto_6

    :cond_f
    if-ne v6, v13, :cond_10

    :goto_2
    const/16 v1, 0x20

    goto :goto_6

    :cond_10
    if-ne v6, v8, :cond_11

    const/4 v1, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x1

    goto :goto_6

    :cond_11
    if-ne v6, v11, :cond_12

    :goto_3
    const/4 v1, 0x0

    const/4 v4, 0x2

    goto :goto_6

    :cond_12
    if-ne v6, v1, :cond_13

    :goto_4
    move v5, v4

    const/4 v1, 0x0

    const/4 v4, 0x4

    goto :goto_6

    :cond_13
    if-ne v6, v12, :cond_14

    .line 242
    aget v1, p1, v3

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_14
    :goto_5
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_15

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_16
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static multiply(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .locals 7

    .line 551
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 552
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x30

    if-ge v2, v3, :cond_0

    .line 554
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 556
    :cond_0
    div-int/lit8 v2, p1, 0x64

    .line 557
    div-int/lit8 v3, p1, 0xa

    rem-int/lit8 v3, v3, 0xa

    .line 558
    rem-int/lit8 p1, p1, 0xa

    move-object v5, v0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 561
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_2
    if-ge p1, v3, :cond_2

    .line 565
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v1, v2, :cond_3

    .line 569
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-object v5
.end method

.method private static numericCompaction([IILjava/lang/StringBuffer;)I
    .locals 7

    const/16 v0, 0xf

    .line 432
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 434
    :goto_0
    aget v4, p0, v1

    if-ge p1, v4, :cond_6

    if-nez v2, :cond_6

    add-int/lit8 v4, p1, 0x1

    .line 435
    aget p1, p0, p1

    .line 436
    aget v5, p0, v1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    const/16 v5, 0x384

    if-ge p1, v5, :cond_1

    .line 440
    aput p1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-eq p1, v5, :cond_2

    const/16 v5, 0x385

    if-eq p1, v5, :cond_2

    const/16 v5, 0x39c

    if-eq p1, v5, :cond_2

    const/16 v5, 0x3a0

    if-eq p1, v5, :cond_2

    const/16 v5, 0x39b

    if-eq p1, v5, :cond_2

    const/16 v5, 0x39a

    if-ne p1, v5, :cond_3

    :cond_2
    add-int/lit8 v4, v4, -0x1

    const/4 v2, 0x1

    .line 453
    :cond_3
    :goto_1
    rem-int/lit8 v5, v3, 0xf

    if-eqz v5, :cond_4

    const/16 v5, 0x386

    if-eq p1, v5, :cond_4

    if-eqz v2, :cond_5

    .line 460
    :cond_4
    invoke-static {v0, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object p1

    .line 461
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    :cond_5
    move p1, v4

    goto :goto_0

    :cond_6
    return p1
.end method

.method private static textCompaction([IILjava/lang/StringBuffer;)I
    .locals 8

    const/4 v0, 0x0

    .line 141
    aget v1, p0, v0

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    new-array v1, v1, [I

    .line 143
    aget v3, p0, v0

    shl-int/2addr v3, v2

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 147
    :goto_0
    aget v6, p0, v0

    if-ge p1, v6, :cond_3

    if-nez v4, :cond_3

    add-int/lit8 v6, p1, 0x1

    .line 148
    aget p1, p0, p1

    const/16 v7, 0x384

    if-ge p1, v7, :cond_0

    .line 150
    div-int/lit8 v7, p1, 0x1e

    aput v7, v1, v5

    add-int/lit8 v7, v5, 0x1

    .line 151
    rem-int/lit8 p1, p1, 0x1e

    aput p1, v1, v7

    add-int/lit8 v5, v5, 0x2

    :goto_1
    move p1, v6

    goto :goto_0

    :cond_0
    const/16 v7, 0x391

    if-eq p1, v7, :cond_2

    const/16 v7, 0x39c

    if-eq p1, v7, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :pswitch_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :pswitch_2
    add-int/lit8 v6, v6, -0x1

    :goto_2
    move p1, v6

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 177
    :cond_2
    aput v7, v1, v5

    .line 178
    aput p1, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 190
    :cond_3
    invoke-static {v1, v3, v5, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuffer;)V

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
