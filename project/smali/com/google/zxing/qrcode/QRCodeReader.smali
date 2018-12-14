.class public Lcom/google/zxing/qrcode/QRCodeReader;
.super Ljava/lang/Object;
.source "QRCodeReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field private static final NO_POINTS:[Lcom/google/zxing/ResultPoint;


# instance fields
.field private final decoder:Lcom/google/zxing/qrcode/decoder/Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 44
    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    sput-object v0, Lcom/google/zxing/qrcode/QRCodeReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Decoder;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/decoder/Decoder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    return-void
.end method

.method public static extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 101
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    .line 102
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 106
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getTopLeftOnBit()[I

    move-result-object v3

    if-nez v3, :cond_0

    .line 108
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 v4, 0x0

    .line 110
    aget v5, v3, v4

    const/4 v6, 0x1

    .line 111
    aget v7, v3, v6

    :goto_0
    if-ge v5, v2, :cond_1

    if-ge v7, v2, :cond_1

    .line 112
    invoke-virtual {p0, v5, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    if-eq v5, v2, :cond_d

    if-ne v7, v2, :cond_2

    goto :goto_6

    .line 120
    :cond_2
    aget v2, v3, v4

    sub-int v2, v5, v2

    if-nez v2, :cond_3

    .line 122
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_3
    add-int/lit8 v3, v1, -0x1

    :goto_1
    if-le v3, v5, :cond_4

    .line 127
    invoke-virtual {p0, v3, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-nez v8, :cond_4

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    if-gt v3, v5, :cond_5

    .line 131
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_5
    add-int/2addr v3, v6

    sub-int/2addr v3, v5

    .line 136
    rem-int v8, v3, v2

    if-eqz v8, :cond_6

    .line 137
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 139
    :cond_6
    div-int/2addr v3, v2

    add-int/2addr v3, v6

    if-ne v2, v6, :cond_7

    goto :goto_2

    :cond_7
    shr-int/lit8 v6, v2, 0x1

    :goto_2
    sub-int/2addr v5, v6

    sub-int/2addr v7, v6

    add-int/lit8 v6, v3, -0x1

    mul-int v6, v6, v2

    add-int v8, v5, v6

    if-ge v8, v1, :cond_c

    add-int/2addr v6, v7

    if-lt v6, v0, :cond_8

    goto :goto_5

    .line 154
    :cond_8
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_b

    mul-int v6, v1, v2

    add-int/2addr v6, v7

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v3, :cond_a

    mul-int v9, v8, v2

    add-int/2addr v9, v5

    .line 158
    invoke-virtual {p0, v9, v6}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 159
    invoke-virtual {v0, v8, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    return-object v0

    .line 150
    :cond_c
    :goto_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 117
    :cond_d
    :goto_6
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

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/QRCodeReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;

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

    .line 68
    sget-object v0, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    invoke-static {p1}, Lcom/google/zxing/qrcode/QRCodeReader;->extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Hashtable;)Lcom/google/zxing/common/DecoderResult;

    move-result-object p1

    .line 71
    sget-object p2, Lcom/google/zxing/qrcode/QRCodeReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    goto :goto_0

    .line 73
    :cond_0
    new-instance v0, Lcom/google/zxing/qrcode/detector/Detector;

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/zxing/qrcode/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v0, p2}, Lcom/google/zxing/qrcode/detector/Detector;->detect(Ljava/util/Hashtable;)Lcom/google/zxing/common/DetectorResult;

    move-result-object p1

    .line 74
    iget-object v0, p0, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    invoke-virtual {p1}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Hashtable;)Lcom/google/zxing/common/DecoderResult;

    move-result-object p2

    .line 75
    invoke-virtual {p1}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object p1

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    .line 78
    :goto_0
    new-instance v0, Lcom/google/zxing/Result;

    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v2

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v0, v1, v2, p2, v3}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 79
    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/Vector;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 80
    sget-object p2, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 82
    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 83
    sget-object p2, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method protected getDecoder()Lcom/google/zxing/qrcode/decoder/Decoder;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    return-object v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
