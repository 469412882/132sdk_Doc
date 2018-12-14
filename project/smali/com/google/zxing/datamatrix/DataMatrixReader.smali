.class public final Lcom/google/zxing/datamatrix/DataMatrixReader;
.super Ljava/lang/Object;
.source "DataMatrixReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field private static final NO_POINTS:[Lcom/google/zxing/ResultPoint;


# instance fields
.field private final decoder:Lcom/google/zxing/datamatrix/decoder/Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 44
    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    sput-object v0, Lcom/google/zxing/datamatrix/DataMatrixReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Decoder;

    invoke-direct {v0}, Lcom/google/zxing/datamatrix/decoder/Decoder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/DataMatrixReader;->decoder:Lcom/google/zxing/datamatrix/decoder/Decoder;

    return-void
.end method

.method private static extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 99
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    .line 100
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 104
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getTopLeftOnBit()[I

    move-result-object v3

    if-nez v3, :cond_0

    .line 106
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 v4, 0x0

    .line 108
    aget v5, v3, v4

    const/4 v6, 0x1

    .line 109
    aget v7, v3, v6

    :goto_0
    if-ge v5, v2, :cond_1

    if-ge v7, v2, :cond_1

    .line 110
    invoke-virtual {p0, v5, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-ne v5, v2, :cond_2

    .line 114
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 117
    :cond_2
    aget v2, v3, v4

    sub-int v2, v5, v2

    add-int/lit8 v3, v1, -0x1

    :goto_1
    if-ltz v3, :cond_3

    .line 121
    invoke-virtual {p0, v3, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-nez v8, :cond_3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    if-gez v3, :cond_4

    .line 125
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_4
    add-int/2addr v3, v6

    sub-int/2addr v3, v5

    .line 130
    rem-int v6, v3, v2

    if-eqz v6, :cond_5

    .line 131
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 133
    :cond_5
    div-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v7, v2

    shr-int/lit8 v6, v2, 0x1

    sub-int/2addr v5, v6

    sub-int/2addr v7, v6

    add-int/lit8 v6, v3, -0x1

    mul-int v6, v6, v2

    add-int v8, v5, v6

    if-ge v8, v1, :cond_a

    add-int/2addr v6, v7

    if-lt v6, v0, :cond_6

    goto :goto_4

    .line 149
    :cond_6
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_9

    mul-int v6, v1, v2

    add-int/2addr v6, v7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v3, :cond_8

    mul-int v9, v8, v2

    add-int/2addr v9, v5

    .line 153
    invoke-virtual {p0, v9, v6}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 154
    invoke-virtual {v0, v8, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    return-object v0

    .line 145
    :cond_a
    :goto_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/datamatrix/DataMatrixReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 64
    sget-object v0, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    invoke-static {p1}, Lcom/google/zxing/datamatrix/DataMatrixReader;->extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    .line 66
    iget-object p2, p0, Lcom/google/zxing/datamatrix/DataMatrixReader;->decoder:Lcom/google/zxing/datamatrix/decoder/Decoder;

    invoke-virtual {p2, p1}, Lcom/google/zxing/datamatrix/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object p1

    .line 67
    sget-object p2, Lcom/google/zxing/datamatrix/DataMatrixReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    goto :goto_0

    .line 69
    :cond_0
    new-instance p2, Lcom/google/zxing/datamatrix/detector/Detector;

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/zxing/datamatrix/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {p2}, Lcom/google/zxing/datamatrix/detector/Detector;->detect()Lcom/google/zxing/common/DetectorResult;

    move-result-object p1

    .line 70
    iget-object p2, p0, Lcom/google/zxing/datamatrix/DataMatrixReader;->decoder:Lcom/google/zxing/datamatrix/decoder/Decoder;

    invoke-virtual {p1}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/datamatrix/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object p2

    .line 71
    invoke-virtual {p1}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object p1

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    .line 73
    :goto_0
    new-instance v0, Lcom/google/zxing/Result;

    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v2

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v0, v1, v2, p2, v3}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 75
    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/Vector;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 76
    sget-object p2, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 78
    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 79
    sget-object p2, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
