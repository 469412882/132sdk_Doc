.class final Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final ANSIX12_ENCODE:I = 0x4

.field private static final ASCII_ENCODE:I = 0x1

.field private static final BASE256_ENCODE:I = 0x6

.field private static final C40_BASIC_SET_CHARS:[C

.field private static final C40_ENCODE:I = 0x2

.field private static final C40_SHIFT2_SET_CHARS:[C

.field private static final EDIFACT_ENCODE:I = 0x5

.field private static final PAD_ENCODE:I = 0x0

.field private static final TEXT_BASIC_SET_CHARS:[C

.field private static final TEXT_ENCODE:I = 0x3

.field private static final TEXT_SHIFT3_SET_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x28

    .line 41
    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    const/16 v1, 0x1b

    .line 47
    new-array v1, v1, [C

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    .line 56
    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    const/16 v0, 0x20

    .line 62
    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x2as
        0x2as
        0x2as
        0x20s
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data

    :array_1
    .array-data 2
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
    .end array-data

    nop

    :array_2
    .array-data 2
        0x2as
        0x2as
        0x2as
        0x20s
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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_3
    .array-data 2
        0x27s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x7bs
        0x7cs
        0x7ds
        0x7es
        0x7fs
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decode([B)Lcom/google/zxing/common/DecoderResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 79
    new-instance v0, Lcom/google/zxing/common/BitSource;

    invoke-direct {v0, p0}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    .line 80
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 81
    new-instance v2, Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 82
    new-instance v3, Ljava/util/Vector;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/Vector;-><init>(I)V

    const/4 v5, 0x1

    :cond_0
    if-ne v5, v4, :cond_1

    .line 86
    invoke-static {v0, v1, v2}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeAsciiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I

    move-result v5

    goto :goto_1

    :cond_1
    packed-switch v5, :pswitch_data_0

    .line 105
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 102
    :pswitch_0
    invoke-static {v0, v1, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeBase256Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;Ljava/util/Vector;)V

    goto :goto_0

    .line 99
    :pswitch_1
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeEdifactSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;)V

    goto :goto_0

    .line 96
    :pswitch_2
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeAnsiX12Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;)V

    goto :goto_0

    .line 93
    :pswitch_3
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeTextSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;)V

    goto :goto_0

    .line 90
    :pswitch_4
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeC40Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;)V

    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_2

    .line 109
    invoke-virtual {v0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-gtz v6, :cond_0

    .line 110
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    :cond_3
    new-instance v0, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    move-object v3, v4

    :cond_4
    invoke-direct {v0, p0, v1, v3, v4}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/Vector;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeAnsiX12Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 345
    new-array v1, v0, [I

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    return-void

    .line 351
    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    const/16 v4, 0xfe

    if-ne v2, v4, :cond_2

    return-void

    .line 356
    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    invoke-static {v2, v3, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_9

    .line 359
    aget v3, v1, v2

    if-nez v3, :cond_3

    const/16 v3, 0xd

    .line 361
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const/16 v3, 0x2a

    .line 363
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    const/16 v3, 0x3e

    .line 365
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    if-ne v3, v0, :cond_6

    const/16 v3, 0x20

    .line 367
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    const/16 v4, 0xe

    if-ge v3, v4, :cond_7

    add-int/lit8 v3, v3, 0x2c

    int-to-char v3, v3

    .line 369
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    const/16 v4, 0x28

    if-ge v3, v4, :cond_8

    add-int/lit8 v3, v3, 0x33

    int-to-char v3, v3

    .line 371
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    :cond_8
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 376
    :cond_9
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    if-gtz v2, :cond_0

    return-void
.end method

.method private static decodeAsciiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    const/16 v2, 0x8

    .line 123
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 125
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_1
    const/16 v3, 0x80

    const/4 v4, 0x1

    if-gt v2, v3, :cond_3

    if-eqz v1, :cond_2

    add-int/lit16 v2, v2, 0x80

    :cond_2
    sub-int/2addr v2, v4

    int-to-char p0, v2

    .line 129
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return v4

    :cond_3
    const/16 v3, 0x81

    if-ne v2, v3, :cond_4

    return v0

    :cond_4
    const/16 v3, 0xe5

    if-gt v2, v3, :cond_6

    add-int/lit16 v2, v2, -0x82

    const/16 v3, 0xa

    if-ge v2, v3, :cond_5

    const/16 v3, 0x30

    .line 136
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 138
    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_6
    const/16 v3, 0xe6

    if-ne v2, v3, :cond_7

    const/4 p0, 0x2

    return p0

    :cond_7
    const/16 v3, 0xe7

    if-ne v2, v3, :cond_8

    const/4 p0, 0x6

    return p0

    :cond_8
    const/16 v3, 0xe8

    if-ne v2, v3, :cond_9

    goto :goto_0

    :cond_9
    const/16 v3, 0xe9

    if-ne v2, v3, :cond_a

    goto :goto_0

    :cond_a
    const/16 v3, 0xea

    if-ne v2, v3, :cond_b

    goto :goto_0

    :cond_b
    const/16 v3, 0xeb

    if-ne v2, v3, :cond_c

    const/4 v1, 0x1

    goto :goto_0

    :cond_c
    const/16 v3, 0xec

    if-ne v2, v3, :cond_d

    const-string v2, "[)>\u001e05\u001d"

    .line 155
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\u001e\u0004"

    .line 156
    invoke-virtual {p2, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_d
    const/16 v3, 0xed

    if-ne v2, v3, :cond_e

    const-string v2, "[)>\u001e06\u001d"

    .line 158
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\u001e\u0004"

    .line 159
    invoke-virtual {p2, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_e
    const/16 v3, 0xee

    if-ne v2, v3, :cond_f

    const/4 p0, 0x4

    return p0

    :cond_f
    const/16 v3, 0xef

    if-ne v2, v3, :cond_10

    const/4 p0, 0x3

    return p0

    :cond_10
    const/16 v3, 0xf0

    if-ne v2, v3, :cond_11

    const/4 p0, 0x5

    return p0

    :cond_11
    const/16 v3, 0xf1

    if-ne v2, v3, :cond_12

    goto :goto_0

    :cond_12
    const/16 v3, 0xf2

    if-lt v2, v3, :cond_13

    .line 171
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 173
    :cond_13
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    if-gtz v2, :cond_0

    return v4
.end method

.method private static decodeBase256Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;Ljava/util/Vector;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 426
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    div-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/16 v2, 0xfa

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit16 v1, v1, -0xf9

    mul-int/lit16 v1, v1, 0xfa

    .line 433
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 435
    :goto_0
    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    .line 439
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    if-ge v4, v0, :cond_2

    .line 440
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 442
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    invoke-static {v4, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)B

    move-result v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 444
    :cond_3
    invoke-virtual {p2, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 446
    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string p2, "ISO8859_1"

    invoke-direct {p0, v2, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 448
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Platform does not support required encoding: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static decodeC40Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 186
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 189
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    return-void

    .line 192
    :cond_0
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    const/16 v6, 0xfe

    if-ne v4, v6, :cond_1

    return-void

    .line 197
    :cond_1
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v5

    invoke-static {v4, v5, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    move v5, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v0, :cond_a

    .line 201
    aget v6, v1, v3

    packed-switch v4, :pswitch_data_0

    .line 251
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_0
    if-eqz v5, :cond_2

    add-int/lit16 v6, v6, 0xe0

    int-to-char v4, v6

    .line 243
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    const/4 v5, 0x0

    goto :goto_4

    :cond_2
    add-int/lit8 v6, v6, 0x60

    int-to-char v4, v6

    .line 246
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :pswitch_1
    const/16 v4, 0x1b

    if-ge v6, v4, :cond_4

    if-eqz v5, :cond_3

    .line 227
    sget-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    aget-char v4, v4, v6

    add-int/lit16 v4, v4, 0x80

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    goto :goto_3

    .line 230
    :cond_3
    sget-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    aget-char v4, v4, v6

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v5

    goto :goto_3

    :cond_4
    if-ne v6, v4, :cond_5

    .line 233
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_5
    const/16 v4, 0x1e

    if-ne v6, v4, :cond_6

    const/4 v4, 0x1

    :goto_3
    move v5, v4

    goto :goto_4

    .line 237
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_2
    if-eqz v5, :cond_7

    add-int/lit16 v6, v6, 0x80

    int-to-char v4, v6

    .line 217
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 220
    :cond_7
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_4
    const/4 v4, 0x0

    goto :goto_5

    :pswitch_3
    if-ge v6, v0, :cond_8

    add-int/lit8 v6, v6, 0x1

    move v4, v6

    goto :goto_5

    :cond_8
    if-eqz v5, :cond_9

    .line 208
    sget-object v5, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    aget-char v5, v5, v6

    add-int/lit16 v5, v5, 0x80

    int-to-char v5, v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    goto :goto_5

    .line 211
    :cond_9
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    aget-char v6, v7, v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 254
    :cond_a
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-gtz v3, :cond_b

    return-void

    :cond_b
    move v3, v5

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeEdifactSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 396
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    const/16 v3, 0x10

    if-gt v2, v3, :cond_0

    return-void

    :cond_0
    move v2, v1

    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x4

    if-ge v1, v3, :cond_4

    const/4 v3, 0x6

    .line 401
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    const/16 v4, 0x2b67

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_3

    and-int/lit8 v4, v3, 0x20

    if-nez v4, :cond_2

    or-int/lit8 v3, v3, 0x40

    .line 414
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-nez v2, :cond_6

    .line 417
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-gtz v1, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method private static decodeTextSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuffer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 266
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 269
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    return-void

    .line 272
    :cond_0
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    const/16 v6, 0xfe

    if-ne v4, v6, :cond_1

    return-void

    .line 277
    :cond_1
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v5

    invoke-static {v4, v5, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    move v5, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v0, :cond_a

    .line 281
    aget v6, v1, v3

    packed-switch v4, :pswitch_data_0

    .line 332
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_0
    if-eqz v5, :cond_2

    .line 324
    sget-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    aget-char v4, v4, v6

    add-int/lit16 v4, v4, 0x80

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    const/4 v5, 0x0

    goto :goto_4

    .line 327
    :cond_2
    sget-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    aget-char v4, v4, v6

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :pswitch_1
    const/16 v4, 0x1b

    if-ge v6, v4, :cond_4

    if-eqz v5, :cond_3

    .line 308
    sget-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    aget-char v4, v4, v6

    add-int/lit16 v4, v4, 0x80

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    goto :goto_3

    .line 311
    :cond_3
    sget-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    aget-char v4, v4, v6

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v5

    goto :goto_3

    :cond_4
    if-ne v6, v4, :cond_5

    .line 314
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_5
    const/16 v4, 0x1e

    if-ne v6, v4, :cond_6

    const/4 v4, 0x1

    :goto_3
    move v5, v4

    goto :goto_4

    .line 318
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_2
    if-eqz v5, :cond_7

    add-int/lit16 v6, v6, 0x80

    int-to-char v4, v6

    .line 297
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 300
    :cond_7
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_4
    const/4 v4, 0x0

    goto :goto_5

    :pswitch_3
    if-ge v6, v0, :cond_8

    add-int/lit8 v6, v6, 0x1

    move v4, v6

    goto :goto_5

    :cond_8
    if-eqz v5, :cond_9

    .line 288
    sget-object v5, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    aget-char v5, v5, v6

    add-int/lit16 v5, v5, 0x80

    int-to-char v5, v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    goto :goto_5

    .line 291
    :cond_9
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    aget-char v6, v7, v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 335
    :cond_a
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-gtz v3, :cond_b

    return-void

    :cond_b
    move v3, v5

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseTwoBytes(II[I)V
    .locals 2

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr p0, p1

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    .line 381
    div-int/lit16 v0, p0, 0x640

    const/4 v1, 0x0

    .line 382
    aput v0, p2, v1

    mul-int/lit16 v0, v0, 0x640

    sub-int/2addr p0, v0

    .line 384
    div-int/lit8 v0, p0, 0x28

    .line 385
    aput v0, p2, p1

    mul-int/lit8 v0, v0, 0x28

    sub-int/2addr p0, v0

    const/4 p1, 0x2

    .line 386
    aput p0, p2, p1

    return-void
.end method

.method private static unrandomize255State(II)B
    .locals 0

    mul-int/lit16 p1, p1, 0x95

    .line 457
    rem-int/lit16 p1, p1, 0xff

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p0, p1

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit16 p0, p0, 0x100

    :goto_0
    int-to-byte p0, p0

    return p0
.end method
